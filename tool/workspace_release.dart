#!/usr/bin/env dart
// Copyright (c) 2025, Klas Kalaß <habbatical@gmail.com>
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

/// Workspace-wide release management for RDF Vocabularies multipackage project
///
/// This script coordinates releases across all packages to avoid conflicts:
/// 1. Validates all packages have the same version
/// 2. Ensures working directory is clean
/// 3. Runs tests for all packages
/// 4. Updates CHANGELOGs and generates updated documentation
/// 5. Creates a single workspace-wide git tag
/// 6. Triggers publishing workflow for all packages
///
/// Usage: dart run tool/release.dart [options]
library;

import 'dart:io';
import 'package:path/path.dart' as path;
import 'package:yaml/yaml.dart';

/// Package configuration - in dependency order
final List<String> packages = [
  'packages/rdf_vocabularies_core',
  'packages/rdf_vocabularies_schema',
  'packages/rdf_vocabularies_schema_http',
  'packages/rdf_vocabularies', // Meta-package depends on others
];

void main(List<String> args) async {
  if (args.contains('--help')) {
    _printUsage();
    exit(0);
  }

  final dryRun = args.contains('--dry-run');
  final skipPublish = args.contains('--no-publish') || dryRun;
  final nonInteractive = args.contains('--non-interactive');

  print('🚀 RDF Vocabularies Workspace Release');
  print('=====================================');
  if (dryRun) {
    print('🔍 DRY RUN: No changes will be made');
  }
  print('');

  try {
    // Step 1: Validate workspace state
    await _validateWorkspace();

    // Step 2: Get version from packages and normalize to release version
    final currentVersion = await _getAndValidateVersion();
    final releaseVersion = _normalizeToReleaseVersion(currentVersion);

    if (currentVersion != releaseVersion) {
      print('📦 Normalizing version: $currentVersion → $releaseVersion');
      if (!dryRun) {
        await _setAllPackageVersions(releaseVersion);
        await _commitVersionChange(releaseVersion, 'Set release version');
      }
    } else {
      print('📦 Release version: $releaseVersion');
    }

    // Step 3: Validate working directory is clean
    if (!nonInteractive) {
      await _validateCleanWorkingDirectory();
    }

    // Step 4: Run all tests
    print('🧪 Running tests for all packages...');
    await _runAllTests();

    // Step 5: Validate CHANGELOGs
    await _validateChangelogs(releaseVersion);

    // Step 6: Generate documentation with updated versions
    print('📚 Generating documentation with updated versions...');
    if (!dryRun) {
      await _generateDocumentation();
    }

    // Step 7: Update meta-package dependencies to release version
    print('🔄 Updating meta-package dependencies to version $releaseVersion...');
    if (!dryRun) {
      await _updateDependencies(releaseVersion, false);
    }

    // Step 8: Create git tag and commit
    if (!dryRun) {
      await _createReleaseCommit(releaseVersion);
    }

    // Step 9: Publish packages 
    if (!skipPublish && !dryRun) {
      await _publishToPublicRegistry(releaseVersion);
    } else if (dryRun) {
      print('🚀 Would publish packages to pub.dev (skipped in dry run)');
    } else {
      print('🚀 Publishing skipped (--no-publish flag)');
    }

    // Step 10: Set next development version (dependencies stay at current version)
    if (!dryRun) {
      final nextDevVersion = _incrementToNextDevVersion(releaseVersion);
      print('🔄 Setting next development version: $nextDevVersion');
      await _setAllPackageVersions(nextDevVersion);
      await _commitVersionChange(
        nextDevVersion,
        'Prepare for next development iteration',
      );
    }

    print('');
    print('✅ Release $releaseVersion completed successfully!');
    if (dryRun) {
      print('   (This was a dry run - no actual changes made)');
    } else {
      final nextDevVersion = _incrementToNextDevVersion(releaseVersion);
      print('   📦 Next development version: $nextDevVersion');
    }
  } catch (e) {
    print('❌ Release failed: $e');
    exit(1);
  }
}

Future<void> _validateWorkspace() async {
  print('🔍 Validating workspace structure...');

  for (final packagePath in packages) {
    final pubspecFile = File(path.join(packagePath, 'pubspec.yaml'));
    if (!pubspecFile.existsSync()) {
      throw Exception('Missing pubspec.yaml in $packagePath');
    }
  }

  print('   ✓ All packages found');
}

Future<String> _getAndValidateVersion() async {
  print('🔍 Validating package versions...');

  String? commonVersion;

  for (final packagePath in packages) {
    final pubspecFile = File(path.join(packagePath, 'pubspec.yaml'));
    final content = pubspecFile.readAsStringSync();
    final pubspec = loadYaml(content) as Map;
    final version = pubspec['version'] as String?;

    if (version == null) {
      throw Exception('No version found in $packagePath/pubspec.yaml');
    }

    if (commonVersion == null) {
      commonVersion = version;
    } else if (commonVersion != version) {
      throw Exception(
        'Version mismatch: $packagePath has $version, expected $commonVersion',
      );
    }

    print('   ✓ $packagePath: $version');
  }

  return commonVersion!;
}

/// Normalize a dev version to release version (remove -dev suffix)
String _normalizeToReleaseVersion(String devVersion) {
  if (devVersion.endsWith('-dev')) {
    return devVersion.substring(0, devVersion.length - 4);
  }
  return devVersion;
}

/// Increment version and add -dev suffix for next development cycle
String _incrementToNextDevVersion(String releaseVersion) {
  final parts = releaseVersion.split('.');
  if (parts.length != 3) {
    throw Exception(
      'Invalid version format: $releaseVersion. Expected major.minor.patch',
    );
  }

  final major = int.parse(parts[0]);
  final minor = int.parse(parts[1]);
  final patch = int.parse(parts[2]);

  // Increment patch version
  return '$major.$minor.${patch + 1}-dev';
}

Future<void> _validateCleanWorkingDirectory() async {
  print('🔍 Checking working directory status...');

  final result = await _runProcess('git', ['status', '--porcelain']);
  if (result.exitCode != 0) {
    throw Exception('Failed to check git status');
  }

  if (result.stdout.toString().trim().isNotEmpty) {
    throw Exception(
      'Working directory is not clean. Please commit or stash changes first.',
    );
  }

  print('   ✓ Working directory is clean');
}

Future<void> _runAllTests() async {
  for (final packagePath in packages) {
    print('   Testing $packagePath...');

    // First ensure dependencies are resolved
    print('     Getting dependencies...');
    await _runProcessChecked('dart', ['pub', 'get'], packagePath);

    // Then run tests
    print('     Running tests...');
    await _runProcessChecked('dart', ['test'], packagePath);
  }

  print('   ✓ All tests passed');
}

Future<void> _validateChangelogs(String version) async {
  print('🔍 Validating CHANGELOGs...');

  for (final packagePath in packages) {
    final changelogFile = File(path.join(packagePath, 'CHANGELOG.md'));
    if (!changelogFile.existsSync()) {
      throw Exception('Missing CHANGELOG.md in $packagePath');
    }

    final content = changelogFile.readAsStringSync();
    if (!content.contains('## [$version]')) {
      throw Exception(
        'CHANGELOG.md in $packagePath does not contain entry for version $version',
      );
    }

    print('   ✓ $packagePath CHANGELOG.md');
  }
}

Future<void> _createReleaseCommit(String version) async {
  print('📝 Creating release commit and tag...');

  final tagName = 'v$version';

  // Check if tag already exists
  final tagResult = await _runProcess('git', ['tag', '-l', tagName]);
  if (tagResult.stdout.toString().trim().isNotEmpty) {
    throw Exception('Tag $tagName already exists');
  }

  // Create tag
  await _runProcessChecked('git', [
    'tag',
    '-a',
    tagName,
    '-m',
    'Release $tagName',
  ]);
  print('   ✓ Created tag $tagName');

  // Push tag
  await _runProcessChecked('git', ['push', 'origin', tagName]);
  print('   ✓ Pushed tag to origin');
}

Future<void> _publishToPublicRegistry(String version) async {
  print('🚀 Publishing packages to pub.dev...');

  // Define package groups
  final corePackages = [
    'packages/rdf_vocabularies_core',
    'packages/rdf_vocabularies_schema',
    'packages/rdf_vocabularies_schema_http',
  ];
  final metaPackage = 'packages/rdf_vocabularies';

  // First, validate all packages with dry run
  print('   🔍 Validating all packages with dry run...');
  for (final packagePath in packages) {
    print('     Validating $packagePath...');
    await _runProcessChecked('dart', [
      'pub',
      'publish',
      '--dry-run',
    ], packagePath);
    print('   ✓ $packagePath validation passed');
  }

  // Step 1: Publish core packages first
  print('   📦 Publishing core packages...');
  for (final packagePath in corePackages) {
    print('   📦 Publishing $packagePath...');
    await _runProcessChecked('dart', [
      'pub',
      'publish',
      '--force',
    ], packagePath);
    print('   ✅ Successfully published $packagePath');
    await Future.delayed(Duration(seconds: 2));
  }

  // Step 2: Publish meta-package (dependencies already updated)
  print('   📦 Publishing meta-package...');
  await _runProcessChecked('dart', ['pub', 'publish', '--force'], metaPackage);
  print('   ✅ Successfully published $metaPackage');
  print('   🎉 All packages published successfully!');
}

Future<void> _updateDependencies(String version, bool dryRun) async {
  final args = ['run', 'tool/update_dependencies.dart'];
  if (dryRun) args.add('--dry-run');

  await _runProcessChecked('dart', args);
  print('   ✓ Meta-package dependencies updated');
}

Future<void> _generateDocumentation() async {
  await _runProcessChecked('dart', ['run', 'tool/all.dart', 'doc']);
  print('   ✓ Documentation generated with updated versions');
}

Future<void> _setAllPackageVersions(String version) async {
  await _runProcessChecked('dart', ['run', 'tool/set_version.dart', version]);
  print('   ✓ All package versions set to $version');
}

Future<void> _commitVersionChange(String version, String message) async {
  // Add all changed files
  await _runProcessChecked('git', ['add', '.']);

  // Commit with descriptive message
  await _runProcessChecked('git', ['commit', '-m', '$message $version']);

  print('   ✓ Committed version change: $version');
}

Future<ProcessResult> _runProcess(
  String command,
  List<String> args, [
  String? workingDirectory,
]) async {
  final process = await Process.start(
    command,
    args,
    workingDirectory: workingDirectory,
  );

  // Capture stdout and stderr while also streaming them
  final stdoutBuffer = StringBuffer();
  final stderrBuffer = StringBuffer();

  // Forward and capture stdout
  process.stdout.listen((data) {
    final text = String.fromCharCodes(data);
    stdoutBuffer.write(text);
    stdout.add(data);
  });

  // Forward and capture stderr
  process.stderr.listen((data) {
    final text = String.fromCharCodes(data);
    stderrBuffer.write(text);
    stderr.add(data);
  });

  final exitCode = await process.exitCode;

  // Return a ProcessResult-like object for compatibility
  return ProcessResult(
    0,
    exitCode,
    stdoutBuffer.toString(),
    stderrBuffer.toString(),
  );
}

/// Simple wrapper that throws on non-zero exit code
Future<void> _runProcessChecked(
  String command,
  List<String> args, [
  String? workingDirectory,
]) async {
  final result = await _runProcess(command, args, workingDirectory);
  if (result.exitCode != 0) {
    throw Exception(
      'Command failed: $command ${args.join(' ')} (exit code: ${result.exitCode})',
    );
  }
}

void _printUsage() {
  print('''
RDF Vocabularies Workspace Release Tool

Usage: dart run tool/release.dart [options]

Options:
  --dry-run           Simulate the release process without making changes
  --no-publish        Skip triggering the publishing workflow
  --non-interactive   Skip interactive prompts (requires clean working directory)
  --help              Show this help message

Examples:
  dart run tool/release.dart --dry-run       # Test the release process
  dart run tool/release.dart                 # Perform full release
  dart run tool/release.dart --no-publish    # Create tag but don't publish

This script coordinates releases across all packages in the workspace to ensure:
- All packages have the same version
- Single git tag is created (no conflicts)  
- Tests pass for all packages
- CHANGELOGs are updated
- Documentation is generated with updated version numbers
- Packages are published directly to pub.dev in dependency order
''');
}

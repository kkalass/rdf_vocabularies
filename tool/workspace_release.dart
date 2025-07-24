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

    // Step 5: Update meta-package dependencies for publishing
    print('🔄 Updating meta-package dependencies...');
    await _updateDependencies(releaseVersion, dryRun);

    // Step 6: Validate CHANGELOGs
    await _validateChangelogs(releaseVersion);

    // Step 7: Generate documentation with updated versions
    print('📚 Generating documentation with updated versions...');
    if (!dryRun) {
      await _generateDocumentation();
    }

    // Step 8: Create git tag and commit
    if (!dryRun) {
      await _createReleaseCommit(releaseVersion);
    }

    // Step 8: Trigger publishing
    if (!skipPublish && !dryRun) {
      await _triggerPublishing(releaseVersion);
    }

    // Step 9: Restore path dependencies for development
    if (!dryRun) {
      print('🔄 Restoring path dependencies for development...');
      await _restoreDependencies(dryRun);
    }

    // Step 10: Set next development version
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

  final result = await Process.run('git', ['status', '--porcelain']);
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
    final pubGetResult = await Process.run('dart', [
      'pub',
      'get',
    ], workingDirectory: packagePath);

    if (pubGetResult.exitCode != 0) {
      throw Exception(
        'Failed to get dependencies in $packagePath: ${pubGetResult.stderr}',
      );
    }

    // Then run tests
    final result = await Process.run('dart', [
      'test',
    ], workingDirectory: packagePath);

    if (result.exitCode != 0) {
      throw Exception('Tests failed in $packagePath: ${result.stderr}');
    }
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
  final tagResult = await Process.run('git', ['tag', '-l', tagName]);
  if (tagResult.stdout.toString().trim().isNotEmpty) {
    throw Exception('Tag $tagName already exists');
  }

  // Create tag
  await _runProcess('git', ['tag', '-a', tagName, '-m', 'Release $tagName']);
  print('   ✓ Created tag $tagName');

  // Push tag
  await _runProcess('git', ['push', 'origin', tagName]);
  print('   ✓ Pushed tag to origin');
}

Future<void> _triggerPublishing(String version) async {
  print('🚀 Triggering publishing workflow...');

  // The GitHub Actions publish workflow will be triggered by the tag push
  print('   ✓ Publishing will be handled by GitHub Actions');
  print(
    '   📝 Monitor progress at: https://github.com/kkalass/rdf_vocabularies/actions',
  );
}

Future<void> _updateDependencies(String version, bool dryRun) async {
  final result = await Process.run('dart', [
    'run',
    'tool/update_dependencies.dart',
    if (dryRun) '--dry-run',
  ]);

  if (result.exitCode != 0) {
    throw Exception('Failed to update dependencies: ${result.stderr}');
  }

  print('   ✓ Meta-package dependencies updated');
}

Future<void> _restoreDependencies(bool dryRun) async {
  final result = await Process.run('dart', [
    'run',
    'tool/restore_dependencies.dart',
    if (dryRun) '--dry-run',
  ]);

  if (result.exitCode != 0) {
    throw Exception('Failed to restore dependencies: ${result.stderr}');
  }

  print('   ✓ Meta-package path dependencies restored');
}

Future<void> _generateDocumentation() async {
  final result = await Process.run('dart', ['run', 'tool/all.dart', 'doc']);

  if (result.exitCode != 0) {
    throw Exception('Failed to generate documentation: ${result.stderr}');
  }

  print('   ✓ Documentation generated with updated versions');
}

Future<void> _setAllPackageVersions(String version) async {
  final result = await Process.run('dart', [
    'run',
    'tool/set_version.dart',
    version,
  ]);

  if (result.exitCode != 0) {
    throw Exception('Failed to set package versions: ${result.stderr}');
  }

  print('   ✓ All package versions set to $version');
}

Future<void> _commitVersionChange(String version, String message) async {
  // Add all changed files
  await _runProcess('git', ['add', '.']);

  // Commit with descriptive message
  await _runProcess('git', ['commit', '-m', '$message $version']);

  print('   ✓ Committed version change: $version');
}

Future<void> _runProcess(String command, List<String> args) async {
  final result = await Process.run(command, args);
  if (result.exitCode != 0) {
    throw Exception(
      'Command failed: $command ${args.join(' ')}\n${result.stderr}',
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
- Publishing is coordinated via GitHub Actions
''');
}

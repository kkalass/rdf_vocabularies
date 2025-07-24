#!/usr/bin/env dart
// Copyright (c) 2025, Klas Kalaß <habbatical@gmail.com>
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

/// Unified package management tool for RDF Vocabularies workspace
///
/// Handles setup, testing, building, documentation, cleaning, and publishing
/// for all packages in the multi-package architecture.
///
/// Usage: dart run tool/all.dart `<command>` [options]
library;

import 'dart:io';
import 'package:path/path.dart' as path;

/// Package configuration - defines order and dependencies
final List<String> corePackages = [
  'packages/rdf_vocabularies_core',
  'packages/rdf_vocabularies_schema',
  'packages/rdf_vocabularies_schema_http',
];

final List<String> metaPackages = ['packages/rdf_vocabularies'];

final List<String> allPackages = [...corePackages, ...metaPackages];

/// Packages that should have documentation generated
/// Meta-package excluded as it only contains exports and would duplicate everything
final List<String> packagesWithDocs = [...corePackages];

/// ANSI color codes for terminal output
const String colorInfo = '\x1B[34m';
const String colorSuccess = '\x1B[32m';
const String colorWarning = '\x1B[33m';
const String colorError = '\x1B[31m';
const String colorReset = '\x1B[0m';

void logInfo(String message) {
  print('${colorInfo}ℹ️  $message$colorReset');
}

void logSuccess(String message) {
  print('${colorSuccess}✅ $message$colorReset');
}

void logWarning(String message) {
  print('${colorWarning}⚠️  $message$colorReset');
}

void logError(String message) {
  print('${colorError}❌ $message$colorReset');
}

void logSection(String title) {
  print('');
  print('${colorInfo}$title$colorReset');
  print('='.padRight(title.length, '='));
}

/// Find the workspace root directory
Directory? findWorkspaceRoot() {
  var current = Directory.current;

  while (current.path != current.parent.path) {
    final pubspecFile = File(path.join(current.path, 'pubspec.yaml'));
    final packagesDir = Directory(path.join(current.path, 'packages'));

    if (pubspecFile.existsSync() && packagesDir.existsSync()) {
      return current;
    }
    current = current.parent;
  }

  return null;
}

/// Execute a command for a list of packages
Future<void> executeForPackages(
  String operation,
  List<String> packages,
  Directory workspaceRoot,
) async {
  for (final packagePath in packages) {
    final packageDir = Directory(path.join(workspaceRoot.path, packagePath));

    if (!packageDir.existsSync()) {
      logWarning('Package directory $packagePath not found');
      continue;
    }

    logInfo('Processing $packagePath...');
    print('-'.padRight(40, '-'));

    final originalDir = Directory.current;
    Directory.current = packageDir;

    try {
      switch (operation) {
        case 'setup':
          await _runDartPubGet();
          break;
        case 'test':
          await _runTests();
          break;
        case 'build':
          await _runBuild();
          break;
        case 'doc':
          await _runDocGeneration();
          break;
        case 'clean-build':
          await _runCleanBuild();
          break;
        case 'clean-all':
          await _runCleanAll();
          break;
        case 'release':
          await _runRelease();
          break;
        case 'update-version':
          await _runUpdateVersion();
          break;
        case 'run-tests':
          await _runRunTests();
          break;
      }

      logSuccess('Completed $operation for $packagePath');
    } catch (e) {
      logError('Failed $operation for $packagePath: $e');
    } finally {
      Directory.current = originalDir;
    }
  }
}

Future<void> _runDartPubGet() async {
  final result = await Process.run('dart', ['pub', 'get']);
  if (result.exitCode != 0) {
    throw Exception('dart pub get failed: ${result.stderr}');
  }
}

Future<void> _runTests() async {
  logInfo('Running basic tests...');
  final result = await Process.run('dart', ['test']);
  if (result.exitCode != 0) {
    throw Exception('Tests failed');
  }
}

Future<void> _runBuild() async {
  final pubspecFile = File('pubspec.yaml');
  if (!pubspecFile.existsSync()) {
    logWarning('No pubspec.yaml found');
    return;
  }

  final pubspecContent = await pubspecFile.readAsString();
  if (!pubspecContent.contains('build_runner')) {
    logInfo('No build_runner configured');
    return;
  }

  await _runDartPubGet();
  final result = await Process.run('dart', [
    'run',
    'build_runner',
    'build',
    '--delete-conflicting-outputs',
  ]);

  if (result.exitCode != 0) {
    throw Exception('build_runner failed: ${result.stderr}');
  }
}

Future<void> _runDocGeneration() async {
  await _runDartPubGet();
  logInfo('Generating API documentation...');
  final result = await Process.run('dart', ['doc', '-o', 'doc/api', '.']);
  if (result.exitCode != 0) {
    logWarning('Documentation generation failed');
  }
}

Future<void> _runCleanBuild() async {
  // Clean only build_runner cache and build artifacts
  final pubspecFile = File('pubspec.yaml');
  if (pubspecFile.existsSync()) {
    final pubspecContent = await pubspecFile.readAsString();
    if (pubspecContent.contains('build_runner')) {
      logInfo('Cleaning build_runner cache...');
      await Process.run('dart', ['run', 'build_runner', 'clean']);
    } else {
      logInfo('No build_runner configured, nothing to clean');
    }
  }

  // Remove only build directory
  final buildDir = Directory('build');
  if (buildDir.existsSync()) {
    logInfo('Removing build directory...');
    await buildDir.delete(recursive: true);
  }
}

Future<void> _runCleanAll() async {
  // Clean build_runner cache
  final pubspecFile = File('pubspec.yaml');
  if (pubspecFile.existsSync()) {
    final pubspecContent = await pubspecFile.readAsString();
    if (pubspecContent.contains('build_runner')) {
      await Process.run('dart', ['run', 'build_runner', 'clean']);
    }
  }

  // Clean pub cache
  await Process.run('dart', ['pub', 'cache', 'clean']);

  // Remove generated files and directories
  final itemsToDelete = [
    '.dart_tool',
    'build',
    '.packages',
    'pubspec.lock',
    'doc/api',
    'coverage',
  ];

  for (final item in itemsToDelete) {
    final file = File(item);
    final dir = Directory(item);

    if (file.existsSync()) {
      await file.delete();
    } else if (dir.existsSync()) {
      await dir.delete(recursive: true);
    }
  }
}

Future<void> _runRelease() async {
  final result = await Process.run('dart', ['run', 'tool/release.dart']);
  if (result.exitCode != 0) {
    throw Exception('Release failed: ${result.stderr}');
  }
}

Future<void> _runUpdateVersion() async {
  final result = await Process.run('dart', ['run', 'tool/update_version.dart']);
  if (result.exitCode != 0) {
    throw Exception('Update version failed: ${result.stderr}');
  }
}

Future<void> _runRunTests() async {
  final result = await Process.run('dart', ['run', 'tool/run_tests.dart']);
  if (result.exitCode != 0) {
    throw Exception('Run tests failed: ${result.stderr}');
  }
}

/// Command implementations
Future<void> cmdSetup(Directory workspaceRoot) async {
  logSection('🚀 Setting up all RDF Vocabularies packages');
  await executeForPackages('setup', allPackages, workspaceRoot);
  logSuccess('All packages setup completed!');
}

Future<void> cmdTest(Directory workspaceRoot) async {
  logSection('🧪 Running tests for all packages');
  await executeForPackages('test', allPackages, workspaceRoot);
  logSuccess('All tests completed!');
}

Future<void> cmdBuild(Directory workspaceRoot) async {
  logSection('🔨 Building all packages with build_runner');
  await executeForPackages('build', corePackages, workspaceRoot);
  logSuccess('All packages built!');
}

Future<void> cmdDoc(Directory workspaceRoot) async {
  logSection('📚 Generating documentation for core packages');
  await executeForPackages('doc', packagesWithDocs, workspaceRoot);

  // Aggregate documentation for GitHub Pages
  logInfo('Aggregating documentation for GitHub Pages...');
  final aggregateResult = await Process.run('dart', [
    'run',
    'tool/aggregate_docs.dart',
  ], workingDirectory: workspaceRoot.path);

  if (aggregateResult.exitCode != 0) {
    logWarning('Failed to aggregate documentation: ${aggregateResult.stderr}');
  }

  logSuccess('Documentation generation completed!');

  print('');
  logInfo('Generated documentation locations:');
  for (final packagePath in packagesWithDocs) {
    final docDir = Directory(
      path.join(workspaceRoot.path, packagePath, 'doc', 'api'),
    );
    if (docDir.existsSync()) {
      print('  - $packagePath/doc/api/index.html');
    }
  }

  final centralDocDir = Directory(path.join(workspaceRoot.path, 'doc'));
  if (centralDocDir.existsSync()) {
    print('');
    logInfo('Unified documentation (GitHub Pages):');
    print('  - doc/index.html (Landing page)');
    print('  - doc/api/index.html (API overview)');
    print('  - doc/api/*/index.html (Package-specific APIs)');
  }
}

Future<void> cmdCleanBuild(Directory workspaceRoot) async {
  logSection('🧹 Cleaning build artifacts for all packages');
  await executeForPackages('clean-build', allPackages, workspaceRoot);
  logSuccess('Build artifacts cleaned for all packages!');
  logInfo('Generated code and dependencies are preserved');
}

Future<void> cmdCleanAll(Directory workspaceRoot) async {
  logSection('🧹 Cleaning all packages thoroughly');
  logWarning(
    'This will remove dependencies, documentation, and all build artifacts',
  );

  // Include root workspace in cleaning
  final allDirs = ['.', ...allPackages];
  await executeForPackages('clean-all', allDirs, workspaceRoot);

  logSuccess('All packages thoroughly cleaned!');
  logInfo('To restore dependencies, run: dart run tool/all.dart setup');
}

Future<void> cmdStatus(Directory workspaceRoot) async {
  logSection('📊 Package Status Overview');

  for (final packagePath in allPackages) {
    final packageDir = Directory(path.join(workspaceRoot.path, packagePath));

    if (!packageDir.existsSync()) {
      continue;
    }

    print('');
    logInfo('Package: $packagePath');

    final originalDir = Directory.current;
    Directory.current = packageDir;

    try {
      final pubspecFile = File('pubspec.yaml');
      if (pubspecFile.existsSync()) {
        final pubspecContent = await pubspecFile.readAsString();
        final nameMatch = RegExp(
          r'^name:\s*(.+)$',
          multiLine: true,
        ).firstMatch(pubspecContent);
        final versionMatch = RegExp(
          r'^version:\s*(.+)$',
          multiLine: true,
        ).firstMatch(pubspecContent);

        if (nameMatch != null) {
          print('  Name: ${nameMatch.group(1)}');
        }
        if (versionMatch != null) {
          print('  Version: ${versionMatch.group(1)}');
        }

        // Check dependencies
        final dartToolDir = Directory('.dart_tool');
        if (dartToolDir.existsSync()) {
          print('  Dependencies: ✅ Resolved');
        } else {
          print('  Dependencies: ❌ Not resolved (run setup)');
        }

        // Check documentation
        final docDir = Directory(path.join('doc', 'api'));
        if (docDir.existsSync()) {
          print('  Documentation: ✅ Generated');
        } else {
          print('  Documentation: ❌ Not generated');
        }

        // Check tools
        final toolDir = Directory('tool');
        if (toolDir.existsSync()) {
          final toolFiles =
              await toolDir
                  .list()
                  .where(
                    (entity) => entity is File && entity.path.endsWith('.dart'),
                  )
                  .length;
          if (toolFiles > 0) {
            print('  Tools: ✅ $toolFiles tools available');
          } else {
            print('  Tools: ❌ No tools found');
          }
        } else {
          print('  Tools: ❌ No tool directory (run copy-tools)');
        }

        // Check generated code
        if (pubspecContent.contains('build_runner')) {
          final generatedDir = Directory(path.join('lib', 'src', 'generated'));
          if (generatedDir.existsSync()) {
            print('  Generated code: ✅ Built');
          } else {
            print('  Generated code: ❌ Not built');
          }
        }
      }
    } finally {
      Directory.current = originalDir;
    }
  }
}

/// Get package name from package directory path
String getPackageName(String packageDir) {
  return path.basename(packageDir);
}

Future<void> cmdCopyTools(Directory workspaceRoot) async {
  logSection('🔧 Copying tool infrastructure to all packages');

  final originalDir = Directory.current;
  Directory.current = workspaceRoot;

  var successCount = 0;
  var totalCount = allPackages.length;

  try {
    for (final packageDir in allPackages) {
      final packageName = getPackageName(packageDir);

      logInfo('Copying tools to $packageName...');

      final result = await Process.run('dart', [
        'run',
        'tool/copy_tools.dart',
        packageDir,
        packageName,
      ]);

      if (result.exitCode == 0) {
        logSuccess('✓ Tools copied to $packageName');
        successCount++;
      } else {
        logError('Failed to copy tools to $packageName: ${result.stderr}');
      }
    }

    print('');
    if (successCount == totalCount) {
      logSuccess('Tool infrastructure copied to all $totalCount packages!');
    } else {
      logWarning('Copied tools to $successCount of $totalCount packages');
    }
  } finally {
    Directory.current = originalDir;
  }
}

Future<void> cmdRelease(
  Directory workspaceRoot, [
  List<String>? extraArgs,
]) async {
  logSection('🚀 Running workspace-wide release process');
  logInfo('Using coordinated release to avoid tag conflicts...');

  // Run the workspace release script with streaming output
  final process = await Process.start('dart', [
    'run',
    'tool/workspace_release.dart',
    ...?extraArgs,
  ], workingDirectory: workspaceRoot.path);

  // Forward stdout and stderr in real-time
  process.stdout.listen((data) {
    stdout.add(data);
  });

  process.stderr.listen((data) {
    stderr.add(data);
  });

  final exitCode = await process.exitCode;

  if (exitCode != 0) {
    throw Exception('Workspace release failed with exit code $exitCode');
  }

  logSuccess('Workspace release completed successfully!');
  logInfo('All packages have been released with synchronized versions.');
}

Future<void> cmdUpdateVersion(Directory workspaceRoot) async {
  logSection('📝 Running update version for all packages');
  await executeForPackages('update-version', allPackages, workspaceRoot);
  logSuccess('Version update completed for all packages!');
}

Future<void> cmdRunTests(Directory workspaceRoot) async {
  logSection('🧪 Running individual package tests');
  await executeForPackages('run-tests', allPackages, workspaceRoot);
  logSuccess('Individual package tests completed!');
}

void printUsage() {
  print('RDF Vocabularies Package Manager');
  print('');
  print('USAGE:');
  print('  dart run tool/all.dart <command>');
  print('');
  print('COMMANDS:');
  print('  setup           Get dependencies for all packages');
  print('  test            Run standard dart test for all packages');
  print('  build           Build packages with build_runner');
  print('  doc             Generate API documentation');
  print(
    '  clean-build     Clean only build artifacts (build_runner cache and build/ directory)',
  );
  print(
    '  clean-all       Clean everything (dependencies, docs, coverage, build artifacts)',
  );
  print('  status          Show package status overview');
  print('  copy-tools      Copy tool infrastructure to all packages');
  print(
    '  release         Run coordinated release for all packages (synchronized versions)',
  );
  print('  update-version  Run version update for all packages');
  print(
    '  run-tests       Run enhanced tests with coverage (via tool/run_tests.dart) for all packages',
  );
  print('  help            Show this help message');
  print('');
  print('EXAMPLES:');
  print('  dart run tool/all.dart setup        # Initial workspace setup');
  print('  dart run tool/all.dart build        # Build generated code');
  print(
    '  dart run tool/all.dart run-tests         # Run all tests and measure coverage',
  );
  print('  dart run tool/all.dart clean-build  # Clean build artifacts only');
  print('  dart run tool/all.dart clean-all    # Clean everything');
  print(
    '  dart run tool/all.dart release      # Coordinated release with synchronized versions',
  );
}

Future<void> main(List<String> args) async {
  if (args.isEmpty || args.contains('help') || args.contains('--help')) {
    printUsage();
    exit(0);
  }

  final command = args.first;

  // Find workspace root
  final workspaceRoot = findWorkspaceRoot();
  if (workspaceRoot == null) {
    logError('Could not find workspace root directory');
    exit(1);
  }

  try {
    switch (command) {
      case 'setup':
        await cmdSetup(workspaceRoot);
        break;
      case 'test':
        await cmdTest(workspaceRoot);
        break;
      case 'build':
        await cmdBuild(workspaceRoot);
        break;
      case 'doc':
        await cmdDoc(workspaceRoot);
        break;
      case 'clean-build':
        await cmdCleanBuild(workspaceRoot);
        break;
      case 'clean-all':
        await cmdCleanAll(workspaceRoot);
        break;
      case 'status':
        await cmdStatus(workspaceRoot);
        break;
      case 'copy-tools':
        await cmdCopyTools(workspaceRoot);
        break;
      case 'release':
        await cmdRelease(workspaceRoot, args.skip(1).toList());
        break;
      case 'update-version':
        await cmdUpdateVersion(workspaceRoot);
        break;
      case 'run-tests':
        await cmdRunTests(workspaceRoot);
        break;
      default:
        logError('Unknown command: $command');
        print('');
        printUsage();
        exit(1);
    }
  } catch (e) {
    logError('Command failed: $e');
    exit(1);
  }
}

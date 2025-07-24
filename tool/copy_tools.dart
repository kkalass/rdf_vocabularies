#!/usr/bin/env dart
// Copyright (c) 2025, Klas Kalaß <habbatical@gmail.com>
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

/// Tool to copy and customize shared tool infrastructure to a single target package
///
/// This tool handles copying tools from rdf_core to a specific target directory
/// with package-specific customizations. It's designed to be called by
/// all.dart which coordinates the multi-package operations.
///
/// Usage: `dart run tool/copy_tools.dart <target_dir> <package_name> [options]`
///   target_dir: Target package directory (e.g., packages/rdf_vocabularies_core)
///   package_name: Package name for customization (e.g., rdf_vocabularies_core)
///   --dry-run: Show what would be copied without making changes
///   --help: Show this help message
library;

import 'dart:io';
import 'package:path/path.dart' as path;

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

/// Get the source tool directory (from rdf_core package)
Directory? getSourceToolDirectory(Directory workspaceRoot) {
  final coreToolDir = Directory(
    path.join(workspaceRoot.parent.path, 'rdf_core', 'tool'),
  );

  if (coreToolDir.existsSync()) {
    return coreToolDir;
  }

  return null;
}

/// Customize tool file content for a specific package
String customizeToolContent(String content, String packageName) {
  // Replace hardcoded package name references
  return content.replaceAll('rdf_core', packageName);
}

/// Copy and customize tools for a specific package
Future<bool> copyToolsForPackage(
  Directory sourceToolDir,
  String targetPackageDir,
  String packageName,
  bool dryRun,
) async {
  final targetDir = Directory(path.join(targetPackageDir, 'tool'));

  if (!Directory(targetPackageDir).existsSync()) {
    logError('Target package directory $targetPackageDir not found');
    return false;
  }

  logInfo('Processing $targetPackageDir ($packageName)...');

  if (!dryRun) {
    // Create tool directory if it doesn't exist
    await targetDir.create(recursive: true);
  }

  // Process each tool file
  await for (final entity in sourceToolDir.list()) {
    if (entity is File && entity.path.endsWith('.dart')) {
      final fileName = path.basename(entity.path);
      final targetFile = File(path.join(targetDir.path, fileName));

      if (dryRun) {
        logInfo('  Would copy and customize $fileName');
      } else {
        try {
          // Read source content
          final content = await entity.readAsString();

          // Customize for this package
          final customizedContent = customizeToolContent(content, packageName);

          // Write to target
          await targetFile.writeAsString(customizedContent);

          // Make executable (Unix permissions)
          if (Platform.isLinux || Platform.isMacOS) {
            await Process.run('chmod', ['+x', targetFile.path]);
          }

          logInfo('  ✓ Copied and customized $fileName');
        } catch (e) {
          logError('  Failed to copy $fileName: $e');
          return false;
        }
      }
    }
  }

  return true;
}

/// Copy tools to a single target package
Future<bool> copyTools(
  String targetPackageDir,
  String packageName,
  bool dryRun,
) async {
  logInfo('Copying and customizing tool infrastructure for $packageName');
  print('='.padRight(64, '='));

  // Find workspace root
  final workspaceRoot = findWorkspaceRoot();
  if (workspaceRoot == null) {
    logError('Could not find workspace root directory');
    return false;
  }

  // Get source tool directory
  final sourceToolDir = getSourceToolDirectory(workspaceRoot);
  if (sourceToolDir == null) {
    final expectedPath = path.join(
      workspaceRoot.parent.path,
      'rdf_core',
      'tool',
    );
    logError('Could not find source tool directory at: $expectedPath');
    logError('');
    logError(
      'Please ensure the rdf_core package is available as a sibling directory:',
    );
    logError('  cd ${workspaceRoot.parent.path}');
    logError('  git clone https://github.com/kkalass/rdf_core.git');
    logError('');
    logError('Expected directory structure:');
    logError('  ${workspaceRoot.parent.path}/');
    logError('  ├── rdf_core/');
    logError('  │   └── tool/');
    logError('  └── rdf_vocabularies/');
    logError('      └── tool/');
    return false;
  }

  logInfo('Using source tool directory: ${sourceToolDir.path}');

  if (dryRun) {
    logWarning('DRY RUN: No changes will be made');
    print('');
  }

  // Copy tools for the target package
  final success = await copyToolsForPackage(
    sourceToolDir,
    targetPackageDir,
    packageName,
    dryRun,
  );

  if (success) {
    logSuccess(
      'Tools ${dryRun ? 'would be ' : ''}copied and customized for $packageName',
    );
    print('');
    logInfo('Package now has access to:');
    print('  - tool/run_tests.dart     - Test execution with coverage');
    print(
      '  - tool/update_version.dart - Version and documentation management',
    );
    print('  - tool/release.dart       - Automated release process');
  } else {
    logError('Failed to copy tools for $packageName');
  }

  return success;
}

void printUsage() {
  print('Tool Infrastructure Copy Utility');
  print('');
  print('USAGE:');
  print(
    '  dart run tool/copy_tools.dart <target_dir> <package_name> [options]',
  );
  print('');
  print('ARGUMENTS:');
  print(
    '  target_dir    Target package directory (e.g., packages/rdf_vocabularies_core)',
  );
  print(
    '  package_name  Package name for customization (e.g., rdf_vocabularies_core)',
  );
  print('');
  print('OPTIONS:');
  print('  --dry-run    Show what would be copied without making changes');
  print('  --help       Show this help message');
  print('');
  print('DESCRIPTION:');
  print(
    '  Copies shared tool infrastructure from rdf_core (../rdf_core/tool/) to a',
  );
  print('  specific target package with package-specific customizations.');
  print('');
  print('REQUIREMENTS:');
  print('  The rdf_core package must be available as a sibling directory.');
  print('  If not available, clone it first:');
  print('    cd .. && git clone https://github.com/kkalass/rdf_core.git');
  print('');
  print('EXAMPLES:');
  print('  # Copy tools to core package');
  print(
    '  dart run tool/copy_tools.dart packages/rdf_vocabularies_core rdf_vocabularies_core',
  );
  print('');
  print('  # Preview what would be copied');
  print(
    '  dart run tool/copy_tools.dart packages/rdf_vocabularies_core rdf_vocabularies_core --dry-run',
  );
  print('');
  print('NOTE:');
  print(
    '  This tool is typically called by all.dart which handles',
  );
  print('  coordination across all packages in the workspace.');
}

Future<void> main(List<String> args) async {
  if (args.contains('--help')) {
    printUsage();
    exit(0);
  }

  // Remove options from args to get positional arguments
  final positionalArgs = args.where((arg) => !arg.startsWith('--')).toList();

  if (positionalArgs.length != 2) {
    logError('Expected exactly 2 arguments: <target_dir> <package_name>');
    print('');
    printUsage();
    exit(1);
  }

  final targetDir = positionalArgs[0];
  final packageName = positionalArgs[1];
  final dryRun = args.contains('--dry-run');

  try {
    final success = await copyTools(targetDir, packageName, dryRun);
    exit(success ? 0 : 1);
  } catch (e) {
    logError('Failed to copy tools: $e');
    exit(1);
  }
}

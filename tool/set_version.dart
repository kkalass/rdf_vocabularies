#!/usr/bin/env dart
// Copyright (c) 2025, Klas Kalaß <habbatical@gmail.com>
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

/// Updates version numbers across all packages in the workspace
///
/// This script updates version numbers in all pubspec.yaml files and
/// can handle both release versions and development versions.
library;

import 'dart:io';

/// Package configuration - in dependency order
final List<String> packages = [
  'packages/rdf_vocabularies_core',
  'packages/rdf_vocabularies_schema',
  'packages/rdf_vocabularies_schema_http',
  'packages/rdf_vocabularies', // Meta-package last
];

Future<void> main(List<String> args) async {
  if (args.isEmpty || args.contains('--help')) {
    _printUsage();
    exit(0);
  }

  final newVersion = args[0];
  final dryRun = args.contains('--dry-run');

  print('📦 Updating version to $newVersion across all packages...');

  try {
    // Validate version format
    _validateVersion(newVersion);

    // Update all packages
    await _updateAllPackageVersions(newVersion, dryRun);

    if (dryRun) {
      print('✅ Dry run completed - no changes made');
    } else {
      print('✅ Version $newVersion set in all packages successfully!');
    }
  } catch (e) {
    print('❌ Failed to update versions: $e');
    exit(1);
  }
}

void _validateVersion(String version) {
  // Basic validation for semantic versioning
  final versionPattern = RegExp(r'^\d+\.\d+\.\d+(-dev)?$');
  if (!versionPattern.hasMatch(version)) {
    throw Exception(
      'Invalid version format: $version. Expected format: major.minor.patch or major.minor.patch-dev',
    );
  }
}

Future<void> _updateAllPackageVersions(String newVersion, bool dryRun) async {
  for (final packagePath in packages) {
    await _updatePackageVersion(packagePath, newVersion, dryRun);
  }
}

Future<void> _updatePackageVersion(
  String packagePath,
  String newVersion,
  bool dryRun,
) async {
  final pubspecFile = File('$packagePath/pubspec.yaml');

  if (!pubspecFile.existsSync()) {
    throw Exception('Package not found: $packagePath/pubspec.yaml');
  }

  String content = pubspecFile.readAsStringSync();

  // Update version line
  final versionPattern = RegExp(r'^version:\s*[^\n]+', multiLine: true);

  if (!versionPattern.hasMatch(content)) {
    throw Exception('No version field found in $packagePath/pubspec.yaml');
  }

  content = content.replaceAll(versionPattern, 'version: $newVersion');

  if (!dryRun) {
    pubspecFile.writeAsStringSync(content);
  }

  print('   ✓ Updated $packagePath to $newVersion');
}

void _printUsage() {
  print('''
Set Version Tool - Update version across all packages

Usage: dart run tool/set_version.dart <version> [options]

Arguments:
  <version>       Version to set (e.g., 0.4.0 or 0.4.1-dev)

Options:
  --dry-run       Show what would be changed without making changes
  --help          Show this help message

Examples:
  dart run tool/set_version.dart 0.4.0          # Set release version
  dart run tool/set_version.dart 0.4.1-dev      # Set next dev version
  dart run tool/set_version.dart 0.4.0 --dry-run   # Test the operation
''');
}

#!/usr/bin/env dart
// Copyright (c) 2025, Klas Kalaß <habbatical@gmail.com>
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

/// Restores path dependencies in meta-package after publishing
///
/// This script reverts the meta-package to use local path dependencies
/// for development after publishing is complete.
library;

import 'dart:io';

const String metaPackagePath = 'packages/rdf_vocabularies/pubspec.yaml';

Future<void> main(List<String> args) async {
  final dryRun = args.contains('--dry-run');

  print('🔄 Restoring meta-package path dependencies for development...');

  try {
    await _restorePathDependencies(dryRun);

    if (dryRun) {
      print('✅ Dry run completed - no changes made');
    } else {
      print('✅ Meta-package path dependencies restored successfully!');
    }
  } catch (e) {
    print('❌ Failed to restore dependencies: $e');
    exit(1);
  }
}

Future<void> _restorePathDependencies(bool dryRun) async {
  final file = File(metaPackagePath);

  if (!file.existsSync()) {
    throw Exception('Meta-package not found: $metaPackagePath');
  }

  String content = file.readAsStringSync();

  // Replace version constraints with path dependencies
  final replacements = {
    'rdf_vocabularies_core': '../rdf_vocabularies_core',
    'rdf_vocabularies_schema': '../rdf_vocabularies_schema',
    'rdf_vocabularies_schema_http': '../rdf_vocabularies_schema_http',
  };

  for (final entry in replacements.entries) {
    final packageName = entry.key;
    final packagePath = entry.value;

    // Pattern to match version constraint
    final versionPattern = RegExp(
      r'(\s+' + RegExp.escape(packageName) + r'):\s*\^[^\n]+',
      multiLine: true,
    );

    // Replacement with path dependency
    final replacement = '  $packageName: \n    path: $packagePath';

    if (versionPattern.hasMatch(content)) {
      content = content.replaceAll(versionPattern, replacement);
      print('   ✓ Restored $packageName to path dependency');
    } else {
      print('   ⚠️  No version constraint found for $packageName');
    }
  }

  if (!dryRun) {
    file.writeAsStringSync(content);
  } else {
    print('   📝 Would restore $metaPackagePath');
  }
}

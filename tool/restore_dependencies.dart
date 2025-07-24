#!/usr/bin/env dart
// Copyright (c) 2025, Klas Kalaß <habbatical@gmail.com>
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

/// DEPRECATED: Restores path dependencies in meta-package after publishing
///
/// This script is no longer used in the new release workflow.
/// The meta-package now uses version dependencies permanently.
///
/// For manual use only if needed during development.
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

  final lines = file.readAsLinesSync();
  final updatedLines = <String>[];

  bool inDependencies = false;

  final pathMappings = {
    'rdf_vocabularies_core': '../rdf_vocabularies_core',
    'rdf_vocabularies_schema': '../rdf_vocabularies_schema',
    'rdf_vocabularies_schema_http': '../rdf_vocabularies_schema_http',
  };

  for (final line in lines) {
    if (line.trim() == 'dependencies:') {
      inDependencies = true;
      updatedLines.add(line);
      continue;
    }

    if (inDependencies && line.isNotEmpty && !line.startsWith(' ')) {
      inDependencies = false;
    }

    if (inDependencies) {
      bool foundPackage = false;
      for (final entry in pathMappings.entries) {
        final packageName = entry.key;
        final packagePath = entry.value;

        final versionMatch = RegExp(
          r'^  ' + RegExp.escape(packageName) + r':\s*\^',
        ).firstMatch(line);
        if (versionMatch != null) {
          updatedLines.add('  $packageName:');
          updatedLines.add('    path: $packagePath');
          print('   ✓ Restored $packageName to path dependency');
          foundPackage = true;
          break;
        }
      }

      if (!foundPackage) {
        updatedLines.add(line);
      }
    } else {
      updatedLines.add(line);
    }
  }

  if (!dryRun) {
    file.writeAsStringSync(updatedLines.join('\n') + '\n');
  } else {
    print('   📝 Would restore $metaPackagePath');
  }
}

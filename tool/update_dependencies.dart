#!/usr/bin/env dart
// Copyright (c) 2025, Klas Kalaß <habbatical@gmail.com>
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

/// Updates dependencies in meta-package to use published versions
///
/// This script should be called before publishing to replace path dependencies
/// with version constraints for pub.dev publishing.
library;

import 'dart:io';
import 'package:yaml/yaml.dart';

const String metaPackagePath = 'packages/rdf_vocabularies/pubspec.yaml';

Future<void> main(List<String> args) async {
  final dryRun = args.contains('--dry-run');

  print('🔄 Updating meta-package dependencies for publishing...');

  try {
    // Get version from core package
    final version = await _getVersion();
    print('📦 Version: $version');

    // Update meta-package dependencies
    await _updateMetaPackageDependencies(version, dryRun);

    if (dryRun) {
      print('✅ Dry run completed - no changes made');
    } else {
      print('✅ Meta-package dependencies updated successfully!');
    }
  } catch (e) {
    print('❌ Failed to update dependencies: $e');
    exit(1);
  }
}

Future<String> _getVersion() async {
  final corePackagePath = 'packages/rdf_vocabularies_core/pubspec.yaml';
  final file = File(corePackagePath);

  if (!file.existsSync()) {
    throw Exception('Core package not found: $corePackagePath');
  }

  final content = file.readAsStringSync();
  final pubspec = loadYaml(content) as Map;
  final version = pubspec['version'] as String?;

  if (version == null) {
    throw Exception('No version found in $corePackagePath');
  }

  return version;
}

Future<void> _updateMetaPackageDependencies(String version, bool dryRun) async {
  final file = File(metaPackagePath);

  if (!file.existsSync()) {
    throw Exception('Meta-package not found: $metaPackagePath');
  }

  final lines = file.readAsLinesSync();
  final updatedLines = <String>[];

  bool inDependencies = false;
  bool skipNextPath = false;

  for (int i = 0; i < lines.length; i++) {
    final line = lines[i];

    if (line.trim() == 'dependencies:') {
      inDependencies = true;
      updatedLines.add(line);
      continue;
    }

    if (inDependencies && line.isNotEmpty && !line.startsWith(' ')) {
      inDependencies = false;
    }

    if (inDependencies && skipNextPath && line.trim().startsWith('path:')) {
      // Skip the path line
      skipNextPath = false;
      continue;
    }

    skipNextPath = false;

    if (inDependencies) {
      final packageMatch = RegExp(
        r'^  (rdf_vocabularies_(?:core|schema|schema_http)):',
      ).firstMatch(line);
      if (packageMatch != null) {
        final packageName = packageMatch.group(1)!;
        updatedLines.add('  $packageName: ^$version');
        skipNextPath = true;
        print('   ✓ Updated $packageName to ^$version');
        continue;
      }
    }

    updatedLines.add(line);
  }

  if (!dryRun) {
    file.writeAsStringSync(updatedLines.join('\n') + '\n');
  } else {
    print('   📝 Would update $metaPackagePath');
  }
}

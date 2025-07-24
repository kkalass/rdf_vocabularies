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

  String content = file.readAsStringSync();

  // Replace path dependencies with version constraints
  final replacements = {
    'rdf_vocabularies_core': version,
    'rdf_vocabularies_schema': version,
    'rdf_vocabularies_schema_http': version,
  };

  for (final entry in replacements.entries) {
    final packageName = entry.key;
    final packageVersion = entry.value;

    // Pattern to match path dependency (across multiple lines)
    final pathPattern = RegExp(
      r'(\s+' + RegExp.escape(packageName) + r'):\s*\n\s+path:\s*[^\n]+',
      multiLine: true,
    );

    // Replacement with version constraint
    final replacement = '  $packageName: ^$packageVersion';

    if (pathPattern.hasMatch(content)) {
      content = content.replaceAll(pathPattern, replacement);
      print('   ✓ Updated $packageName to ^$packageVersion');
    } else {
      print('   ⚠️  No path dependency found for $packageName');
    }
  }

  if (!dryRun) {
    file.writeAsStringSync(content);
  } else {
    print('   📝 Would update $metaPackagePath');
  }
}

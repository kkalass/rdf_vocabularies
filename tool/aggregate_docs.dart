#!/usr/bin/env dart
// Copyright (c) 2025, Klas Kalaß <habbatical@gmail.com>
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

/// Aggregates API documentation from packages with substantial content
///
/// This script collects the generated API documentation from packages that
/// contain actual implementation code and creates a unified documentation
/// structure for GitHub Pages deployment. The meta-package is excluded as
/// it only contains simple exports and would duplicate all documentation.
library;

import 'dart:io';
import 'package:path/path.dart' as path;

/// Packages that generate substantial documentation (excludes meta-package)
const List<Map<String, String>> packagesWithDocs = [
  {
    'name': 'rdf_vocabularies_core',
    'path': 'packages/rdf_vocabularies_core',
    'description': 'Core RDF vocabularies',
  },
  {
    'name': 'rdf_vocabularies_schema',
    'path': 'packages/rdf_vocabularies_schema',
    'description': 'Schema.org (HTTPS)',
  },
  {
    'name': 'rdf_vocabularies_schema_http',
    'path': 'packages/rdf_vocabularies_schema_http',
    'description': 'Schema.org (HTTP)',
  },
  // rdf_vocabularies meta-package excluded - only contains exports
];

Future<void> main(List<String> args) async {
  final dryRun = args.contains('--dry-run');

  print('📚 Aggregating API documentation for GitHub Pages...');

  try {
    // Create doc/api directory structure
    await _ensureDocStructure(dryRun);

    // Copy package documentation
    await _copyPackageDocumentation(dryRun);

    // Create navigation aids
    await _createNavigationFiles(dryRun);

    // Copy assets
    await _copyAssets(dryRun);

    if (dryRun) {
      print('✅ Dry run completed - no changes made');
    } else {
      print('✅ Documentation aggregated successfully!');
      print('   📁 Documentation available in doc/ directory');
      print('   🌐 Ready for GitHub Pages deployment');
    }
  } catch (e) {
    print('❌ Failed to aggregate documentation: $e');
    exit(1);
  }
}

Future<void> _ensureDocStructure(bool dryRun) async {
  final docApiDir = Directory('doc/api');

  if (!dryRun) {
    if (docApiDir.existsSync()) {
      print('🧹 Cleaning existing doc/api directory...');
      await docApiDir.delete(recursive: true);
    }
    await docApiDir.create(recursive: true);

    // Ensure main doc directory exists but don't delete existing index.html
    final docDir = Directory('doc');
    if (!docDir.existsSync()) {
      await docDir.create(recursive: true);
    }
  }

  print('   ✓ Documentation structure prepared');
}

Future<void> _copyPackageDocumentation(bool dryRun) async {
  for (final package in packagesWithDocs) {
    final packageName = package['name']!;
    final packagePath = package['path']!;

    final sourceDir = Directory(path.join(packagePath, 'doc', 'api'));
    final targetDir = Directory(path.join('doc', 'api', packageName));

    if (!sourceDir.existsSync()) {
      print(
        '   ⚠️  No API documentation found for $packageName (${sourceDir.path})',
      );
      continue;
    }

    print('   📋 Copying documentation for $packageName...');

    if (!dryRun) {
      if (targetDir.existsSync()) {
        await targetDir.delete(recursive: true);
      }
      await targetDir.create(recursive: true);

      // Copy all files from source to target
      await _copyDirectory(sourceDir, targetDir);
    }

    print('     ✓ $packageName documentation copied');
  }
}

Future<void> _copyDirectory(Directory source, Directory target) async {
  await for (final entity in source.list(recursive: false)) {
    final targetPath = path.join(target.path, path.basename(entity.path));

    if (entity is Directory) {
      final targetDir = Directory(targetPath);
      await targetDir.create();
      await _copyDirectory(entity, targetDir);
    } else if (entity is File) {
      await entity.copy(targetPath);
    }
  }
}

Future<void> _createNavigationFiles(bool dryRun) async {
  print('🔗 Creating navigation files...');

  // Create API index file
  final apiIndexContent = _generateApiIndexHtml();

  if (!dryRun) {
    final apiIndexFile = File('doc/api/index.html');
    await apiIndexFile.writeAsString(apiIndexContent);
  }

  print('   ✓ API navigation created');
}

Future<void> _copyAssets(bool dryRun) async {
  print('📁 Copying assets...');

  // Copy logo to doc directory
  final logoFile = File('logo.svg');
  if (logoFile.existsSync()) {
    if (!dryRun) {
      await logoFile.copy('doc/logo.svg');
    }
    print('   ✓ Logo copied');
  } else {
    print('   ⚠️  Logo not found');
  }
}

String _generateApiIndexHtml() {
  final buffer = StringBuffer();

  buffer.writeln('''
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>API Documentation - RDF Vocabularies for Dart</title>
    <style>
        body {
            font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, sans-serif;
            max-width: 800px;
            margin: 0 auto;
            padding: 20px;
            line-height: 1.6;
            color: #333;
        }
        .header {
            text-align: center;
            margin-bottom: 40px;
            padding-bottom: 20px;
            border-bottom: 2px solid #eee;
        }
        .package-list {
            display: grid;
            gap: 15px;
        }
        .package {
            border: 1px solid #ddd;
            border-radius: 8px;
            padding: 20px;
            background: #f9f9f9;
            transition: transform 0.2s;
        }
        .package:hover {
            transform: translateY(-2px);
            box-shadow: 0 4px 12px rgba(0,0,0,0.1);
        }
        .package h3 {
            margin-top: 0;
            color: #2c5aa0;
        }
        .package .description {
            color: #666;
            margin-bottom: 15px;
        }
        .package a {
            color: #2c5aa0;
            text-decoration: none;
            font-weight: 500;
        }
        .package a:hover {
            text-decoration: underline;
        }
        .back-link {
            text-align: center;
            margin: 40px 0;
        }
        .back-link a {
            color: #666;
            text-decoration: none;
        }
    </style>
</head>
<body>
    <div class="header">
        <h1>API Documentation</h1>
        <p>Choose a package to view its API documentation</p>
    </div>

    <div class="package-list">
''');

  for (final package in packagesWithDocs) {
    final packageName = package['name']!;
    final description = package['description']!;

    buffer.writeln('''
        <div class="package">
            <h3><a href="${packageName}/">${packageName}</a></h3>
            <div class="description">${description}</div>
            <a href="${packageName}/">View API Documentation →</a>
        </div>
''');
  }

  buffer.writeln('''
    </div>

    <div class="back-link">
        <a href="../">← Back to Documentation Home</a>
    </div>
</body>
</html>
''');

  return buffer.toString();
}

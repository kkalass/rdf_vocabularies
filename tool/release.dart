#!/usr/bin/env dart
// Copyright (c) 2025, Klas Kalaß <habbatical@gmail.com>
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

/// Wrapper script for release operations via all.dart
///
/// This delegates to the unified package manager to run release operations
/// across all packages in the workspace.
///
/// Usage: dart run tool/release.dart [args...]
library;

import 'dart:io';

Future<void> main(List<String> args) async {
  // Delegate to all.dart release command with all arguments passed through
  final process = Process.start('dart', [
    'run',
    'tool/all.dart',
    'release',
    ...args,
  ]);

  final processInstance = await process;

  // Forward stdout and stderr in real-time
  processInstance.stdout.listen((data) {
    stdout.add(data);
  });

  processInstance.stderr.listen((data) {
    stderr.add(data);
  });

  final exitCode = await processInstance.exitCode;
  exit(exitCode);
}

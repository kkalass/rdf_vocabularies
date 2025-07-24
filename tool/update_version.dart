#!/usr/bin/env dart
// Copyright (c) 2025, Klas Kalaß <habbatical@gmail.com>
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

/// Wrapper script for version updates via all.dart
///
/// This delegates to the unified package manager to run version updates
/// across all packages in the workspace.
///
/// Usage: dart run tool/update_version.dart [args...]
library;

import 'dart:io';

Future<void> main(List<String> args) async {
  // Delegate to all.dart update-version command with all arguments passed through
  final process = await Process.start('dart', [
    'run',
    'tool/all.dart',
    'update-version',
    ...args,
  ], mode: ProcessStartMode.inheritStdio);

  final exitCode = await process.exitCode;
  exit(exitCode);
}

#!/usr/bin/env dart
// Copyright (c) 2025, Klas Kalaß <habbatical@gmail.com>
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

/// Wrapper script for running individual package tests via all.dart
///
/// This delegates to the unified package manager to run individual package
/// tests across all packages in the workspace.
///
/// Usage: dart run tool/run_tests.dart [args...]
library;

import 'dart:io';

Future<void> main(List<String> args) async {
  // Delegate to all.dart run-tests command with all arguments passed through
  final process = await Process.start('dart', [
    'run',
    'tool/all.dart',
    'run-tests',
    ...args,
  ], mode: ProcessStartMode.inheritStdio);

  final exitCode = await process.exitCode;
  exit(exitCode);
}

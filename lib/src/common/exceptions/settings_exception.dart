/*
 * Copyright (C) Roman Rikhter <teledurak@gmail.com>, 2024
 * This program comes with ABSOLUTELY NO WARRANTY;
 * This is free software, and you are welcome to redistribute it under certain conditions;
 *
 * See /LICENSE for more details.
 */

import 'package:handygram/src/common/exceptions/handy.dart';

class SettingsException implements HandyException {
  final String message;

  @override
  String toString() => "SettingsException[] $message";

  const SettingsException(
    this.message,
  );
}

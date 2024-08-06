/*
 * Copyright (C) Roman Rikhter <teledurak@gmail.com>, 2024
 * This program comes with ABSOLUTELY NO WARRANTY;
 * This is free software, and you are welcome to redistribute it under certain conditions;
 *
 * See /LICENSE for more details.
 */

import 'dart:async';

import 'package:handygram/src/common/settings/setting.dart';

abstract interface class SettingsVersion {
  final List<Setting> introducedSettings = const [];
  final String codename = "unknown";
  final int version = -1;

  /// Migrate from [fromVersion] to this [version].
  FutureOr<void> migrate(int fromVersion);

  const SettingsVersion();
}

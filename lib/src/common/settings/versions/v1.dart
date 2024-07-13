/*
 * Copyright (C) Roman Rikhter <teledurak@gmail.com>, 2024
 * This program comes with ABSOLUTELY NO WARRANTY;
 * This is free software, and you are welcome to redistribute it under certain conditions;
 *
 * See /LICENSE for more details.
 */

import 'package:handygram/src/common/settings/entries.dart';
import 'package:handygram/src/common/settings/setting.dart';
import 'package:handygram/src/common/settings/version.dart';

class V1Settings implements SettingsVersion {
  @override
  final List<Setting> introducedSettings = const [
    SettingsEntries.textScale,
    SettingsEntries.uiScale,
    SettingsEntries.colorSchemeId,
    SettingsEntries.currentSetupStep,
    SettingsEntries.disablePFPs,
    SettingsEntries.isRoundScreen,
    SettingsEntries.enableNotifications,
    SettingsEntries.runInBackground,
    SettingsEntries.lastDatabaseId,
  ];

  @override
  final String codename = "Lynx";

  @override
  final int version = 1;

  const V1Settings();
}

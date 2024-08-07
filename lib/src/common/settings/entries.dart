/*
 * Copyright (C) Roman Rikhter <teledurak@gmail.com>, 2024
 * This program comes with ABSOLUTELY NO WARRANTY;
 * This is free software, and you are welcome to redistribute it under certain conditions;
 *
 * See /LICENSE for more details.
 */

import 'package:handygram/src/common/settings/setting.dart';

abstract final class SettingsEntries {
  /// Last DB ID. Used for bootstrap and currently selected account ID.
  static const lastDatabaseId = Setting<int>(
    id: "lastDatabaseId",
    defaultValue: 0,
  );

  /// Current font scale.
  static const textScale = Setting<double>(
    id: "textScale",
    defaultValue: 1.0,
  );

  /// Current UI scale.
  static const uiScale = Setting<double>(
    id: "uiScale",
    defaultValue: 1.0,
  );

  /// Current setup step:
  /// * 3: not entered setup yet
  /// * 2: watch shape
  /// * 1: color scheme
  /// * 0: important settings
  /// * -1: setup completed
  static const currentSetupStep = Setting<int>(
    id: "currentSetupStep",
    defaultValue: 3,
  );

  /// Color scheme ID
  static const colorSchemeId = Setting<int>(
    id: "colorSchemeId",
    defaultValue: 0,
  );

  /// User selected screen shape
  static const isRoundScreen = Setting<bool>(
    id: "isRoundScreen",
    defaultValue: null,
    nullable: true,
  );

  /// Enable notifications?
  static const enableNotifications = Setting<bool>(
    id: "enableNotifications",
    defaultValue: true,
  );

  /// Run in background periodically to parse updates
  static const runInBackground = Setting<bool>(
    id: "runInBackground",
    defaultValue: true,
  );

  /// Disable mini profile pictures in chats
  static const disableMicroAvatars = Setting<bool>(
    id: "disableMicroAvatars",
    defaultValue: false,
  );

  /// Disable profile pictures in chat lists
  static const disableProfileAvatars = Setting<bool>(
    id: "disableProfileAvatars",
    defaultValue: false,
  );

  /// Use infinite cacheExtent in ChatView's ListView
  /// SIGNIFICANTLY DECREASES PERFORMANCE
  static const useInfiniteCacheExtent = Setting<bool>(
    id: "useInfiniteCacheExtent",
    defaultValue: false,
  );

  /// Do not periodically cleanup messages in ChatView according to currently
  /// focused position in messages list
  /// SIGNIFICANTLY DECREASES PERFORMANCE WITH HIGH MESSAGE COUNT
  static const doNotCleanupMessages = Setting<bool>(
    id: "doNotCleanupMessages",
    defaultValue: false,
  );
}

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

  /// Disable profile pictures in chats
  static const disablePFPs = Setting<bool>(
    id: "disablePFPs",
    defaultValue: false,
  );
}

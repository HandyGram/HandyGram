import 'package:handygram/src/common/settings/entries.dart';
import 'package:handygram/src/common/settings/setting.dart';
import 'package:handygram/src/common/settings/version.dart';

class V1Settings implements SettingsVersion {
  @override
  final List<Setting> introducedSettings = const [
    SettingsEntries.textScale,
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

import 'package:handygram/src/common/settings/setting.dart';

abstract interface class SettingsVersion {
  final List<Setting> introducedSettings = const [];
  final String codename = "unknown";
  final int version = -1;

  const SettingsVersion();
}

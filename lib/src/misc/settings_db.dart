import 'package:handygram/src/misc/log.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

class SettingsStorage {
  late final Box _settingsBox;
  Map _raw = {};
  String? settingsLoadError;

  bool get isAsyncInvokes => _raw["isAsyncInvokes"] ?? false;
  set isAsyncInvokes(bool value) {
    _raw["isAsyncInvokes"] = value;
    _settingsBox.put("settings", _raw);
  }

  bool get prioritizeAllImages => _raw["prioritizeAllImages"] ?? false;
  set prioritizeAllImages(bool value) {
    _raw["prioritizeAllImages"] = value;
    _settingsBox.put("settings", _raw);
  }

  bool get backButtonDisabled => _raw["backButtonDisabled"] ?? false;
  set backButtonDisabled(bool value) {
    _raw["backButtonDisabled"] = value;
    _settingsBox.put("settings", _raw);
  }

  bool get debug => _raw["debug"] ?? false;
  set debug(bool value) {
    _raw["debug"] = value;
    _settingsBox.put("settings", _raw);
  }

  bool get verbose => _raw["verbose"] ?? false;
  set verbose(bool value) {
    _raw["verbose"] = value;
    _settingsBox.put("settings", _raw);
  }

  int get lastClientId => _raw["lastClientId"] ?? -1;
  set lastClientId(int value) {
    _raw["lastClientId"] = value;
    _settingsBox.put("settings", _raw);
  }

  Future<void> initialize() async {
    _settingsBox = await Hive.openBox<Map>(
      "handysettings",
      path: (await getApplicationDocumentsDirectory()).path,
    );
    try {
      _raw = Map.from(_settingsBox.get("settings") ?? {});
    } catch (e, st) {
      settingsLoadError = e.toString();
      l.e("SettingsDatabase", "$e\n$st");
      await _settingsBox.clear();
      _raw = Map.from(_settingsBox.get("settings") ?? {});
    }
  }
}

final SettingsStorage settingsStorage = SettingsStorage();

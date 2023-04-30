import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

class SettingsStorage {
  late final Box _settingsBox;
  Map<String, dynamic> _raw = {};

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

  Future<void> initialize() async {
    _settingsBox = await Hive.openBox<Map<String, dynamic>>(
      "handysettings",
      path: (await getApplicationDocumentsDirectory()).path,
    );
    try {
      _raw = Map<String, dynamic>.from(_settingsBox.get("settings") ?? {});
    } catch (_) {
      await _settingsBox.clear();
      _raw = Map<String, dynamic>.from(_settingsBox.get("settings") ?? {});
    }
  }
}

final SettingsStorage settingsStorage = SettingsStorage();

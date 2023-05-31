import 'package:handygram/src/misc/log.dart';
import 'package:handygram/src/misc/utils.dart';
import 'package:handygram/src/telegram/session.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

class SettingsStorage {
  late final Box _settingsBox;
  Map _raw = {};
  String? settingsLoadError;

  /*
   * TDLib
   */

  bool get isAsyncInvokes => _raw["isAsyncInvokes"] ?? false;
  set isAsyncInvokes(bool value) {
    _raw["isAsyncInvokes"] = value;
    _settingsBox.put("settings", _raw);
  }

  bool get isAsyncUpdates => _raw["isAsyncUpdates"] ?? false;
  set isAsyncUpdates(bool value) {
    _raw["isAsyncUpdates"] = value;
    _settingsBox.put("settings", _raw);
  }

  bool get prioritizeAllImages => _raw["prioritizeAllImages"] ?? false;
  set prioritizeAllImages(bool value) {
    _raw["prioritizeAllImages"] = value;
    _settingsBox.put("settings", _raw);
  }

  /*
   * UI
   */

  /// Disable navigation back button
  bool get backButtonDisabled => _raw["backButtonDisabled"] ?? false;
  set backButtonDisabled(bool value) {
    _raw["backButtonDisabled"] = value;
    _settingsBox.put("settings", _raw);
  }

  /// No profile photos nearby messages
  bool get noProfilePhotos => _raw["noProfilePhotos"] ?? false;
  set noProfilePhotos(bool value) {
    _raw["noProfilePhotos"] = value;
    _settingsBox.put("settings", _raw);
  }

  /// Small messages and other UI elements font
  double get textScale => _raw["textScale"] ?? 1.1;
  set textScale(double value) {
    _raw["textScale"] = value;
    _settingsBox.put("settings", _raw);
  }

  /// Enable clock over all pages
  bool get clockEnabled => _raw["clockEnabled"] ?? true;
  set clockEnabled(bool value) {
    _raw["clockEnabled"] = value;
    _settingsBox.put("settings", _raw);
  }

  /*
   * Developer
   */

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

  static const Map<int, Map<String, dynamic>> _defaultSettings = {
    // There were no settings before 0.3.0

    // 0.3.0
    300: {
      // TDLib
      "isAsyncInvokes": false,
      "prioritizeAllImages": false,

      // Developer
      "debug": false,
      "verbose": false,
    },

    // 0.4.0
    400: {
      // TDLib
      "isAsyncUpdates": false,

      // UI
      "backButtonDisabled": false,
      "noProfilePhotos": false,
      "textScale": 1.1,
      "clockEnabled": true,
    },
  };

  Future<void> _initializeBox(String prevVersion) async {
    int oldCode;
    (oldCode, _) = parseVersionCode(prevVersion);

    for (var entry in _defaultSettings.entries) {
      if (entry.key <= oldCode) continue;
      l.i("SettingsInitializer", "Adding all settings for ${entry.key}");
      _raw.addAll(entry.value);
    }

    await _settingsBox.put("version", {"lastUpdated": TgSession.appVersion});
    await _settingsBox.put("settings", _raw);
  }

  Future<void> _selfCheck() async {
    Map prev = _settingsBox.get(
      "version",
      defaultValue: {"lastUpdated": "0.0.0"},
    );
    if (prev["lastUpdated"] != TgSession.appVersion) {
      await _initializeBox(prev["lastUpdated"]);
    }
  }

  int lastClientId = -1;

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

    await _selfCheck();
  }
}

final SettingsStorage settingsStorage = SettingsStorage();

/*
 * Copyright (C) Roman Rikhter <teledurak@gmail.com>, 2024
 * This program comes with ABSOLUTELY NO WARRANTY;
 * This is free software, and you are welcome to redistribute it under certain conditions;
 *
 * See /LICENSE for more details.
 */

import 'package:handygram/src/common/exceptions/settings_exception.dart';
import 'package:handygram/src/common/log/log.dart';
import 'package:handygram/src/common/settings/setting.dart';
import 'package:handygram/src/common/settings/version.dart';
import 'package:handygram/src/common/settings/versions/v1.dart';
import 'package:hive/hive.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

/// How to use Settings?
///
/// 1) Initialize them with Settings.start() in main()
/// 2) All available entries are located in Settings().entries
/// 3) Get entry with Settings().get(entry)
/// 4) Put entry with Settings().put(entry, value)
class Settings {
  late final Box _box;
  static const List<SettingsVersion> _dbVersions = [
    V1Settings(),
  ];
  late final String currentCodename = _dbVersions.last.codename;
  late final int currentVersion = _dbVersions.last.version;

  void put<T>(Setting? s, T? value) {
    if (s is! Setting<T>) {
      throw SettingsException("${s.runtimeType} != Setting<$T>");
    }

    if (value == null && !s.nullable) {
      throw SettingsException("${s.id} is not nullable");
    }

    _box.put(s.id, value);
  }

  T get<T>(Setting? s) {
    if (s is! Setting<T>) {
      throw SettingsException("${s.runtimeType} != Setting<$T>");
    }

    var val = _box.get(s.id, defaultValue: s.defaultValue);
    if (val is! T || (!s.nullable && val == null)) {
      l.e("Settings", "${s.id} is not a $T. Returning default value");
      val = s.defaultValue;
    }
    return val;
  }

  Future<void> _start() async {
    final asd = await getApplicationSupportDirectory();
    _box = await Hive.openBox<dynamic>(
      "HandyGramSettings",
      path: p.join(asd.path, "settings.db"),
    );
  }

  static Future<Settings> start() async {
    final s = Settings._();
    await s._start();
    _instance = s;
    return s;
  }

  Settings._();

  static Settings? _instance;

  factory Settings() {
    if (_instance == null) {
      throw const SettingsException("Not ready yet");
    }
    return _instance!;
  }
}

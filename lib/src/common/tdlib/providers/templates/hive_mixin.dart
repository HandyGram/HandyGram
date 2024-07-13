/*
 * Copyright (C) Roman Rikhter <teledurak@gmail.com>, 2024
 * This program comes with ABSOLUTELY NO WARRANTY;
 * This is free software, and you are welcome to redistribute it under certain conditions;
 *
 * See /LICENSE for more details.
 */

import 'package:flutter/foundation.dart';
import 'package:handygram/src/common/tdlib/client/structures/base_provider.dart';
import 'package:handygram/src/common/tdlib/client/structures/tdlib_toolbox.dart';
import 'package:hive/hive.dart';
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart';

mixin PersistentStateMixin on TdlibDataProvider {
  late final Box<Map> _hiveBox;

  String get databaseEntry;

  static Future<Box<Map>> _openBox() async {
    final support = (await getApplicationSupportDirectory()).path;
    return Hive.openBox<Map>(
      "TDLibPersistentStates",
      path: path.join(support, "state.db"),
    );
  }

  @override
  @mustCallSuper
  Future<void> attach(TdlibToolbox toolbox) async {
    super.attach(toolbox);
    _hiveBox = await _openBox();
  }

  @protected
  Future<void> save(Map data) async {
    await _hiveBox.put(databaseEntry, data);
    return _hiveBox.flush();
  }

  @protected
  Future<Map> restore([Map? defaultValue]) {
    return restoreStatic(databaseEntry);
  }

  static Future<Map> restoreStatic(
    String databaseEntry, [
    Map? defaultValue,
  ]) async {
    final hiveBox = await _openBox();
    final data = hiveBox.get(databaseEntry, defaultValue: defaultValue ?? {});
    if (data is! Map) return defaultValue ?? {};
    return data;
  }
}

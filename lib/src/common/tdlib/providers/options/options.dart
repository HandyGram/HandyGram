/*
 * Copyright (C) Roman Rikhter <teledurak@gmail.com>, 2024
 * This program comes with ABSOLUTELY NO WARRANTY;
 * This is free software, and you are welcome to redistribute it under certain conditions;
 *
 * See /LICENSE for more details.
 */

import 'dart:async';

import 'package:handy_tdlib/api.dart' as td;
import 'package:handygram/src/common/log/log.dart';
import 'package:handygram/src/common/tdlib/providers/templates/events_provider.dart';

class OptionsProvider extends TdlibDataEventsProvider {
  static const String tag = "OptionsProvider";

  final Map<String, dynamic> _options = {};
  Map<String, dynamic> get cached => _options;

  Future<dynamic> getMaybeCached(String name) async =>
      cached[name] ?? get(name);

  Future<dynamic> get(String name) async {
    final value = await box.invoke(td.GetOption(name: name));
    if (value is! td.OptionValue) return null;
    _addOption(name, value);
    return cached[name];
  }

  Future<void> set(String name, dynamic value) async {
    final result = await box.invoke(
      td.SetOption(
        name: name,
        value: switch (value) {
          num() => td.OptionValueInteger(value: value.toInt()),
          String() => td.OptionValueString(value: value.toString()),
          bool() => td.OptionValueBoolean(value: value == true),
          _ => const td.OptionValueEmpty(),
        },
      ),
    );
    if (result is td.TdError) {
      l.e(
        tag,
        "Failed to set $name to $value: ${result.message}",
      );
    }
  }

  void _addOption(String name, td.OptionValue value) {
    _options[name] = switch (value) {
      td.OptionValueBoolean(value: final value) => value,
      td.OptionValueString(value: final value) => value,
      td.OptionValueInteger(value: final value) => value,
      td.OptionValueEmpty() => null,
    };
    notifyListeners();
  }

  @override
  void updatesListener(td.TdObject update) {
    if (update is! td.UpdateOption) return;
    _addOption(update.name, update.value);
  }
}

/*
 * Copyright (C) Roman Rikhter <teledurak@gmail.com>, 2024
 * This program comes with ABSOLUTELY NO WARRANTY;
 * This is free software, and you are welcome to redistribute it under certain conditions;
 *
 * See /LICENSE for more details.
 */

class Setting<T> {
  /// Setting id in database
  final String id;

  /// Default value
  final T? defaultValue;

  /// If set, there'd be only a list of available values of this setting.
  /// User won't be able to set any other value then a one from this list.
  ///
  /// If this is a hidden setting, this value will block setting all values
  /// but ones from it.
  final List<T>? availableValues;

  /// Is value nullable?
  final bool nullable;

  const Setting({
    required this.id,
    required this.defaultValue,
    this.availableValues,
    this.nullable = false,
  }) : assert(nullable || defaultValue != null);
}

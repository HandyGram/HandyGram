/*
 * Copyright (C) Roman Rikhter <teledurak@gmail.com>, 2024
 * This program comes with ABSOLUTELY NO WARRANTY;
 * This is free software, and you are welcome to redistribute it under certain conditions;
 *
 * See /LICENSE for more details.
 */

import 'package:flutter/material.dart';
import 'package:handy_tdlib/api.dart';

/// Provides currently opened td.Message object
class MessageInfo extends InheritedWidget {
  const MessageInfo({
    super.key,
    required this.info,
    required super.child,
  });

  final Message? info;

  static MessageInfo? maybeOf(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<MessageInfo>();
  }

  static MessageInfo of(BuildContext context) {
    final MessageInfo? result = maybeOf(context);
    assert(result != null, 'No MessageInfo found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(MessageInfo oldWidget) {
    return oldWidget.info != info;
  }
}

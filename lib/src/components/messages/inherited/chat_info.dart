/*
 * Copyright (C) Roman Rikhter <teledurak@gmail.com>, 2024
 * This program comes with ABSOLUTELY NO WARRANTY;
 * This is free software, and you are welcome to redistribute it under certain conditions;
 *
 * See /LICENSE for more details.
 */

import 'package:flutter/material.dart';
import 'package:handy_tdlib/api.dart';

/// Provides currently opened td.Chat object
class ChatInfo extends InheritedWidget {
  const ChatInfo({
    super.key,
    required this.info,
    required super.child,
  });

  final Chat? info;

  static ChatInfo? maybeOf(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<ChatInfo>();
  }

  static ChatInfo of(BuildContext context) {
    final ChatInfo? result = maybeOf(context);
    assert(result != null, 'No ChatInfo found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(ChatInfo oldWidget) {
    return oldWidget.info != info;
  }
}

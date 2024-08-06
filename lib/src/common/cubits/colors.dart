/*
 * Copyright (C) Roman Rikhter <teledurak@gmail.com>, 2024
 * This program comes with ABSOLUTELY NO WARRANTY;
 * This is free software, and you are welcome to redistribute it under certain conditions;
 *
 * See /LICENSE for more details.
 */

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:handygram/src/common/exceptions/ui_exception.dart';
import 'package:handygram/src/common/misc/colors.dart';

class ChatColor {
  final Color usernameColor;
  final Color boxColor;

  const ChatColor({
    required this.usernameColor,
    required this.boxColor,
  });
}

// https://core.telegram.org/bots/api#accent-colors
abstract final class BasicChatColorIds {
  static const int red = 0;
  static const int orange = 1;
  static const int purple = 2;
  static const int green = 3;
  static const int cyan = 4;
  static const int blue = 5;
  static const int pink = 6;
}

abstract final class ColorSchemeIds {
  static const int purple = 0;
  static const int blue = 1;
  static const int teal = 2;
}

class ColorStyles extends Cubit<ColorScheme> {
  static const String tag = "ColorStyles";

  static const Color lightGrey = Color(0xFF767676);
  static const Color grey = Color(0xFF393939);

  static final Map<int, ChatColor> basicChatColors = {
    BasicChatColorIds.red: ChatColor(
      usernameColor: HColor.fromHRGBO(0xDD4442),
      boxColor: HColor.fromHRGBO(0xA62233, 0.2),
    ),
    BasicChatColorIds.orange: ChatColor(
      usernameColor: HColor.fromHRGBO(0xE57100),
      boxColor: HColor.fromHRGBO(0xD24E00, 0.2),
    ),
    BasicChatColorIds.purple: ChatColor(
      usernameColor: HColor.fromHRGBO(0x9E59E2),
      boxColor: HColor.fromHRGBO(0x652DD0, 0.2),
    ),
    BasicChatColorIds.green: ChatColor(
      usernameColor: HColor.fromHRGBO(0x00AC00),
      boxColor: HColor.fromHRGBO(0x00801D, 0.2),
    ),
    BasicChatColorIds.cyan: ChatColor(
      usernameColor: HColor.fromHRGBO(0x00A0BE),
      boxColor: HColor.fromHRGBO(0x005E82, 0.2),
    ),
    BasicChatColorIds.blue: ChatColor(
      usernameColor: HColor.fromHRGBO(0x008BD7),
      boxColor: HColor.fromHRGBO(0x005699, 0.2),
    ),
    BasicChatColorIds.pink: ChatColor(
      usernameColor: HColor.fromHRGBO(0xD7468D),
      boxColor: HColor.fromHRGBO(0x9A2E70, 0.2),
    ),
  };

  int _schemeChatColorId = BasicChatColorIds.purple;
  ChatColor get defaultChatColor => basicChatColors[_schemeChatColorId]!;

  static ColorScheme _handyColorScheme({
    required final Color primary,
    required final Color onPrimary,
    required final Color onSurfaceVariant,
    required final Color secondary,
  }) =>
      ColorScheme.dark(
        primary: primary,
        onPrimary: onPrimary,
        surface: const Color(0xFF202124),
        onSurface: Colors.white,
        onSurfaceVariant: onSurfaceVariant,
        secondary: secondary,
        error: const Color(0xFF601410),
        onError: const Color(0xFFF2B8B5),
      );

  static final ColorScheme purpleScheme = _handyColorScheme(
    primary: HColor.fromHRGBO(0xEADDFF),
    onPrimary: HColor.fromHRGBO(0x381E72),
    onSurfaceVariant: HColor.fromHRGBO(0x676270),
    secondary: HColor.fromHRGBO(0xCAC4D0),
  );

  static final ColorScheme blueScheme = _handyColorScheme(
    primary: HColor.fromHRGBO(0xC1E8FF),
    onPrimary: HColor.fromHRGBO(0x003548),
    onSurfaceVariant: HColor.fromHRGBO(0x586670),
    secondary: HColor.fromHRGBO(0xB7BDC8),
  );

  static final ColorScheme tealScheme = _handyColorScheme(
    primary: HColor.fromHRGBO(0xBDECE0),
    onPrimary: HColor.fromHRGBO(0x04372F),
    onSurfaceVariant: HColor.fromHRGBO(0x576765),
    secondary: HColor.fromHRGBO(0xFB7C8BE),
  );

  static final ColorScheme defaultScheme = purpleScheme;

  static final List<ColorScheme> accentColors = [
    purpleScheme,
    blueScheme,
    tealScheme,
  ];

  static ColorScheme get active => instance.state;

  set accentColor(int id) {
    if (accentColors.length <= id || id < 0) {
      throw const HandyUiException(tag, "Invalid color scheme ID");
    }
    _schemeChatColorId = switch (id) {
      ColorSchemeIds.blue => BasicChatColorIds.blue,
      ColorSchemeIds.purple => BasicChatColorIds.purple,
      ColorSchemeIds.teal => BasicChatColorIds.green,
      _ => BasicChatColorIds.red,
    };
    emit(accentColors[id]);
  }

  ColorStyles._() : super(defaultScheme);
  static ColorStyles instance = ColorStyles._();
  factory ColorStyles() => instance;
}

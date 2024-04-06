import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:handygram/src/common/exceptions/ui_exception.dart';

class ColorStyles extends Cubit<ColorScheme> {
  static const String tag = "ColorStyles";

  static const Color lightGrey = Color(0xFF767676);
  static const Color grey = Color(0xFF393939);

  static ColorScheme _handyColorScheme({
    required final Color primary,
    required final Color onPrimary,
    required final Color onSurfaceVariant,
    required final Color secondary,
  }) =>
      ColorScheme.dark(
        background: Colors.black,
        onBackground: Colors.white,
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
    primary: const Color(0xFFEADDFF),
    onPrimary: const Color(0xFF381E72),
    onSurfaceVariant: const Color(0xFF676270),
    secondary: const Color(0xFFCAC4D0),
  );

  static final ColorScheme blueScheme = _handyColorScheme(
    primary: const Color(0xFFC1E8FF),
    onPrimary: const Color(0xFF003548),
    onSurfaceVariant: const Color(0xFF586670),
    secondary: const Color(0xFFB7BDC8),
  );

  static final ColorScheme greenScheme = _handyColorScheme(
    primary: const Color(0xFFBDECE0),
    onPrimary: const Color(0xFF04372F),
    onSurfaceVariant: const Color(0xFF576765),
    secondary: const Color(0xFFB7C8BE),
  );

  static final ColorScheme defaultScheme = purpleScheme;
  static final List<ColorScheme> accentColors = [
    defaultScheme,
    blueScheme,
    greenScheme,
  ];

  static ColorScheme get active => instance.state;

  set accentColor(int id) {
    if (accentColors.length <= id || id < 0) {
      throw const HandyUiException(tag, "Invalid color scheme ID");
    }
    emit(accentColors[id]);
  }

  ColorStyles._() : super(defaultScheme);
  static ColorStyles instance = ColorStyles._();
  factory ColorStyles() => instance;
}

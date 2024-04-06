import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:handygram/src/common/settings/entries.dart';
import 'package:handygram/src/common/settings/manager.dart';

class TextStyles extends Cubit<TextTheme> {
  TextStyles._() : super(_calculate(1));

  double _scale = 1;

  set scale(double value) {
    Settings().put(SettingsEntries.textScale, value);
    _scale = value;
    emit(_calculate(scale));
  }

  double get scale => _scale;
  static TextTheme get active => instance.state;

  static const double _letterSpacing = 0;

  // WearOS typography adapted to MD3 (used as fallback)
  static TextTheme _calculate(final double scale) => TextTheme(
        displayLarge: TextStyle(
          fontFamily: "Roboto",
          fontWeight: FontWeight.w500,
          fontSize: 50 * scale,
          height: 1.12,
          letterSpacing: _letterSpacing,
        ),
        displayMedium: TextStyle(
          fontFamily: "Roboto",
          fontWeight: FontWeight.w500,
          fontSize: 40 * scale,
          height: 1.15,
          letterSpacing: _letterSpacing,
        ),
        displaySmall: TextStyle(
          fontFamily: "Roboto",
          fontWeight: FontWeight.w500,
          fontSize: 30 * scale,
          height: 1.2,
          letterSpacing: _letterSpacing,
        ),
        titleLarge: TextStyle(
          fontFamily: "Roboto",
          fontWeight: FontWeight.w500,
          fontSize: 18.1 * scale,
          height: 1.17,
          letterSpacing: _letterSpacing,
        ),
        titleMedium: TextStyle(
          fontFamily: "Roboto",
          fontWeight: FontWeight.w700,
          fontSize: 16.55 * scale,
          height: 1.23,
          letterSpacing: _letterSpacing,
        ),
        titleSmall: TextStyle(
          fontFamily: "Roboto",
          fontWeight: FontWeight.w500,
          fontSize: 16.55 * scale,
          height: 1.29,
          letterSpacing: _letterSpacing,
        ),
        bodyLarge: TextStyle(
          fontFamily: "Roboto",
          fontWeight: FontWeight.w500,
          fontSize: 18 * scale,
          height: 1.25,
          letterSpacing: _letterSpacing,
        ),
        bodyMedium: TextStyle(
          fontFamily: "Roboto",
          fontWeight: FontWeight.w500,
          fontSize: 14 * scale,
          height: 1.29,
          letterSpacing: _letterSpacing,
        ),
        bodySmall: TextStyle(
          fontFamily: "Roboto",
          fontWeight: FontWeight.w500,
          fontSize: 12 * scale,
          height: 1.29,
          letterSpacing: _letterSpacing,
        ),
        labelLarge: TextStyle(
          fontFamily: "Roboto",
          fontWeight: FontWeight.w700,
          fontSize: 14.2 * scale,
          height: 1.25,
          letterSpacing: _letterSpacing,
        ),
        labelMedium: TextStyle(
          fontFamily: "Roboto",
          fontWeight: FontWeight.w500,
          fontSize: 11.8 * scale,
          height: 1.29,
          letterSpacing: _letterSpacing,
        ),
        labelSmall: TextStyle(
          fontFamily: "Roboto",
          fontWeight: FontWeight.w500,
          fontSize: 11 * scale,
          height: 1.29,
          letterSpacing: _letterSpacing,
        ),
      );

  static TextStyles instance = TextStyles._();
  factory TextStyles() => instance;
}

import 'package:flutter/material.dart';

class HColor extends Color {
  const HColor(super.value);

  /// Color from Hex RGB + Opacity
  factory HColor.fromHRGBO(
    int rgb, [
    double opacity = 1,
  ]) =>
      HColor(rgb | (opacity * 0xFF).round() << 24);
}

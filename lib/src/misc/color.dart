import 'package:flutter/material.dart';

class HColor extends Color {
  const HColor(int r, int g, int b) : super.fromARGB(0, r, g, b);
  HColor.blend(
    Color color, [
    Color background = Colors.black,
  ]) : super(
          Color.alphaBlend(color, background).value,
        );
}

class HandyColors {
  static const Color bg = HColor(0, 0, 0);
  static const Color textOnBg = HColor(0, 0, 0);
}

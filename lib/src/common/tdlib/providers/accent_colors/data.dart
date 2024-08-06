import 'package:flutter/material.dart';
import 'package:handy_tdlib/api.dart' as td;
import 'package:handygram/src/common/cubits/colors.dart';

class AccentColor {
  final List<Color> colorsLight;
  final List<Color> colorsDark;

  factory AccentColor.fromTd({
    required List<int> colorsLightRGB,
    required List<int> colorsDarkRGB,
  }) =>
      AccentColor(
        colorsDark: colorsDarkRGB.map((e) => Color(e | 0xFF << 24)).toList(),
        colorsLight: colorsLightRGB.map((e) => Color(e | 0xFF << 24)).toList(),
      );

  const AccentColor({
    required this.colorsLight,
    required this.colorsDark,
  });
}

class AccentColors {
  final Map<int, AccentColor> colors;
  final Map<int, int> basicColors;
  final List<int> availableAccentColorIds;

  int convertAdvancedToBasic(int advancedId) {
    // 0 - 6 are basic IDs
    if (advancedId < 7) return advancedId;
    return basicColors[advancedId] ?? BasicChatColorIds.red;
  }

  factory AccentColors.fromTd({
    required List<int> availableAccentColorIds,
    required List<td.AccentColor> accentColors,
  }) =>
      AccentColors(
        availableAccentColorIds: availableAccentColorIds,
        basicColors: Map.fromIterables(
          accentColors.map((e) => e.id),
          accentColors.map((e) => e.builtInAccentColorId),
        ),
        colors: Map.fromIterables(
          accentColors.map((e) => e.id),
          accentColors.map((e) => AccentColor.fromTd(
                colorsDarkRGB: e.darkThemeColors,
                colorsLightRGB: e.lightThemeColors,
              )),
        ),
      );

  const AccentColors({
    required this.colors,
    required this.basicColors,
    required this.availableAccentColorIds,
  });
}

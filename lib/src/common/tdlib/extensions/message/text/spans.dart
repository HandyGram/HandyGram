/*
 * Copyright (C) Roman Rikhter <teledurak@gmail.com>, 2024
 * This program comes with ABSOLUTELY NO WARRANTY;
 * This is free software, and you are welcome to redistribute it under certain conditions;
 *
 * See /LICENSE for more details.
 */

import 'package:flutter/material.dart';

typedef IconTextStyle = ({
  TextStyle style,
  Color color,
  double size,
});

InlineSpan iconWithTextSpan(
  String text,
  IconData icon,
  IconTextStyle style, {
  TextSpan? authorSpan,
  Widget? iconWidget,
  InlineSpan? iconSpan,
}) {
  return TextSpan(children: [
    if (authorSpan != null) authorSpan,
    iconSpan ??
        WidgetSpan(
          alignment: PlaceholderAlignment.middle,
          child: iconWidget ??
              Icon(
                icon,
                color: style.color,
                size: style.size,
              ),
        ),
    const WidgetSpan(child: SizedBox(width: 4)),
    TextSpan(
      text: text,
      style: style.style,
    ),
  ]);
}

InlineSpan spanOrTextSpan(
  String text,
  InlineSpan? span,
  IconTextStyle style, [
  TextSpan? authorSpan,
]) {
  return TextSpan(children: [
    if (authorSpan != null) authorSpan,
    span ??
        TextSpan(
          text: text,
          style: style.style,
        ),
  ]);
}

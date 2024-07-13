/*
 * Copyright (C) Roman Rikhter <teledurak@gmail.com>, 2024
 * This program comes with ABSOLUTELY NO WARRANTY;
 * This is free software, and you are welcome to redistribute it under certain conditions;
 *
 * See /LICENSE for more details.
 */

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:handy_tdlib/api.dart';
import 'package:handygram/src/common/cubits/colors.dart';
import 'package:handygram/src/common/cubits/scaling.dart';

extension MinithumbnailSpan on Minithumbnail {
  Widget asWidget(double size, [double? radius]) => ClipRRect(
        borderRadius: BorderRadius.circular(radius ?? 3 * Scaling.factor),
        child: Container(
          height: size,
          width: size,
          color: ColorStyles.active.onSurfaceVariant,
          child: Image.memory(
            height: size,
            width: size,
            fit: BoxFit.cover,
            base64Decode(data),
          ),
        ),
      );

  WidgetSpan asSpan(double size, [double? radius]) {
    return WidgetSpan(
      alignment: PlaceholderAlignment.middle,
      child: asWidget(size, radius),
    );
  }
}

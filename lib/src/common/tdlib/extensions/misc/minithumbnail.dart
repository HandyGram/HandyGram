import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:handy_tdlib/api.dart';
import 'package:handygram/src/common/cubits/colors.dart';

extension MinithumbnailSpan on Minithumbnail {
  InlineSpan getSpan(double size, [double? radius]) {
    return WidgetSpan(
      alignment: PlaceholderAlignment.middle,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(radius ?? 3),
        child: Container(
          height: size,
          width: size,
          color: ColorStyles.active.onSurfaceVariant,
          child: Image.memory(
            height: size,
            width: size,
            base64Decode(data),
          ),
        ),
      ),
    );
  }
}

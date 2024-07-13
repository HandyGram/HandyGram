/*
 * Copyright (C) Roman Rikhter <teledurak@gmail.com>, 2024
 * This program comes with ABSOLUTELY NO WARRANTY;
 * This is free software, and you are welcome to redistribute it under certain conditions;
 *
 * See /LICENSE for more details.
 */

import 'package:flutter/material.dart';
import 'package:handygram/src/common/cubits/scaling.dart';
import 'package:handygram/src/common/cubits/text.dart';

class PageHeader extends StatelessWidget {
  const PageHeader({
    super.key,
    required this.title,
    this.topPadding,
    this.boxSize,
  });

  final String title;
  final double? topPadding, boxSize;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: topPadding ?? 17 * Scaling.factor,
        left: 22 * Scaling.factor,
        right: 22 * Scaling.factor,
      ),
      child: SizedBox(
        height: boxSize ?? 65 * Scaling.factor,
        child: Center(
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyles.active.titleMedium!,
          ),
        ),
      ),
    );
  }
}

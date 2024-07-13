/*
 * Copyright (C) Roman Rikhter <teledurak@gmail.com>, 2024
 * This program comes with ABSOLUTELY NO WARRANTY;
 * This is free software, and you are welcome to redistribute it under certain conditions;
 *
 * See /LICENSE for more details.
 */

import 'package:flutter/material.dart';
import 'package:handygram/src/common/cubits/colors.dart';
import 'package:handygram/src/common/cubits/scaling.dart';
import 'package:handygram/src/components/scaled_sizes.dart';

class HandyCheckbox extends StatelessWidget {
  const HandyCheckbox({
    super.key,
    required this.value,
    required this.onChanged,
    this.onBodyTap,
    this.onLongPress,
    this.text,
    this.circle = false,
    this.useSwitch = false,
  }) : assert((circle || useSwitch) ? (circle ^ useSwitch) : true);

  final bool value;
  final bool circle, useSwitch;
  final Widget? text;
  final void Function()? onBodyTap;
  final void Function(bool)? onChanged;
  final void Function()? onLongPress;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        minHeight: Sizes.tilesHeight,
      ),
      child: AnimatedContainer(
        width: Sizes.tilesWidth,
        duration: const Duration(milliseconds: 150),
        curve: Curves.easeInOut,
        padding: EdgeInsets.symmetric(
          horizontal: Paddings.tilesHorizontalPadding,
          vertical: 5 * Scaling.factor,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadii.tilesRadius,
          gradient: LinearGradient(
            colors: [
              ColorStyles.active.surface,
              value
                  ? ColorStyles.active.onSurfaceVariant
                  : ColorStyles.active.surface,
            ],
          ),
        ),
        child: Center(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: onBodyTap ??
                      (onChanged == null ? null : () => onChanged!(!value)),
                  onLongPress: onLongPress,
                  behavior: HitTestBehavior.opaque,
                  child: text,
                ),
              ),
              GestureDetector(
                onTap: onChanged == null ? null : () => onChanged!(!value),
                onLongPress: onLongPress,
                behavior: HitTestBehavior.opaque,
                child: Row(
                  children: [
                    Container(width: 8 * Scaling.factor),
                    Center(
                      child: (!useSwitch)
                          ? AnimatedContainer(
                              width: 24 * Scaling.factor,
                              height: 24 * Scaling.factor,
                              duration: const Duration(milliseconds: 200),
                              curve: Curves.easeInOut,
                              decoration: BoxDecoration(
                                borderRadius: circle
                                    ? BorderRadius.circular(12 * Scaling.factor)
                                    : BorderRadius.circular(6 * Scaling.factor),
                                color: value
                                    ? ColorStyles.active.primary
                                    : ColorStyles.active.onSurfaceVariant,
                              ),
                              child: Checkbox(
                                side: BorderSide.none,
                                fillColor: const WidgetStatePropertyAll(
                                    Colors.transparent),
                                overlayColor: const WidgetStatePropertyAll(
                                    Colors.transparent),
                                value: value,
                                materialTapTargetSize:
                                    MaterialTapTargetSize.shrinkWrap,
                                onChanged: null,
                              ),
                            )
                          : Transform.scale(
                              scale: 0.8 * Scaling.factor,
                              child: SizedBox(
                                width: 44,
                                height: 20,
                                child: Switch(
                                  value: value,
                                  onChanged: onChanged,
                                  materialTapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                ),
                              ),
                            ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

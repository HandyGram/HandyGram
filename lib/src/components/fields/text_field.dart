/*
 * Copyright (C) Roman Rikhter <teledurak@gmail.com>, 2024
 * This program comes with ABSOLUTELY NO WARRANTY;
 * This is free software, and you are welcome to redistribute it under certain conditions;
 *
 * See /LICENSE for more details.
 */

import 'package:flutter/material.dart';
import 'package:handygram/src/common/cubits/colors.dart';
import 'package:handygram/src/common/cubits/text.dart';
import 'package:handygram/src/components/scaled_sizes.dart';

class HandyTextField extends StatelessWidget {
  const HandyTextField({
    super.key,
    required this.controller,
    this.autocorrect = true,
    this.obscureText = false,
    this.focusNode,
    this.enabled = true,
    this.title,
  });

  final TextEditingController controller;
  final bool autocorrect, obscureText, enabled;
  final FocusNode? focusNode;
  final String? title;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: controller,
      builder: (context, _) => ConstrainedBox(
        constraints: BoxConstraints(
          minHeight: Sizes.tilesHeight,
        ),
        child: Container(
          width: Sizes.tilesWidth,
          decoration: BoxDecoration(
            color: ColorStyles.active.surface,
            borderRadius: BorderRadii.tilesRadius,
          ),
          padding: EdgeInsets.symmetric(
            horizontal: Paddings.tilesHorizontalPadding,
            vertical: Paddings.tilesVerticalPadding,
          ),
          child: AnimatedBuilder(
            animation: controller,
            builder: (context, _) => Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              key: ValueKey<String>("${title ?? "null"} field column"),
              children: [
                if (controller.text.isNotEmpty && title != null)
                  Text(
                    title!,
                    style: TextStyles.active.labelLarge!.copyWith(
                      fontWeight: FontWeight.w500,
                      color: ColorStyles.active.secondary,
                    ),
                    key: ValueKey<String>("${title ?? "null"} field title"),
                  ),
                TextField(
                  controller: controller,
                  style: TextStyles.active.titleSmall,
                  autocorrect: autocorrect,
                  obscureText: obscureText,
                  focusNode: focusNode,
                  enabled: enabled,
                  cursorRadius: const Radius.circular(1),
                  scrollPadding: EdgeInsets.zero,
                  decoration: InputDecoration(
                    isCollapsed: true,
                    border: InputBorder.none,
                    hintText: title,
                    hintStyle: TextStyles.active.titleSmall!.copyWith(
                      color: ColorStyles.active.onSurfaceVariant,
                    ),
                  ),
                  textAlignVertical: TextAlignVertical.bottom,
                  key: ValueKey<String>("${title ?? "null"} field"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

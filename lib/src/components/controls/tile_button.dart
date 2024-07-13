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
import 'package:handygram/src/common/cubits/text.dart';
import 'package:handygram/src/components/scaled_sizes.dart';

class TileButton extends StatelessWidget {
  const TileButton({
    super.key,
    this.text,
    this.icon,
    this.big = true,
    this.colorful = true,
    this.gradient = false,
    this.onTap,
    this.onDoubleTap,
    this.onLongPress,
  }) : assert(icon != null || text != null);

  final String? text;
  final Widget? icon;
  final bool big;
  final bool colorful;
  final bool gradient;

  final void Function()? onTap;
  final void Function()? onLongPress;
  final void Function()? onDoubleTap;

  @override
  Widget build(BuildContext context) {
    final textW = Text(
      text ?? "",
      style:
          (big ? TextStyles.active.titleMedium : TextStyles.active.titleSmall)!
              .copyWith(
        color: (colorful && onTap != null)
            ? ColorStyles.active.onPrimary
            : onTap != null
                ? Colors.white
                : Colors.grey,
      ),
      textAlign: icon == null ? TextAlign.center : TextAlign.left,
      maxLines: 2,
      overflow: TextOverflow.fade,
    );

    final onlyIcon = icon != null && text == null;

    return ConstrainedBox(
      constraints: BoxConstraints(
        minHeight: big ? Sizes.tilesHeight : 0,
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadii.tilesRadius,
          onTap: onTap,
          onLongPress: onLongPress,
          onDoubleTap: onDoubleTap,
          splashColor: (colorful
                  ? ColorStyles.active.onPrimary
                  : ColorStyles.active.onSurface)
              .withOpacity(0.1),
          highlightColor: (colorful
                  ? ColorStyles.active.onPrimary
                  : ColorStyles.active.onSurface)
              .withOpacity(0.1),
          child: Ink(
            height: onlyIcon ? Sizes.tilesHeight : null,
            width: big
                ? Sizes.tilesWidth
                : onlyIcon
                    ? Sizes.tilesHeight
                    : null,
            decoration: BoxDecoration(
              borderRadius: BorderRadii.tilesRadius,
              color: gradient
                  ? null
                  : (colorful && onTap != null)
                      ? ColorStyles.active.primary
                      : ColorStyles.active.surface,
              gradient: gradient
                  ? LinearGradient(
                      colors: [
                        ColorStyles.active.surface,
                        ColorStyles.active.onSurfaceVariant,
                      ],
                    )
                  : null,
            ),
            padding: onlyIcon
                ? EdgeInsets.zero
                : EdgeInsets.symmetric(
                    horizontal: big
                        ? Paddings.tilesHorizontalPadding
                        : 22 * Scaling.factor,
                    vertical: Paddings.tilesVerticalPadding,
                  ),
            child: onlyIcon
                ? Center(child: icon)
                : Row(
                    mainAxisSize: big ? MainAxisSize.max : MainAxisSize.min,
                    children: [
                      if (icon != null) ...[
                        IconTheme(
                          data: Theme.of(context).iconTheme.copyWith(
                                color: onTap != null
                                    ? colorful
                                        ? ColorStyles.active.onPrimary
                                        : ColorStyles.active.onSurface
                                    : ColorStyles.active.onSurfaceVariant,
                              ),
                          child: icon!,
                        ),
                        if (text != null) SizedBox(width: 8 * Scaling.factor),
                      ],
                      if (text != null)
                        if (big) Expanded(child: textW) else textW,
                    ],
                  ),
          ),
        ),
      ),
    );
  }
}

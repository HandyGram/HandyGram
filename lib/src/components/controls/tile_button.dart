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

class TileButtonStyle {
  final Color contentColor;
  final Color tileColor;
  final Color disabledContentColor;
  final Color disabledTileColor;
  final Color? gradientSecondColor;

  const TileButtonStyle({
    required this.contentColor,
    required this.tileColor,
    required this.disabledContentColor,
    required this.disabledTileColor,
    this.gradientSecondColor,
  });
}

abstract final class TileButtonStyles {
  static TileButtonStyle get colorful => TileButtonStyle(
        contentColor: ColorStyles.active.onPrimary,
        tileColor: ColorStyles.active.primary,
        disabledContentColor: Colors.grey,
        disabledTileColor: ColorStyles.active.surface,
      );

  static TileButtonStyle get error => TileButtonStyle(
        contentColor: ColorStyles.active.onError,
        tileColor: ColorStyles.active.error,
        disabledContentColor: Colors.grey,
        disabledTileColor: ColorStyles.active.surface,
      );

  static TileButtonStyle get basic => TileButtonStyle(
        contentColor: ColorStyles.active.onSurface,
        tileColor: ColorStyles.active.surface,
        disabledContentColor: Colors.grey,
        disabledTileColor: ColorStyles.active.surface,
      );

  static TileButtonStyle get gradient => TileButtonStyle(
        contentColor: ColorStyles.active.onSurface,
        tileColor: ColorStyles.active.surface,
        disabledContentColor: Colors.grey,
        disabledTileColor: ColorStyles.active.surface,
        gradientSecondColor: ColorStyles.active.onSurfaceVariant,
      );
}

class TileButton extends StatelessWidget {
  const TileButton({
    super.key,
    this.text,
    this.icon,
    this.style,
    this.onTap,
    this.big = true,
    this.onDoubleTap,
    this.onLongPress,
  }) : assert(icon != null || text != null);

  final String? text;
  final Widget? icon;

  final bool big;
  final TileButtonStyle? style;

  final void Function()? onTap;
  final void Function()? onLongPress;
  final void Function()? onDoubleTap;

  @override
  Widget build(BuildContext context) {
    final style = this.style ?? TileButtonStyles.colorful;

    final textW = Text(
      text ?? "",
      style:
          (big ? TextStyles.active.titleLarge : TextStyles.active.titleSmall)!
              .copyWith(
        fontWeight: FontWeight.bold,
        color: onTap == null ? style.disabledContentColor : style.contentColor,
      ),
      textAlign: icon == null ? TextAlign.center : TextAlign.left,
      maxLines: big ? 2 : 1,
      textWidthBasis: TextWidthBasis.longestLine,
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
          onTap: onTap,
          onLongPress: onLongPress,
          onDoubleTap: onDoubleTap,
          borderRadius: BorderRadii.tilesRadius,
          splashColor: style.contentColor.withOpacity(0.1),
          highlightColor: style.contentColor.withOpacity(0.1),
          child: Ink(
            height: onlyIcon ? Sizes.tilesHeight : null,
            width: big
                ? Sizes.tilesWidth
                : onlyIcon
                    ? Sizes.tilesHeight
                    : null,
            decoration: BoxDecoration(
              borderRadius: BorderRadii.tilesRadius,
              color: style.gradientSecondColor == null
                  ? onTap != null
                      ? style.tileColor
                      : style.disabledTileColor
                  : null,
              gradient: style.gradientSecondColor != null
                  ? LinearGradient(
                      colors: [
                        onTap != null
                            ? style.tileColor
                            : style.disabledTileColor,
                        if (onTap != null)
                          style.gradientSecondColor!
                        else
                          style.disabledTileColor,
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
                                    ? style.contentColor
                                    : style.disabledContentColor,
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

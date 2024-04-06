import 'package:flutter/material.dart';
import 'package:handygram/src/common/cubits/colors.dart';
import 'package:handygram/src/common/cubits/text.dart';

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

    return ConstrainedBox(
      constraints: BoxConstraints(
        minHeight: big ? 61.5 : 0,
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(31),
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
          width: big ? MediaQuery.of(context).size.width * 0.89 : null,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(31),
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
          padding: EdgeInsets.symmetric(
            horizontal: big ? 16 : 22,
            vertical: 10,
          ),
          child: Row(
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
                if (text != null) const SizedBox(width: 8),
              ],
              if (text != null)
                if (big) Expanded(child: textW) else textW,
            ],
          ),
        ),
      ),
    );
  }
}

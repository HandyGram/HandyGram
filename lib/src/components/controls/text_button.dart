import 'package:flutter/material.dart';
import 'package:handygram/src/common/cubits/colors.dart';
import 'package:handygram/src/common/cubits/text.dart';

class HandyTextButton extends StatelessWidget {
  const HandyTextButton({
    super.key,
    required this.text,
    required this.onTap,
    this.style,
    this.color,
  });

  final String text;
  final void Function() onTap;
  final TextStyle? style;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTap,
      style: const ButtonStyle(
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        visualDensity: VisualDensity(vertical: -2.5),
      ),
      child: Text(
        text,
        style: (style ?? TextStyles.active.labelMedium!).copyWith(
          // LMAO https://stackoverflow.com/a/64839295
          shadows: [
            Shadow(
              color: color ?? ColorStyles.active.secondary,
              offset: const Offset(0, -2),
            ),
          ],
          color: Colors.transparent,
          fontWeight: style == null ? FontWeight.w500 : null,
          decoration: TextDecoration.underline,
          decorationColor: color ?? ColorStyles.active.secondary,
          decorationThickness: 2,
        ),
      ),
    );
  }
}

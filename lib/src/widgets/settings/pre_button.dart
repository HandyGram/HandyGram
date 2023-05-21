import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:handygram/src/misc/utils.dart';

class PreSettingsButton extends StatefulWidget {
  const PreSettingsButton({
    super.key,
    required this.onPressed,
    this.icon,
    this.title,
    this.isCentered = false,
    this.mini = false,
    this.isEmoji = false,
    this.background,
    this.foreground,
  });

  final String? title;
  final IconData? icon;
  final Function() onPressed;

  final bool isCentered;
  final Color? foreground;
  final Color? background;
  final bool mini;
  final bool isEmoji;

  @override
  State<PreSettingsButton> createState() => _PreSettingsButtonState();
}

class _PreSettingsButtonState extends State<PreSettingsButton> {
  @override
  Widget build(BuildContext context) {
    assert(widget.title != null || widget.icon != null);

    Widget? t;
    if (widget.title != null) {
      t = Text(
        widget.title!,
        style: !widget.isEmoji
            ? TextStyle(
                color: widget.foreground ??
                    Theme.of(context).textTheme.bodyMedium!.color,
                fontSize: scaleText(14),
              )
            : GoogleFonts.notoColorEmoji(
                fontSize: scaleText(14),
              ),
        overflow: TextOverflow.fade,
        maxLines: 1,
        softWrap: false,
      );
    }

    return InkWell(
      customBorder: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      onTap: widget.onPressed,
      splashColor: Colors.white.withOpacity(0.5),
      child: Ink(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: widget.background ?? Theme.of(context).colorScheme.background,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisAlignment: widget.isCentered
              ? MainAxisAlignment.center
              : MainAxisAlignment.start,
          mainAxisSize: widget.mini ? MainAxisSize.min : MainAxisSize.max,
          children: [
            if (widget.icon != null)
              Icon(
                widget.icon,
                size: 18,
                color: widget.foreground ??
                    Theme.of(context).textTheme.bodyMedium!.color,
              ),
            if (widget.title != null && widget.icon != null)
              const SizedBox(width: 10),
            if (widget.title != null)
              if (widget.isCentered)
                t!
              else
                Expanded(
                  child: t!,
                ),
          ],
        ),
      ),
    );
  }
}

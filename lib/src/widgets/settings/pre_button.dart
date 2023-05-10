import 'package:flutter/material.dart';

class PreSettingsButton extends StatefulWidget {
  const PreSettingsButton({
    super.key,
    required this.onPressed,
    required this.icon,
    this.title,
    this.isCentered = false,
    this.mini = false,
    this.background,
    this.foreground,
  });

  final String? title;
  final IconData icon;
  final Function() onPressed;

  final bool isCentered;
  final Color? foreground;
  final Color? background;
  final bool mini;

  @override
  State<PreSettingsButton> createState() => _PreSettingsButtonState();
}

class _PreSettingsButtonState extends State<PreSettingsButton> {
  @override
  Widget build(BuildContext context) {
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
            Icon(
              widget.icon,
              size: 18,
              color: widget.foreground ??
                  Theme.of(context).textTheme.bodyMedium!.color,
            ),
            if (widget.title != null) const SizedBox(width: 10),
            if (widget.title != null)
              Text(
                widget.title!,
                style: TextStyle(
                  color: widget.foreground ??
                      Theme.of(context).textTheme.bodyMedium!.color,
                  fontSize: 14,
                ),
              ),
          ],
        ),
      ),
    );
  }
}

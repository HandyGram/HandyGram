import 'package:flutter/material.dart';
import 'package:handygram/src/misc/utils.dart';

class PrettyTextBox extends StatelessWidget {
  const PrettyTextBox({
    super.key,
    required this.text,
    this.maxLines,
    this.textAlign = TextAlign.center,
    this.backgroundColor,
  });

  final String? text;
  final int? maxLines;
  final TextAlign textAlign;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor ??
            Theme.of(context).colorScheme.background.withOpacity(0.5),
        borderRadius: BorderRadius.circular(20),
      ),
      padding: const EdgeInsets.all(10),
      width: double.infinity,
      child: Text(
        text ?? "null",
        maxLines: maxLines,
        overflow: TextOverflow.ellipsis,
        textAlign: textAlign,
        style: TextStyle(
          color: Theme.of(context).textTheme.bodyMedium?.color,
          fontSize: scaleText(12),
        ),
      ),
    );
  }
}

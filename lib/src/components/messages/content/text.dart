import 'package:flutter/material.dart';
import 'package:handy_tdlib/api.dart' as td;
import 'package:handygram/src/components/text/formatted_text.dart';

class TextMessageContent extends StatelessWidget {
  const TextMessageContent(
    this.content, {
    super.key,
    required this.isOutgoing,
  });

  final td.MessageText content;
  final bool isOutgoing;

  @override
  Widget build(BuildContext context) {
    return FormattedTextWidget(
      content.text,
      // TODO: figure out why is it needed
      maxLines: 999999,
      textAlign: isOutgoing ? TextAlign.right : TextAlign.left,
      baseColor: isOutgoing
          ? FormattedTextBaseColor.surface
          : FormattedTextBaseColor.onSurface,
    );
  }
}

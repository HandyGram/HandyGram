import 'package:flutter/material.dart';
import 'package:handy_tdlib/api.dart' as td;
import 'package:handygram/generated/l10n.dart';
import 'package:handygram/src/common/cubits/colors.dart';
import 'package:handygram/src/common/cubits/text.dart';
import 'package:handygram/src/components/messages/inherited/context.dart';

class UnsupportedMessageContent extends StatelessWidget {
  const UnsupportedMessageContent(
    this.content, {
    super.key,
    required this.isOutgoing,
  });

  final td.MessageContent content;
  final bool isOutgoing;

  @override
  Widget build(BuildContext context) {
    return Text(
      AppLocalizations.of(context).messageContentUnsupported(
        content.currentObjectId,
      ),
      textAlign: isOutgoing ? TextAlign.right : TextAlign.left,
      textWidthBasis: TextWidthBasis.longestLine,
      style: TextStyles.active.titleLarge?.copyWith(
          color: isOutgoing
              ? ColorStyles.active.surface
              : ColorStyles.active.onSurface,
          fontFamily: "Roboto Mono",
          fontStyle: FontStyle.italic,
          fontVariations: [
            // Medium italic
            const FontVariation.weight(500),
          ]),
    );
  }
}

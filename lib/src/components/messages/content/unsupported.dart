import 'package:flutter/material.dart';
import 'package:handygram/generated/l10n.dart';
import 'package:handygram/src/common/cubits/colors.dart';
import 'package:handygram/src/common/cubits/text.dart';
import 'package:handygram/src/components/messages/content.dart';
import 'package:handygram/src/components/messages/parts/caption/widget.dart';
import 'package:handygram/src/components/scaled_sizes.dart';

class UnsupportedMessageContent extends MessageStatelessWidget {
  const UnsupportedMessageContent({
    super.key,
    required super.data,
  });

  @override
  Widget build(BuildContext context) {
    final style = TextStyles.active.titleLarge?.copyWith(
      color: isOutgoing
          ? ColorStyles.active.surface
          : ColorStyles.active.onSurface,
    );
    final errorColor =
        isOutgoing ? ColorStyles.active.error : ColorStyles.active.onError;
    return MessageCaptionWidget.fromSpan(
      TextSpan(
        children: [
          WidgetSpan(
            style: style,
            child: Padding(
              padding: EdgeInsets.only(right: Paddings.betweenSimilarElements),
              child: Icon(
                Icons.error,
                size: style?.fontSize,
                opticalSize: style?.fontSize,
                color: errorColor,
              ),
            ),
            alignment: PlaceholderAlignment.middle,
          ),
          TextSpan(
            text: AppLocalizations.current.messageContentUnsupported,
            style: style?.copyWith(color: errorColor),
          ),
          TextSpan(
            text: message.content.currentObjectId,
            style: TextStyles.active.labelLarge?.copyWith(
              fontFamily: "Roboto Mono",
              color: style?.color,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
      isOutgoing: isOutgoing,
      attributesWidget: attributesWidget,
      attributesPadding: Paddings.betweenSimilarElements,
    );
  }
}

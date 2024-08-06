import 'package:flutter/material.dart';
import 'package:handy_tdlib/api.dart' as td;
import 'package:handygram/src/common/tdlib/extensions/formatted_text/formatted_text.dart';
import 'package:handygram/src/components/messages/parts/caption/element.dart';
import 'package:handygram/src/components/messages/parts/caption/renderobject.dart';

class MessageCaptionWidget extends RenderObjectWidget {
  const MessageCaptionWidget._({
    required this.text,
    required this.attributesWidget,
    required this.isOutgoing,
    this.attributesPadding = 0,
    super.key,
  });

  final TextSpan text;
  final bool isOutgoing;
  final double attributesPadding;
  final Widget attributesWidget;

  factory MessageCaptionWidget(
    td.FormattedText text, {
    FormattedTextStyle? style,
    required Widget attributesWidget,
    required double attributesPadding,
    required bool isOutgoing,
    Key? key,
  }) =>
      MessageCaptionWidget._(
        text: text.toSpan(
          style: style ??
              FormattedTextStyle.forMessageBubble(
                isOutgoing: isOutgoing,
              ),
        ),
        attributesWidget: attributesWidget,
        attributesPadding: attributesPadding,
        isOutgoing: isOutgoing,
        key: key,
      );

  factory MessageCaptionWidget.fromSpan(
    TextSpan text, {
    required Widget attributesWidget,
    required double attributesPadding,
    required bool isOutgoing,
    Key? key,
  }) =>
      MessageCaptionWidget._(
        text: text,
        attributesWidget: attributesWidget,
        attributesPadding: attributesPadding,
        isOutgoing: isOutgoing,
        key: key,
      );

  @override
  MessageCaptionElement createElement() => MessageCaptionElement(this);

  @override
  RenderObject createRenderObject(BuildContext context) {
    return MessageCaptionRenderObject(
      span: text,
      textAlign: TextAlign.left,
      childHorizontalPadding: attributesPadding,
      direction: Directionality.of(context),
    );
  }

  @override
  void updateRenderObject(
    BuildContext context,
    covariant MessageCaptionRenderObject renderObject,
  ) {
    renderObject.span = text;
    super.updateRenderObject(context, renderObject);
  }
}

import 'package:handy_tdlib/api.dart' as td;
import 'package:flutter/material.dart';
import 'package:handygram/src/common/cubits/colors.dart';
import 'package:handygram/src/common/cubits/current_account.dart';
import 'package:handygram/src/common/cubits/text.dart';
import 'package:handygram/src/common/log/log.dart';
import 'package:handygram/src/common/tdlib/misc/thumbnails.dart';

class FormattedTextStyle {
  final TextStyle baseStyle;
  final Color linkColor;

  final Color quoteBlockColor;
  final Color quoteTextColor;

  factory FormattedTextStyle.forMessageBubble({
    required bool isOutgoing,
    double? fontSize,
  }) =>
      FormattedTextStyle(
        baseStyle: TextStyles.active.titleLarge!.copyWith(
          inherit: true,
          color: isOutgoing
              ? ColorStyles.active.surface
              : ColorStyles.active.onSurface,
          decorationColor: isOutgoing
              ? ColorStyles.active.surface
              : ColorStyles.active.onSurface,
        ),
        linkColor: isOutgoing
            ? ColorStyles.active.onSurfaceVariant
            : ColorStyles.active.primary,
        quoteTextColor: isOutgoing
            ? ColorStyles.active.primary
            : ColorStyles.active.onSurface,
        quoteBlockColor: isOutgoing
            ? ColorStyles.active.onPrimary
            : ColorStyles.active.onSurfaceVariant,
      );

  const FormattedTextStyle({
    required this.baseStyle,
    required this.linkColor,
    required this.quoteBlockColor,
    required this.quoteTextColor,
  });
}

class FormattedTextEntity {
  final List<int> text;
  final int position;
  final List<td.TextEntityType> entities;

  FormattedTextEntity({
    required this.text,
    this.entities = const [],
    this.position = 0,
  }) : assert(text.isNotEmpty, "Invalid formatted text entity - empty text.");

  static const String tag = "FormattedTextEntity";

  FormattedTextEntity copyWith({
    List<int>? text,
    int? position,
    List<td.TextEntityType>? entities,
  }) {
    return FormattedTextEntity(
      text: text ?? this.text,
      position: position ?? this.position,
      entities: entities ?? this.entities,
    );
  }

  List<InlineSpan> getSpan({required FormattedTextStyle style}) {
    double fontSize = style.baseStyle.fontSize!;
    bool isQuoteBlock = false;

    late String text;
    try {
      text = String.fromCharCodes(this.text);
    } catch (e, st) {
      l.e(tag, "UTF-16 conversion failed: $e\n$st");
      text = "[Invalid text entity]";
    }

    bool nonDefaultColor = false;
    var baseStyle = style.baseStyle;
    for (final entity in entities) {
      baseStyle = switch (entity) {
        td.TextEntityTypeBankCardNumber() ||
        td.TextEntityTypeBotCommand() ||
        td.TextEntityTypeEmailAddress() ||
        td.TextEntityTypeTextUrl() ||
        td.TextEntityTypeUrl() ||
        td.TextEntityTypeMediaTimestamp() ||
        td.TextEntityTypePhoneNumber() =>
          baseStyle.copyWith(
            color: style.linkColor,
            decorationColor: style.linkColor,
            decoration: TextDecoration.underline,
            decorationThickness: 2,
          ),
        td.TextEntityTypeHashtag() ||
        td.TextEntityTypeMention() ||
        td.TextEntityTypeMentionName() =>
          baseStyle.copyWith(
            color: style.linkColor,
          ),
        td.TextEntityTypeBold() => baseStyle.copyWith(
            fontWeight: FontWeight.w700,
          ),
        td.TextEntityTypeItalic() => baseStyle.copyWith(
            fontStyle: FontStyle.italic,
          ),
        // BUG: strikethrough and underline can't be both enabled at the same time
        td.TextEntityTypeStrikethrough() => baseStyle.copyWith(
            decoration: TextDecoration.lineThrough,
            decorationThickness: 2,
          ),
        td.TextEntityTypeUnderline() => baseStyle.copyWith(
            decoration: TextDecoration.underline,
            decorationThickness: 2,
          ),
        // TODO: handle expandable block quotes
        td.TextEntityTypeBlockQuote() ||
        td.TextEntityTypeExpandableBlockQuote() =>
          baseStyle.copyWith(
            color: style.quoteTextColor,
            background: Paint()
              ..color = style.quoteBlockColor
              ..strokeWidth = fontSize * 1.3
              ..strokeJoin = StrokeJoin.round
              ..strokeCap = StrokeCap.round
              ..style = PaintingStyle.stroke,
          ),
        td.TextEntityTypeCode() ||
        td.TextEntityTypePre() ||
        td.TextEntityTypePreCode() =>
          baseStyle.copyWith(
            fontFamily: "Roboto Mono",
            fontVariations: const [FontVariation.weight(500)],
          ),
        // TODO: Handle spoilers
        td.TextEntityTypeSpoiler() ||
        td.TextEntityTypeCustomEmoji() ||
        td.TextEntityTypeCashtag() =>
          baseStyle,
      };
      nonDefaultColor = switch (entity) {
        td.TextEntityTypeBankCardNumber() ||
        td.TextEntityTypeBotCommand() ||
        td.TextEntityTypeEmailAddress() ||
        td.TextEntityTypeHashtag() ||
        td.TextEntityTypeMention() ||
        td.TextEntityTypeMentionName() ||
        td.TextEntityTypeTextUrl() ||
        td.TextEntityTypeUrl() ||
        td.TextEntityTypeMediaTimestamp() ||
        td.TextEntityTypePhoneNumber() ||
        td.TextEntityTypeBlockQuote() ||
        td.TextEntityTypeExpandableBlockQuote() =>
          true,
        _ => nonDefaultColor,
      };
    }

    if (entities.contains(const td.TextEntityTypeExpandableBlockQuote()) ||
        entities.contains(const td.TextEntityTypeBlockQuote())) {
      // TODO: rework this
      // very basic quote display
      text = '$text "';
      isQuoteBlock = true;
    }

    final int? customEmojiId = entities.fold(
      null,
      (saved, next) => (saved == null && next is td.TextEntityTypeCustomEmoji)
          ? next.customEmojiId
          : null,
    );
    if (customEmojiId != null) {
      return [
        WidgetSpan(
          child: DefaultTextStyle(
            style: baseStyle,
            child: SizedBox.square(
              dimension: fontSize,
              child: FutureBuilder(
                future: CurrentAccount.providers.stickers
                    .getCustomEmoji(customEmojiId)
                    .then(
                      (sticker) => getStickerThumbnailWidget(sticker),
                    ),
                builder: (context, snapshot) {
                  if (!snapshot.hasData) return Container();
                  return snapshot.data ?? Container();
                },
              ),
            ),
          ),
        )
      ];
    }

    return [
      if (isQuoteBlock) TextSpan(text: "\n\t\t\t", style: baseStyle),
      TextSpan(text: text, style: baseStyle),
      if (isQuoteBlock) TextSpan(text: "\n", style: baseStyle),
    ];
  }
}

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:handy_tdlib/api.dart' as td;
import 'package:handygram/src/common/cubits/current_account.dart';
import 'package:handygram/src/common/log/log.dart';
import 'package:handygram/src/common/tdlib/misc/stickers.dart';

enum FormattedTextBaseColor {
  surface,
  onSurface,
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

  List<InlineSpan> getSpan(
    ThemeData theme,
    FormattedTextBaseColor color,
    double? fontSize,
    TextStyle? Function(List<td.TextEntityType>, TextStyle?)? stylesCorrector,
  ) {
    TextStyle style = theme.textTheme.titleLarge!.copyWith(inherit: true);
    fontSize ??= style.fontSize!;
    bool isQuoteBlock = false;

    late String text;
    try {
      text = String.fromCharCodes(this.text);
    } catch (e, st) {
      l.e(tag, "UTF-16 conversion failed: $e\n$st");
      text = "[Invalid text entity]";
    }

    bool nonDefaultColor = false;
    for (final entity in entities) {
      style = switch (entity) {
        td.TextEntityTypeBankCardNumber() ||
        td.TextEntityTypeBotCommand() ||
        td.TextEntityTypeEmailAddress() ||
        td.TextEntityTypeHashtag() ||
        td.TextEntityTypeMention() ||
        td.TextEntityTypeMentionName() ||
        td.TextEntityTypeTextUrl() ||
        td.TextEntityTypeUrl() ||
        td.TextEntityTypeMediaTimestamp() ||
        td.TextEntityTypePhoneNumber() =>
          style.copyWith(
            color: switch (color) {
              FormattedTextBaseColor.surface =>
                theme.colorScheme.onSurfaceVariant,
              FormattedTextBaseColor.onSurface => theme.colorScheme.primary,
            },
            decorationColor: switch (color) {
              FormattedTextBaseColor.surface =>
                theme.colorScheme.onSurfaceVariant,
              FormattedTextBaseColor.onSurface => theme.colorScheme.primary,
            },
            decoration: TextDecoration.underline,
            decorationThickness: 2,
          ),
        td.TextEntityTypeBold() => style.copyWith(
            fontWeight: FontWeight.w700,
          ),
        td.TextEntityTypeItalic() => style.copyWith(
            fontStyle: FontStyle.italic,
          ),
        // BUG: strikethrough and underline can't be both enabled at the same time
        td.TextEntityTypeStrikethrough() => style.copyWith(
            decoration: TextDecoration.lineThrough,
            decorationThickness: 2,
          ),
        td.TextEntityTypeUnderline() => style.copyWith(
            decoration: TextDecoration.underline,
            decorationThickness: 2,
          ),
        // TODO: handle expandable block quotes
        td.TextEntityTypeBlockQuote() ||
        td.TextEntityTypeExpandableBlockQuote() =>
          style.copyWith(
            color: switch (color) {
              FormattedTextBaseColor.surface => theme.colorScheme.primary,
              FormattedTextBaseColor.onSurface => theme.colorScheme.onSurface,
            },
            background: Paint()
              ..color = switch (color) {
                FormattedTextBaseColor.surface => theme.colorScheme.onPrimary,
                FormattedTextBaseColor.onSurface =>
                  theme.colorScheme.onSurfaceVariant,
              }
              ..strokeWidth = fontSize * 1.3
              ..strokeJoin = StrokeJoin.round
              ..strokeCap = StrokeCap.round
              ..style = PaintingStyle.stroke,
          ),
        td.TextEntityTypeCode() ||
        td.TextEntityTypePre() ||
        td.TextEntityTypePreCode() =>
          style.copyWith(
            fontFamily: "Roboto Mono",
            fontVariations: const [FontVariation.weight(500)],
          ),
        // TODO: Handle spoilers
        td.TextEntityTypeSpoiler() ||
        td.TextEntityTypeCustomEmoji() ||
        td.TextEntityTypeCashtag() =>
          style,
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

    style = style.copyWith(
      color: nonDefaultColor
          ? style.color
          : switch (color) {
              FormattedTextBaseColor.surface => theme.colorScheme.surface,
              FormattedTextBaseColor.onSurface => theme.colorScheme.onSurface,
            },
      decorationColor: nonDefaultColor
          ? style.decorationColor
          : switch (color) {
              FormattedTextBaseColor.surface => theme.colorScheme.surface,
              FormattedTextBaseColor.onSurface => theme.colorScheme.onSurface,
            },
      fontSize: fontSize,
    );

    if (stylesCorrector != null) {
      style = stylesCorrector(entities, style) ?? style;
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
            style: style,
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
      if (isQuoteBlock)
        TextSpan(text: "\n\t\t\t", style: theme.textTheme.titleLarge),
      TextSpan(text: text, style: style),
      if (isQuoteBlock) TextSpan(text: "\n", style: theme.textTheme.titleLarge),
    ];
  }
}

class FormattedTextWidget extends StatelessWidget {
  const FormattedTextWidget(
    this.text, {
    required this.baseColor,
    this.stylesCorrector,
    this.fontSize,
    this.maxLines,
    this.overflow = TextOverflow.ellipsis,
    this.textAlign = TextAlign.start,
    super.key,
  });

  static const String tag = "FormattedTextWidget";

  final td.FormattedText text;
  final FormattedTextBaseColor baseColor;

  /// Runs every for every TextStyle in this FormattedText, if specified.
  ///
  /// An inline switch-case ( ... => ... ) is suggested for this function's body
  final TextStyle? Function(List<td.TextEntityType>, TextStyle?)?
      stylesCorrector;

  final double? fontSize;
  final TextOverflow overflow;
  final int? maxLines;
  final TextAlign textAlign;

  // don't ask how it works it was made in 2 or 3 hours of pain and debugging
  TextSpan _makeSpans(ThemeData theme) {
    List<FormattedTextEntity> entities = [
      FormattedTextEntity(
        entities: [],
        text: text.text.codeUnits,
        position: 0,
      ),
    ];

    // Convert TDLib's entity pointers to real text entities.
    // Sometimes I wanna kms thx to Durov 😊
    for (final tdEntity in text.entities) {
      // Entity which starts exactly at this tdEntity position, or before it.
      FormattedTextEntity closestEntity = entities.fold(
        entities.first,
        (saved, next) =>
            (saved.position < next.position && next.position <= tdEntity.offset)
                ? next
                : saved,
      );
      int closestEntityOffset = entities.indexOf(closestEntity);

      // Entity is after the found one, cut it in 2 parts.
      if (tdEntity.offset != closestEntity.position) {
        entities.insert(
          closestEntityOffset,
          closestEntity.copyWith(
            text: closestEntity.text
                .sublist(0, tdEntity.offset - closestEntity.position),
          ),
        );
        closestEntityOffset += 1;
        closestEntity = closestEntity.copyWith(
          position: tdEntity.offset,
          text: closestEntity.text
              .sublist(tdEntity.offset - closestEntity.position),
        );
        entities[closestEntityOffset] = closestEntity;
      }

      if (closestEntity.text.length > tdEntity.length) {
        // Split this entity into two ones if needed
        entities.insert(
          closestEntityOffset + 1,
          closestEntity.copyWith(
            position: closestEntity.position + tdEntity.length,
            text: closestEntity.text.sublist(tdEntity.length),
          ),
        );
        closestEntity = closestEntity.copyWith(
          text: closestEntity.text.sublist(0, tdEntity.length),
          entities: [
            ...closestEntity.entities,
            tdEntity.type,
          ],
        );
      } else if (closestEntity.text.length < tdEntity.length) {
        // Use neighbor entity if required
        final neighborEntity = entities[closestEntityOffset + 1];
        entities[closestEntityOffset + 1] = neighborEntity.copyWith(
          text: neighborEntity.text.sublist(
            0,
            min(
              tdEntity.length,
              neighborEntity.text.length,
            ),
          ),
          entities: [
            ...neighborEntity.entities,
            tdEntity.type,
          ],
        );
        // After neighbor entity
        if (tdEntity.length < neighborEntity.text.length) {
          entities.insert(
            closestEntityOffset + 2,
            neighborEntity.copyWith(
              position: neighborEntity.position + tdEntity.length,
              text: neighborEntity.text.sublist(tdEntity.length),
            ),
          );
        }
        // Only update the type of target entity
        closestEntity = closestEntity.copyWith(
          entities: [
            ...closestEntity.entities,
            tdEntity.type,
          ],
        );
      } else {
        // Simply add new entity type
        closestEntity = closestEntity.copyWith(
          entities: [
            ...closestEntity.entities,
            tdEntity.type,
          ],
        );
      }
      entities[closestEntityOffset] = closestEntity;
    }

    return TextSpan(
      children: [
        for (final entity in entities)
          ...entity.getSpan(theme, baseColor, fontSize, stylesCorrector),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: _makeSpans(Theme.of(context)),
      overflow: overflow,
      maxLines: maxLines,
      textAlign: textAlign,
      textWidthBasis: TextWidthBasis.longestLine,
    );
  }
}

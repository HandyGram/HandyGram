part of '../tdapi.dart';

/// **ParseTextEntities** *(parseTextEntities)* - TDLib function
///
/// Parses Bold, Italic, Underline, Strikethrough, Spoiler, CustomEmoji, Code, Pre, PreCode, TextUrl and MentionName entities from a marked-up text. Can be called synchronously.
///
/// * [text]: The text to parse.
/// * [parseMode]: Text parse mode.
///
/// [FormattedText] is returned on completion.
final class ParseTextEntities extends TdFunction {
  
  /// **ParseTextEntities** *(parseTextEntities)* - TDLib function
  ///
  /// Parses Bold, Italic, Underline, Strikethrough, Spoiler, CustomEmoji, Code, Pre, PreCode, TextUrl and MentionName entities from a marked-up text. Can be called synchronously.
  ///
  /// * [text]: The text to parse.
  /// * [parseMode]: Text parse mode.
  ///
  /// [FormattedText] is returned on completion.
  const ParseTextEntities({
    required this.text,
    required this.parseMode,
  });
  
  /// The text to parse 
  final String text;

  /// Text parse mode
  final TextParseMode parseMode;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "text": text,
      "parse_mode": parseMode.toJson(),
      "@extra": extra,
		};
	}

  
  ParseTextEntities copyWith({
    String? text,
    TextParseMode? parseMode,
  }) => ParseTextEntities(
    text: text ?? this.text,
    parseMode: parseMode ?? this.parseMode,
  );

  static const String objectType = 'parseTextEntities';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

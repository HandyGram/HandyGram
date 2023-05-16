part of '../tdapi.dart';

/// **TextParseMode** *(textParseMode)* - parent
///
/// Describes the way the text needs to be parsed for text entities.
sealed class TextParseMode extends TdObject {
  
  /// **TextParseMode** *(textParseMode)* - parent
  ///
  /// Describes the way the text needs to be parsed for text entities.
  const TextParseMode();
  
  /// a TextParseMode return type can be :
  /// * [TextParseModeMarkdown]
  /// * [TextParseModeHTML]
  factory TextParseMode.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case TextParseModeMarkdown.objectType:
        return TextParseModeMarkdown.fromJson(json);
      case TextParseModeHTML.objectType:
        return TextParseModeHTML.fromJson(json);
      default:
        throw FormatException(
          "Unknown object ${json["@type"]} (expected child of TextParseMode)",
          json,
        );
    }
  }
  
  @override
  Map<String, dynamic> toJson();

  
  TextParseMode copyWith();

  static const String objectType = 'textParseMode';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **TextParseModeMarkdown** *(textParseModeMarkdown)* - child of TextParseMode
///
/// The text uses Markdown-style formatting.
///
/// * [version]: Version of the parser: 0 or 1 - Telegram Bot API "Markdown" parse mode, 2 - Telegram Bot API "MarkdownV2" parse mode.
final class TextParseModeMarkdown extends TextParseMode {
  
  /// **TextParseModeMarkdown** *(textParseModeMarkdown)* - child of TextParseMode
  ///
  /// The text uses Markdown-style formatting.
  ///
  /// * [version]: Version of the parser: 0 or 1 - Telegram Bot API "Markdown" parse mode, 2 - Telegram Bot API "MarkdownV2" parse mode.
  const TextParseModeMarkdown({
    required this.version,
  });
  
  /// Version of the parser: 0 or 1 - Telegram Bot API "Markdown" parse mode, 2 - Telegram Bot API "MarkdownV2" parse mode
  final int version;
  
  /// Parse from a json
  factory TextParseModeMarkdown.fromJson(Map<String, dynamic> json) => TextParseModeMarkdown(
    version: json['version'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "version": version,
		};
	}

  
  @override
  TextParseModeMarkdown copyWith({
    int? version,
  }) => TextParseModeMarkdown(
    version: version ?? this.version,
  );

  static const String objectType = 'textParseModeMarkdown';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **TextParseModeHTML** *(textParseModeHTML)* - child of TextParseMode
///
/// The text uses HTML-style formatting. The same as Telegram Bot API "HTML" parse mode.
final class TextParseModeHTML extends TextParseMode {
  
  /// **TextParseModeHTML** *(textParseModeHTML)* - child of TextParseMode
  ///
  /// The text uses HTML-style formatting. The same as Telegram Bot API "HTML" parse mode.
  const TextParseModeHTML();
  
  /// Parse from a json
  factory TextParseModeHTML.fromJson(Map<String, dynamic> json) => const TextParseModeHTML();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  TextParseModeHTML copyWith() => const TextParseModeHTML();

  static const String objectType = 'textParseModeHTML';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

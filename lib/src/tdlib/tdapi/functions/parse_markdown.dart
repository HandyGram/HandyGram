part of '../tdapi.dart';

/// **ParseMarkdown** *(parseMarkdown)* - TDLib function
///
/// Parses Markdown entities in a human-friendly format, ignoring markup errors. Can be called synchronously.
///
/// * [text]: The text to parse. For example, "__italic__.
///
/// [FormattedText] is returned on completion.
final class ParseMarkdown extends TdFunction {
  
  /// **ParseMarkdown** *(parseMarkdown)* - TDLib function
  ///
  /// Parses Markdown entities in a human-friendly format, ignoring markup errors. Can be called synchronously.
  ///
  /// * [text]: The text to parse. For example, "__italic__.
  ///
  /// [FormattedText] is returned on completion.
  const ParseMarkdown({
    required this.text,
  });
  
  /// The text to parse. For example, "__italic__
  final FormattedText text;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "text": text.toJson(),
      "@extra": extra,
		};
	}

  
  ParseMarkdown copyWith({
    FormattedText? text,
  }) => ParseMarkdown(
    text: text ?? this.text,
  );

  static const String objectType = 'parseMarkdown';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

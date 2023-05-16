part of '../tdapi.dart';

/// **GetMarkdownText** *(getMarkdownText)* - TDLib function
///
/// Replaces text entities with Markdown formatting in a human-friendly format. Entities that can't be represented in Markdown unambiguously are kept as is. Can be called synchronously.
///
/// * [text]: The text.
///
/// [FormattedText] is returned on completion.
final class GetMarkdownText extends TdFunction {
  
  /// **GetMarkdownText** *(getMarkdownText)* - TDLib function
  ///
  /// Replaces text entities with Markdown formatting in a human-friendly format. Entities that can't be represented in Markdown unambiguously are kept as is. Can be called synchronously.
  ///
  /// * [text]: The text.
  ///
  /// [FormattedText] is returned on completion.
  const GetMarkdownText({
    required this.text,
  });
  
  /// The text
  final FormattedText text;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "text": text.toJson(),
      "@extra": extra,
		};
	}

  
  GetMarkdownText copyWith({
    FormattedText? text,
  }) => GetMarkdownText(
    text: text ?? this.text,
  );

  static const String objectType = 'getMarkdownText';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

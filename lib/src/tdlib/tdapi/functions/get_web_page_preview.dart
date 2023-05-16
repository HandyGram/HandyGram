part of '../tdapi.dart';

/// **GetWebPagePreview** *(getWebPagePreview)* - TDLib function
///
/// Returns a web page preview by the text of the message. Do not call this function too often. Returns a 404 error if the web page has no preview.
///
/// * [text]: Message text with formatting.
///
/// [WebPage] is returned on completion.
final class GetWebPagePreview extends TdFunction {
  
  /// **GetWebPagePreview** *(getWebPagePreview)* - TDLib function
  ///
  /// Returns a web page preview by the text of the message. Do not call this function too often. Returns a 404 error if the web page has no preview.
  ///
  /// * [text]: Message text with formatting.
  ///
  /// [WebPage] is returned on completion.
  const GetWebPagePreview({
    required this.text,
  });
  
  /// Message text with formatting
  final FormattedText text;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "text": text.toJson(),
      "@extra": extra,
		};
	}

  
  GetWebPagePreview copyWith({
    FormattedText? text,
  }) => GetWebPagePreview(
    text: text ?? this.text,
  );

  static const String objectType = 'getWebPagePreview';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

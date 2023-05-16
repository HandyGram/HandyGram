part of '../tdapi.dart';

/// **GetEmojiSuggestionsUrl** *(getEmojiSuggestionsUrl)* - TDLib function
///
/// Returns an HTTP URL which can be used to automatically log in to the translation platform and suggest new emoji replacements. The URL will be valid for 30 seconds after generation.
///
/// * [languageCode]: Language code for which the emoji replacements will be suggested.
///
/// [HttpUrl] is returned on completion.
final class GetEmojiSuggestionsUrl extends TdFunction {
  
  /// **GetEmojiSuggestionsUrl** *(getEmojiSuggestionsUrl)* - TDLib function
  ///
  /// Returns an HTTP URL which can be used to automatically log in to the translation platform and suggest new emoji replacements. The URL will be valid for 30 seconds after generation.
  ///
  /// * [languageCode]: Language code for which the emoji replacements will be suggested.
  ///
  /// [HttpUrl] is returned on completion.
  const GetEmojiSuggestionsUrl({
    required this.languageCode,
  });
  
  /// Language code for which the emoji replacements will be suggested
  final String languageCode;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "language_code": languageCode,
      "@extra": extra,
		};
	}

  
  GetEmojiSuggestionsUrl copyWith({
    String? languageCode,
  }) => GetEmojiSuggestionsUrl(
    languageCode: languageCode ?? this.languageCode,
  );

  static const String objectType = 'getEmojiSuggestionsUrl';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

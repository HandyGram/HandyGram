part of '../tdapi.dart';

/// **TranslateText** *(translateText)* - TDLib function
///
/// Translates a text to the given language. Returns a 404 error if the translation can't be performed.
///
/// * [text]: Text to translate.
/// * [fromLanguageCode]: A two-letter ISO 639-1 language code of the language from which the message is translated. If empty, the language will be detected automatically.
/// * [toLanguageCode]: A two-letter ISO 639-1 language code of the language to which the message is translated.
///
/// [Text] is returned on completion.
final class TranslateText extends TdFunction {
  
  /// **TranslateText** *(translateText)* - TDLib function
  ///
  /// Translates a text to the given language. Returns a 404 error if the translation can't be performed.
  ///
  /// * [text]: Text to translate.
  /// * [fromLanguageCode]: A two-letter ISO 639-1 language code of the language from which the message is translated. If empty, the language will be detected automatically.
  /// * [toLanguageCode]: A two-letter ISO 639-1 language code of the language to which the message is translated.
  ///
  /// [Text] is returned on completion.
  const TranslateText({
    required this.text,
    required this.fromLanguageCode,
    required this.toLanguageCode,
  });
  
  /// Text to translate
  final String text;

  /// A two-letter ISO 639-1 language code of the language from which the message is translated. If empty, the language will be detected automatically
  final String fromLanguageCode;

  /// A two-letter ISO 639-1 language code of the language to which the message is translated
  final String toLanguageCode;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "text": text,
      "from_language_code": fromLanguageCode,
      "to_language_code": toLanguageCode,
      "@extra": extra,
		};
	}

  
  TranslateText copyWith({
    String? text,
    String? fromLanguageCode,
    String? toLanguageCode,
  }) => TranslateText(
    text: text ?? this.text,
    fromLanguageCode: fromLanguageCode ?? this.fromLanguageCode,
    toLanguageCode: toLanguageCode ?? this.toLanguageCode,
  );

  static const String objectType = 'translateText';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

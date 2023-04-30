part of '../tdapi.dart';

/// **GetTextEntities** *(getTextEntities)* - TDLib function
  ///
  /// Returns all entities (mentions, hashtags, cashtags, bot commands, bank card numbers, URLs, and email addresses) found in the text. Can be called synchronously.
  ///
  /// * [text]: The text in which to look for entites.
  ///
  /// [TextEntities] is returned on completion.
class GetTextEntities extends TdFunction {
  
  /// **GetTextEntities** *(getTextEntities)* - TDLib function
  ///
  /// Returns all entities (mentions, hashtags, cashtags, bot commands, bank card numbers, URLs, and email addresses) found in the text. Can be called synchronously.
  ///
  /// * [text]: The text in which to look for entites.
  ///
  /// [TextEntities] is returned on completion.
  const GetTextEntities({
    required this.text,
  });
  
  /// The text in which to look for entites
  final String text;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "text": text,
      "@extra": extra,
    };
  }
  
  GetTextEntities copyWith({
    String? text,
  }) => GetTextEntities(
    text: text ?? this.text,
  );

  static const String constructor = 'getTextEntities';
  
  @override
  String getConstructor() => constructor;
}

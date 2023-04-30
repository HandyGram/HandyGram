part of '../tdapi.dart';

/// **GetLanguagePackInfo** *(getLanguagePackInfo)* - TDLib function
  ///
  /// Returns information about a language pack. Returned language pack identifier may be different from a provided one. Can be called before authorization.
  ///
  /// * [languagePackId]: Language pack identifier.
  ///
  /// [LanguagePackInfo] is returned on completion.
class GetLanguagePackInfo extends TdFunction {
  
  /// **GetLanguagePackInfo** *(getLanguagePackInfo)* - TDLib function
  ///
  /// Returns information about a language pack. Returned language pack identifier may be different from a provided one. Can be called before authorization.
  ///
  /// * [languagePackId]: Language pack identifier.
  ///
  /// [LanguagePackInfo] is returned on completion.
  const GetLanguagePackInfo({
    required this.languagePackId,
  });
  
  /// Language pack identifier
  final String languagePackId;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "language_pack_id": languagePackId,
      "@extra": extra,
    };
  }
  
  GetLanguagePackInfo copyWith({
    String? languagePackId,
  }) => GetLanguagePackInfo(
    languagePackId: languagePackId ?? this.languagePackId,
  );

  static const String constructor = 'getLanguagePackInfo';
  
  @override
  String getConstructor() => constructor;
}

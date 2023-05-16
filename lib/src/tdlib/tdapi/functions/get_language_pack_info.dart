part of '../tdapi.dart';

/// **GetLanguagePackInfo** *(getLanguagePackInfo)* - TDLib function
///
/// Returns information about a language pack. Returned language pack identifier may be different from a provided one. Can be called before authorization.
///
/// * [languagePackId]: Language pack identifier.
///
/// [LanguagePackInfo] is returned on completion.
final class GetLanguagePackInfo extends TdFunction {
  
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
			"@type": objectType,
      "language_pack_id": languagePackId,
      "@extra": extra,
		};
	}

  
  GetLanguagePackInfo copyWith({
    String? languagePackId,
  }) => GetLanguagePackInfo(
    languagePackId: languagePackId ?? this.languagePackId,
  );

  static const String objectType = 'getLanguagePackInfo';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

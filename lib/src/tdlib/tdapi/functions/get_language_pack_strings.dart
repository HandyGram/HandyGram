part of '../tdapi.dart';

/// **GetLanguagePackStrings** *(getLanguagePackStrings)* - TDLib function
///
/// Returns strings from a language pack in the current localization target by their keys. Can be called before authorization.
///
/// * [languagePackId]: Language pack identifier of the strings to be returned.
/// * [keys]: Language pack keys of the strings to be returned; leave empty to request all available strings.
///
/// [LanguagePackStrings] is returned on completion.
final class GetLanguagePackStrings extends TdFunction {
  
  /// **GetLanguagePackStrings** *(getLanguagePackStrings)* - TDLib function
  ///
  /// Returns strings from a language pack in the current localization target by their keys. Can be called before authorization.
  ///
  /// * [languagePackId]: Language pack identifier of the strings to be returned.
  /// * [keys]: Language pack keys of the strings to be returned; leave empty to request all available strings.
  ///
  /// [LanguagePackStrings] is returned on completion.
  const GetLanguagePackStrings({
    required this.languagePackId,
    required this.keys,
  });
  
  /// Language pack identifier of the strings to be returned
  final String languagePackId;

  /// Language pack keys of the strings to be returned; leave empty to request all available strings
  final List<String> keys;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "language_pack_id": languagePackId,
      "keys": keys.map((i) => i).toList(),
      "@extra": extra,
		};
	}

  
  GetLanguagePackStrings copyWith({
    String? languagePackId,
    List<String>? keys,
  }) => GetLanguagePackStrings(
    languagePackId: languagePackId ?? this.languagePackId,
    keys: keys ?? this.keys,
  );

  static const String objectType = 'getLanguagePackStrings';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

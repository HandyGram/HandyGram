part of '../tdapi.dart';

/// **SetCustomLanguagePack** *(setCustomLanguagePack)* - TDLib function
///
/// Adds or changes a custom local language pack to the current localization target.
///
/// * [info]: Information about the language pack. Language pack setCustomLanguagePack must start with 'X', consist only of English letters, digits and hyphens, and must not exceed 64 characters. Can be called before authorization.
/// * [strings]: Strings of the new language pack.
///
/// [Ok] is returned on completion.
final class SetCustomLanguagePack extends TdFunction {
  
  /// **SetCustomLanguagePack** *(setCustomLanguagePack)* - TDLib function
  ///
  /// Adds or changes a custom local language pack to the current localization target.
  ///
  /// * [info]: Information about the language pack. Language pack setCustomLanguagePack must start with 'X', consist only of English letters, digits and hyphens, and must not exceed 64 characters. Can be called before authorization.
  /// * [strings]: Strings of the new language pack.
  ///
  /// [Ok] is returned on completion.
  const SetCustomLanguagePack({
    required this.info,
    required this.strings,
  });
  
  /// Information about the language pack. Language pack setCustomLanguagePack must start with 'X', consist only of English letters, digits and hyphens, and must not exceed 64 characters. Can be called before authorization
  final LanguagePackInfo info;

  /// Strings of the new language pack
  final List<LanguagePackString> strings;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "info": info.toJson(),
      "strings": strings.map((i) => i.toJson()).toList(),
      "@extra": extra,
		};
	}

  
  SetCustomLanguagePack copyWith({
    LanguagePackInfo? info,
    List<LanguagePackString>? strings,
  }) => SetCustomLanguagePack(
    info: info ?? this.info,
    strings: strings ?? this.strings,
  );

  static const String objectType = 'setCustomLanguagePack';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

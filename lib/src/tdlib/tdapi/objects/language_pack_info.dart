part of '../tdapi.dart';

/// **LanguagePackInfo** *(languagePackInfo)* - basic class
///
/// Contains information about a language pack.
///
/// * [id]: Unique language pack identifier.
/// * [baseLanguagePackId]: Identifier of a base language pack; may be empty. If a string is missed in the language pack, then it must be fetched from base language pack. Unsupported in custom language packs.
/// * [name]: Language name.
/// * [nativeName]: Name of the language in that language.
/// * [pluralCode]: A language code to be used to apply plural forms. See https://www.unicode.org/cldr/charts/latest/supplemental/language_plural_rules.html for more information.
/// * [isOfficial]: True, if the language pack is official.
/// * [isRtl]: True, if the language pack strings are RTL.
/// * [isBeta]: True, if the language pack is a beta language pack.
/// * [isInstalled]: True, if the language pack is installed by the current user.
/// * [totalStringCount]: Total number of non-deleted strings from the language pack.
/// * [translatedStringCount]: Total number of translated strings from the language pack.
/// * [localStringCount]: Total number of non-deleted strings from the language pack available locally.
/// * [translationUrl]: Link to language translation interface; empty for custom local language packs.
final class LanguagePackInfo extends TdObject {
  
  /// **LanguagePackInfo** *(languagePackInfo)* - basic class
  ///
  /// Contains information about a language pack.
  ///
  /// * [id]: Unique language pack identifier.
  /// * [baseLanguagePackId]: Identifier of a base language pack; may be empty. If a string is missed in the language pack, then it must be fetched from base language pack. Unsupported in custom language packs.
  /// * [name]: Language name.
  /// * [nativeName]: Name of the language in that language.
  /// * [pluralCode]: A language code to be used to apply plural forms. See https://www.unicode.org/cldr/charts/latest/supplemental/language_plural_rules.html for more information.
  /// * [isOfficial]: True, if the language pack is official.
  /// * [isRtl]: True, if the language pack strings are RTL.
  /// * [isBeta]: True, if the language pack is a beta language pack.
  /// * [isInstalled]: True, if the language pack is installed by the current user.
  /// * [totalStringCount]: Total number of non-deleted strings from the language pack.
  /// * [translatedStringCount]: Total number of translated strings from the language pack.
  /// * [localStringCount]: Total number of non-deleted strings from the language pack available locally.
  /// * [translationUrl]: Link to language translation interface; empty for custom local language packs.
  const LanguagePackInfo({
    required this.id,
    required this.baseLanguagePackId,
    required this.name,
    required this.nativeName,
    required this.pluralCode,
    required this.isOfficial,
    required this.isRtl,
    required this.isBeta,
    required this.isInstalled,
    required this.totalStringCount,
    required this.translatedStringCount,
    required this.localStringCount,
    required this.translationUrl,
    this.extra,
    this.clientId,
  });
  
  /// Unique language pack identifier
  final String id;

  /// Identifier of a base language pack; may be empty. If a string is missed in the language pack, then it must be fetched from base language pack. Unsupported in custom language packs
  final String baseLanguagePackId;

  /// Language name
  final String name;

  /// Name of the language in that language
  final String nativeName;

  /// A language code to be used to apply plural forms. See https://www.unicode.org/cldr/charts/latest/supplemental/language_plural_rules.html for more information
  final String pluralCode;

  /// True, if the language pack is official
  final bool isOfficial;

  /// True, if the language pack strings are RTL
  final bool isRtl;

  /// True, if the language pack is a beta language pack
  final bool isBeta;

  /// True, if the language pack is installed by the current user
  final bool isInstalled;

  /// Total number of non-deleted strings from the language pack
  final int totalStringCount;

  /// Total number of translated strings from the language pack
  final int translatedStringCount;

  /// Total number of non-deleted strings from the language pack available locally
  final int localStringCount;

  /// Link to language translation interface; empty for custom local language packs
  final String translationUrl;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory LanguagePackInfo.fromJson(Map<String, dynamic> json) => LanguagePackInfo(
    id: json['id'],
    baseLanguagePackId: json['base_language_pack_id'],
    name: json['name'],
    nativeName: json['native_name'],
    pluralCode: json['plural_code'],
    isOfficial: json['is_official'],
    isRtl: json['is_rtl'],
    isBeta: json['is_beta'],
    isInstalled: json['is_installed'],
    totalStringCount: json['total_string_count'],
    translatedStringCount: json['translated_string_count'],
    localStringCount: json['local_string_count'],
    translationUrl: json['translation_url'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "id": id,
      "base_language_pack_id": baseLanguagePackId,
      "name": name,
      "native_name": nativeName,
      "plural_code": pluralCode,
      "is_official": isOfficial,
      "is_rtl": isRtl,
      "is_beta": isBeta,
      "is_installed": isInstalled,
      "total_string_count": totalStringCount,
      "translated_string_count": translatedStringCount,
      "local_string_count": localStringCount,
      "translation_url": translationUrl,
		};
	}

  
  LanguagePackInfo copyWith({
    String? id,
    String? baseLanguagePackId,
    String? name,
    String? nativeName,
    String? pluralCode,
    bool? isOfficial,
    bool? isRtl,
    bool? isBeta,
    bool? isInstalled,
    int? totalStringCount,
    int? translatedStringCount,
    int? localStringCount,
    String? translationUrl,
    dynamic extra,
    int? clientId,
  }) => LanguagePackInfo(
    id: id ?? this.id,
    baseLanguagePackId: baseLanguagePackId ?? this.baseLanguagePackId,
    name: name ?? this.name,
    nativeName: nativeName ?? this.nativeName,
    pluralCode: pluralCode ?? this.pluralCode,
    isOfficial: isOfficial ?? this.isOfficial,
    isRtl: isRtl ?? this.isRtl,
    isBeta: isBeta ?? this.isBeta,
    isInstalled: isInstalled ?? this.isInstalled,
    totalStringCount: totalStringCount ?? this.totalStringCount,
    translatedStringCount: translatedStringCount ?? this.translatedStringCount,
    localStringCount: localStringCount ?? this.localStringCount,
    translationUrl: translationUrl ?? this.translationUrl,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'languagePackInfo';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

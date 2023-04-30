part of '../tdapi.dart';

/// **LocalizationTargetInfo** *(localizationTargetInfo)* - basic class
  ///
  /// Contains information about the current localization target.
  ///
  /// * [languagePacks]: List of available language packs for this application.
class LocalizationTargetInfo extends TdObject {
  
  /// **LocalizationTargetInfo** *(localizationTargetInfo)* - basic class
  ///
  /// Contains information about the current localization target.
  ///
  /// * [languagePacks]: List of available language packs for this application.
  const LocalizationTargetInfo({
    required this.languagePacks,
    this.extra,
    this.clientId,
  });
  
  /// List of available language packs for this application
  final List<LanguagePackInfo> languagePacks;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory LocalizationTargetInfo.fromJson(Map<String, dynamic> json) => LocalizationTargetInfo(
    languagePacks: List<LanguagePackInfo>.from((json['language_packs'] ?? []).map((item) => LanguagePackInfo.fromJson(item)).toList()),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "language_packs": languagePacks.map((i) => i.toJson()).toList(),
    };
  }
  
  LocalizationTargetInfo copyWith({
    List<LanguagePackInfo>? languagePacks,
    dynamic extra,
    int? clientId,
  }) => LocalizationTargetInfo(
    languagePacks: languagePacks ?? this.languagePacks,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String constructor = 'localizationTargetInfo';
  
  @override
  String getConstructor() => constructor;
}

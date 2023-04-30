part of '../tdapi.dart';

/// **LanguagePackString** *(languagePackString)* - basic class
  ///
  /// Represents one language pack string.
  ///
  /// * [key]: String key.
  /// * [value]: String value; pass null if the string needs to be taken from the built-in English language pack *(optional)*.
class LanguagePackString extends TdObject {
  
  /// **LanguagePackString** *(languagePackString)* - basic class
  ///
  /// Represents one language pack string.
  ///
  /// * [key]: String key.
  /// * [value]: String value; pass null if the string needs to be taken from the built-in English language pack *(optional)*.
  const LanguagePackString({
    required this.key,
    this.value,
  });
  
  /// String key 
  final String key;

  /// String value; pass null if the string needs to be taken from the built-in English language pack
  final LanguagePackStringValue? value;
  
  /// Parse from a json
  factory LanguagePackString.fromJson(Map<String, dynamic> json) => LanguagePackString(
    key: json['key'],
    value: json['value'] == null ? null : LanguagePackStringValue.fromJson(json['value']),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "key": key,
      "value": value?.toJson(),
    };
  }
  
  LanguagePackString copyWith({
    String? key,
    LanguagePackStringValue? value,
  }) => LanguagePackString(
    key: key ?? this.key,
    value: value ?? this.value,
  );

  static const String constructor = 'languagePackString';
  
  @override
  String getConstructor() => constructor;
}

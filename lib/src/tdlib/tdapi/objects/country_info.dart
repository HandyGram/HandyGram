part of '../tdapi.dart';

/// **CountryInfo** *(countryInfo)* - basic class
///
/// Contains information about a country.
///
/// * [countryCode]: A two-letter ISO 3166-1 alpha-2 country code.
/// * [name]: Native name of the country.
/// * [englishName]: English name of the country.
/// * [isHidden]: True, if the country must be hidden from the list of all countries.
/// * [callingCodes]: List of country calling codes.
final class CountryInfo extends TdObject {
  
  /// **CountryInfo** *(countryInfo)* - basic class
  ///
  /// Contains information about a country.
  ///
  /// * [countryCode]: A two-letter ISO 3166-1 alpha-2 country code.
  /// * [name]: Native name of the country.
  /// * [englishName]: English name of the country.
  /// * [isHidden]: True, if the country must be hidden from the list of all countries.
  /// * [callingCodes]: List of country calling codes.
  const CountryInfo({
    required this.countryCode,
    required this.name,
    required this.englishName,
    required this.isHidden,
    required this.callingCodes,
  });
  
  /// A two-letter ISO 3166-1 alpha-2 country code
  final String countryCode;

  /// Native name of the country
  final String name;

  /// English name of the country
  final String englishName;

  /// True, if the country must be hidden from the list of all countries
  final bool isHidden;

  /// List of country calling codes
  final List<String> callingCodes;
  
  /// Parse from a json
  factory CountryInfo.fromJson(Map<String, dynamic> json) => CountryInfo(
    countryCode: json['country_code'],
    name: json['name'],
    englishName: json['english_name'],
    isHidden: json['is_hidden'],
    callingCodes: List<String>.from((json['calling_codes'] ?? []).map((item) => item).toList()),
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "country_code": countryCode,
      "name": name,
      "english_name": englishName,
      "is_hidden": isHidden,
      "calling_codes": callingCodes.map((i) => i).toList(),
		};
	}

  
  CountryInfo copyWith({
    String? countryCode,
    String? name,
    String? englishName,
    bool? isHidden,
    List<String>? callingCodes,
  }) => CountryInfo(
    countryCode: countryCode ?? this.countryCode,
    name: name ?? this.name,
    englishName: englishName ?? this.englishName,
    isHidden: isHidden ?? this.isHidden,
    callingCodes: callingCodes ?? this.callingCodes,
  );

  static const String objectType = 'countryInfo';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

part of '../tdapi.dart';

/// **PhoneNumberInfo** *(phoneNumberInfo)* - basic class
///
/// Contains information about a phone number.
///
/// * [country]: Information about the country to which the phone number belongs; may be null *(optional)*.
/// * [countryCallingCode]: The part of the phone number denoting country calling code or its part.
/// * [formattedPhoneNumber]: The phone number without country calling code formatted accordingly to local rules. Expected digits are returned as '-', but even more digits might be entered by the user.
/// * [isAnonymous]: True, if the phone number was bought on Fragment and isn't tied to a SIM card.
final class PhoneNumberInfo extends TdObject {
  
  /// **PhoneNumberInfo** *(phoneNumberInfo)* - basic class
  ///
  /// Contains information about a phone number.
  ///
  /// * [country]: Information about the country to which the phone number belongs; may be null *(optional)*.
  /// * [countryCallingCode]: The part of the phone number denoting country calling code or its part.
  /// * [formattedPhoneNumber]: The phone number without country calling code formatted accordingly to local rules. Expected digits are returned as '-', but even more digits might be entered by the user.
  /// * [isAnonymous]: True, if the phone number was bought on Fragment and isn't tied to a SIM card.
  const PhoneNumberInfo({
    this.country,
    required this.countryCallingCode,
    required this.formattedPhoneNumber,
    required this.isAnonymous,
    this.extra,
    this.clientId,
  });
  
  /// Information about the country to which the phone number belongs; may be null
  final CountryInfo? country;

  /// The part of the phone number denoting country calling code or its part
  final String countryCallingCode;

  /// The phone number without country calling code formatted accordingly to local rules. Expected digits are returned as '-', but even more digits might be entered by the user
  final String formattedPhoneNumber;

  /// True, if the phone number was bought on Fragment and isn't tied to a SIM card
  final bool isAnonymous;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory PhoneNumberInfo.fromJson(Map<String, dynamic> json) => PhoneNumberInfo(
    country: json['country'] == null ? null : CountryInfo.fromJson(json['country']),
    countryCallingCode: json['country_calling_code'],
    formattedPhoneNumber: json['formatted_phone_number'],
    isAnonymous: json['is_anonymous'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "country": country?.toJson(),
      "country_calling_code": countryCallingCode,
      "formatted_phone_number": formattedPhoneNumber,
      "is_anonymous": isAnonymous,
		};
	}

  
  PhoneNumberInfo copyWith({
    CountryInfo? country,
    String? countryCallingCode,
    String? formattedPhoneNumber,
    bool? isAnonymous,
    dynamic extra,
    int? clientId,
  }) => PhoneNumberInfo(
    country: country ?? this.country,
    countryCallingCode: countryCallingCode ?? this.countryCallingCode,
    formattedPhoneNumber: formattedPhoneNumber ?? this.formattedPhoneNumber,
    isAnonymous: isAnonymous ?? this.isAnonymous,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'phoneNumberInfo';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

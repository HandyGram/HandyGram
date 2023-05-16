part of '../tdapi.dart';

/// **GetPhoneNumberInfoSync** *(getPhoneNumberInfoSync)* - TDLib function
///
/// Returns information about a phone number by its prefix synchronously. getCountries must be called at least once after changing localization to the specified language if properly localized country information is expected. Can be called synchronously.
///
/// * [languageCode]: A two-letter ISO 639-1 language code for country information localization.
/// * [phoneNumberPrefix]: The phone number prefix.
///
/// [PhoneNumberInfo] is returned on completion.
final class GetPhoneNumberInfoSync extends TdFunction {
  
  /// **GetPhoneNumberInfoSync** *(getPhoneNumberInfoSync)* - TDLib function
  ///
  /// Returns information about a phone number by its prefix synchronously. getCountries must be called at least once after changing localization to the specified language if properly localized country information is expected. Can be called synchronously.
  ///
  /// * [languageCode]: A two-letter ISO 639-1 language code for country information localization.
  /// * [phoneNumberPrefix]: The phone number prefix.
  ///
  /// [PhoneNumberInfo] is returned on completion.
  const GetPhoneNumberInfoSync({
    required this.languageCode,
    required this.phoneNumberPrefix,
  });
  
  /// A two-letter ISO 639-1 language code for country information localization
  final String languageCode;

  /// The phone number prefix
  final String phoneNumberPrefix;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "language_code": languageCode,
      "phone_number_prefix": phoneNumberPrefix,
      "@extra": extra,
		};
	}

  
  GetPhoneNumberInfoSync copyWith({
    String? languageCode,
    String? phoneNumberPrefix,
  }) => GetPhoneNumberInfoSync(
    languageCode: languageCode ?? this.languageCode,
    phoneNumberPrefix: phoneNumberPrefix ?? this.phoneNumberPrefix,
  );

  static const String objectType = 'getPhoneNumberInfoSync';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

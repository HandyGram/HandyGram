part of '../tdapi.dart';

/// **GetPhoneNumberInfo** *(getPhoneNumberInfo)* - TDLib function
///
/// Returns information about a phone number by its prefix. Can be called before authorization.
///
/// * [phoneNumberPrefix]: The phone number prefix.
///
/// [PhoneNumberInfo] is returned on completion.
final class GetPhoneNumberInfo extends TdFunction {
  
  /// **GetPhoneNumberInfo** *(getPhoneNumberInfo)* - TDLib function
  ///
  /// Returns information about a phone number by its prefix. Can be called before authorization.
  ///
  /// * [phoneNumberPrefix]: The phone number prefix.
  ///
  /// [PhoneNumberInfo] is returned on completion.
  const GetPhoneNumberInfo({
    required this.phoneNumberPrefix,
  });
  
  /// The phone number prefix
  final String phoneNumberPrefix;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "phone_number_prefix": phoneNumberPrefix,
      "@extra": extra,
		};
	}

  
  GetPhoneNumberInfo copyWith({
    String? phoneNumberPrefix,
  }) => GetPhoneNumberInfo(
    phoneNumberPrefix: phoneNumberPrefix ?? this.phoneNumberPrefix,
  );

  static const String objectType = 'getPhoneNumberInfo';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

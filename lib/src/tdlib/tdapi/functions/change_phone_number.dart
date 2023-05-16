part of '../tdapi.dart';

/// **ChangePhoneNumber** *(changePhoneNumber)* - TDLib function
///
/// Changes the phone number of the user and sends an authentication code to the user's new phone number. On success, returns information about the sent code.
///
/// * [phoneNumber]: The new phone number of the user in international format.
/// * [settings]: Settings for the authentication of the user's phone number; pass null to use default settings *(optional)*.
///
/// [AuthenticationCodeInfo] is returned on completion.
final class ChangePhoneNumber extends TdFunction {
  
  /// **ChangePhoneNumber** *(changePhoneNumber)* - TDLib function
  ///
  /// Changes the phone number of the user and sends an authentication code to the user's new phone number. On success, returns information about the sent code.
  ///
  /// * [phoneNumber]: The new phone number of the user in international format.
  /// * [settings]: Settings for the authentication of the user's phone number; pass null to use default settings *(optional)*.
  ///
  /// [AuthenticationCodeInfo] is returned on completion.
  const ChangePhoneNumber({
    required this.phoneNumber,
    this.settings,
  });
  
  /// The new phone number of the user in international format
  final String phoneNumber;

  /// Settings for the authentication of the user's phone number; pass null to use default settings
  final PhoneNumberAuthenticationSettings? settings;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "phone_number": phoneNumber,
      "settings": settings?.toJson(),
      "@extra": extra,
		};
	}

  
  ChangePhoneNumber copyWith({
    String? phoneNumber,
    PhoneNumberAuthenticationSettings? settings,
  }) => ChangePhoneNumber(
    phoneNumber: phoneNumber ?? this.phoneNumber,
    settings: settings ?? this.settings,
  );

  static const String objectType = 'changePhoneNumber';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

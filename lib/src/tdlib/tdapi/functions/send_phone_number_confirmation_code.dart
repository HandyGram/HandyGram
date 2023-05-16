part of '../tdapi.dart';

/// **SendPhoneNumberConfirmationCode** *(sendPhoneNumberConfirmationCode)* - TDLib function
///
/// Sends phone number confirmation code to handle links of the type internalLinkTypePhoneNumberConfirmation.
///
/// * [hash]: Hash value from the link.
/// * [phoneNumber]: Phone number value from the link.
/// * [settings]: Settings for the authentication of the user's phone number; pass null to use default settings *(optional)*.
///
/// [AuthenticationCodeInfo] is returned on completion.
final class SendPhoneNumberConfirmationCode extends TdFunction {
  
  /// **SendPhoneNumberConfirmationCode** *(sendPhoneNumberConfirmationCode)* - TDLib function
  ///
  /// Sends phone number confirmation code to handle links of the type internalLinkTypePhoneNumberConfirmation.
  ///
  /// * [hash]: Hash value from the link.
  /// * [phoneNumber]: Phone number value from the link.
  /// * [settings]: Settings for the authentication of the user's phone number; pass null to use default settings *(optional)*.
  ///
  /// [AuthenticationCodeInfo] is returned on completion.
  const SendPhoneNumberConfirmationCode({
    required this.hash,
    required this.phoneNumber,
    this.settings,
  });
  
  /// Hash value from the link
  final String hash;

  /// Phone number value from the link
  final String phoneNumber;

  /// Settings for the authentication of the user's phone number; pass null to use default settings
  final PhoneNumberAuthenticationSettings? settings;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "hash": hash,
      "phone_number": phoneNumber,
      "settings": settings?.toJson(),
      "@extra": extra,
		};
	}

  
  SendPhoneNumberConfirmationCode copyWith({
    String? hash,
    String? phoneNumber,
    PhoneNumberAuthenticationSettings? settings,
  }) => SendPhoneNumberConfirmationCode(
    hash: hash ?? this.hash,
    phoneNumber: phoneNumber ?? this.phoneNumber,
    settings: settings ?? this.settings,
  );

  static const String objectType = 'sendPhoneNumberConfirmationCode';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

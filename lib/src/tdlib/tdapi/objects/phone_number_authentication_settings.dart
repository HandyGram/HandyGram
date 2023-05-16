part of '../tdapi.dart';

/// **PhoneNumberAuthenticationSettings** *(phoneNumberAuthenticationSettings)* - basic class
///
/// Contains settings for the authentication of the user's phone number.
///
/// * [allowFlashCall]: Pass true if the authentication code may be sent via a flash call to the specified phone number.
/// * [allowMissedCall]: Pass true if the authentication code may be sent via a missed call to the specified phone number.
/// * [isCurrentPhoneNumber]: Pass true if the authenticated phone number is used on the current device.
/// * [allowSmsRetrieverApi]: For official applications only. True, if the application can use Android SMS Retriever API (requires Google Play Services.
/// * [authenticationTokens]: List of up to 20 authentication tokens, recently received in updateOption("authentication_token") in previously logged out sessions.
final class PhoneNumberAuthenticationSettings extends TdObject {
  
  /// **PhoneNumberAuthenticationSettings** *(phoneNumberAuthenticationSettings)* - basic class
  ///
  /// Contains settings for the authentication of the user's phone number.
  ///
  /// * [allowFlashCall]: Pass true if the authentication code may be sent via a flash call to the specified phone number.
  /// * [allowMissedCall]: Pass true if the authentication code may be sent via a missed call to the specified phone number.
  /// * [isCurrentPhoneNumber]: Pass true if the authenticated phone number is used on the current device.
  /// * [allowSmsRetrieverApi]: For official applications only. True, if the application can use Android SMS Retriever API (requires Google Play Services.
  /// * [authenticationTokens]: List of up to 20 authentication tokens, recently received in updateOption("authentication_token") in previously logged out sessions.
  const PhoneNumberAuthenticationSettings({
    required this.allowFlashCall,
    required this.allowMissedCall,
    required this.isCurrentPhoneNumber,
    required this.allowSmsRetrieverApi,
    required this.authenticationTokens,
  });
  
  /// Pass true if the authentication code may be sent via a flash call to the specified phone number
  final bool allowFlashCall;

  /// Pass true if the authentication code may be sent via a missed call to the specified phone number
  final bool allowMissedCall;

  /// Pass true if the authenticated phone number is used on the current device
  final bool isCurrentPhoneNumber;

  /// For official applications only. True, if the application can use Android SMS Retriever API (requires Google Play Services
  final bool allowSmsRetrieverApi;

  /// List of up to 20 authentication tokens, recently received in updateOption("authentication_token") in previously logged out sessions
  final List<String> authenticationTokens;
  
  /// Parse from a json
  factory PhoneNumberAuthenticationSettings.fromJson(Map<String, dynamic> json) => PhoneNumberAuthenticationSettings(
    allowFlashCall: json['allow_flash_call'],
    allowMissedCall: json['allow_missed_call'],
    isCurrentPhoneNumber: json['is_current_phone_number'],
    allowSmsRetrieverApi: json['allow_sms_retriever_api'],
    authenticationTokens: List<String>.from((json['authentication_tokens'] ?? []).map((item) => item).toList()),
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "allow_flash_call": allowFlashCall,
      "allow_missed_call": allowMissedCall,
      "is_current_phone_number": isCurrentPhoneNumber,
      "allow_sms_retriever_api": allowSmsRetrieverApi,
      "authentication_tokens": authenticationTokens.map((i) => i).toList(),
		};
	}

  
  PhoneNumberAuthenticationSettings copyWith({
    bool? allowFlashCall,
    bool? allowMissedCall,
    bool? isCurrentPhoneNumber,
    bool? allowSmsRetrieverApi,
    List<String>? authenticationTokens,
  }) => PhoneNumberAuthenticationSettings(
    allowFlashCall: allowFlashCall ?? this.allowFlashCall,
    allowMissedCall: allowMissedCall ?? this.allowMissedCall,
    isCurrentPhoneNumber: isCurrentPhoneNumber ?? this.isCurrentPhoneNumber,
    allowSmsRetrieverApi: allowSmsRetrieverApi ?? this.allowSmsRetrieverApi,
    authenticationTokens: authenticationTokens ?? this.authenticationTokens,
  );

  static const String objectType = 'phoneNumberAuthenticationSettings';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

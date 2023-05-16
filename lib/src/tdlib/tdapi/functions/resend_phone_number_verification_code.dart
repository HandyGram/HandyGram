part of '../tdapi.dart';

/// **ResendPhoneNumberVerificationCode** *(resendPhoneNumberVerificationCode)* - TDLib function
///
/// Resends the code to verify a phone number to be added to a user's Telegram Passport.
///
/// [AuthenticationCodeInfo] is returned on completion.
final class ResendPhoneNumberVerificationCode extends TdFunction {
  
  /// **ResendPhoneNumberVerificationCode** *(resendPhoneNumberVerificationCode)* - TDLib function
  ///
  /// Resends the code to verify a phone number to be added to a user's Telegram Passport.
  ///
  /// [AuthenticationCodeInfo] is returned on completion.
  const ResendPhoneNumberVerificationCode();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "@extra": extra,
		};
	}

  
  ResendPhoneNumberVerificationCode copyWith() => const ResendPhoneNumberVerificationCode();

  static const String objectType = 'resendPhoneNumberVerificationCode';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

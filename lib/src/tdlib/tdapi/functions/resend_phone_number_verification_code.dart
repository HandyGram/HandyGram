part of '../tdapi.dart';

/// **ResendPhoneNumberVerificationCode** *(resendPhoneNumberVerificationCode)* - TDLib function
  ///
  /// Resends the code to verify a phone number to be added to a user's Telegram Passport.
  ///
  /// [AuthenticationCodeInfo] is returned on completion.
class ResendPhoneNumberVerificationCode extends TdFunction {
  
  /// **ResendPhoneNumberVerificationCode** *(resendPhoneNumberVerificationCode)* - TDLib function
  ///
  /// Resends the code to verify a phone number to be added to a user's Telegram Passport.
  ///
  /// [AuthenticationCodeInfo] is returned on completion.
  const ResendPhoneNumberVerificationCode();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "@extra": extra,
    };
  }
  
  ResendPhoneNumberVerificationCode copyWith() => const ResendPhoneNumberVerificationCode();

  static const String constructor = 'resendPhoneNumberVerificationCode';
  
  @override
  String getConstructor() => constructor;
}

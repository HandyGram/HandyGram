part of '../tdapi.dart';

/// **ResendEmailAddressVerificationCode** *(resendEmailAddressVerificationCode)* - TDLib function
  ///
  /// Resends the code to verify an email address to be added to a user's Telegram Passport.
  ///
  /// [EmailAddressAuthenticationCodeInfo] is returned on completion.
class ResendEmailAddressVerificationCode extends TdFunction {
  
  /// **ResendEmailAddressVerificationCode** *(resendEmailAddressVerificationCode)* - TDLib function
  ///
  /// Resends the code to verify an email address to be added to a user's Telegram Passport.
  ///
  /// [EmailAddressAuthenticationCodeInfo] is returned on completion.
  const ResendEmailAddressVerificationCode();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "@extra": extra,
    };
  }
  
  ResendEmailAddressVerificationCode copyWith() => const ResendEmailAddressVerificationCode();

  static const String constructor = 'resendEmailAddressVerificationCode';
  
  @override
  String getConstructor() => constructor;
}

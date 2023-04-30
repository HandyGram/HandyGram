part of '../tdapi.dart';

/// **SendEmailAddressVerificationCode** *(sendEmailAddressVerificationCode)* - TDLib function
  ///
  /// Sends a code to verify an email address to be added to a user's Telegram Passport.
  ///
  /// * [emailAddress]: Email address.
  ///
  /// [EmailAddressAuthenticationCodeInfo] is returned on completion.
class SendEmailAddressVerificationCode extends TdFunction {
  
  /// **SendEmailAddressVerificationCode** *(sendEmailAddressVerificationCode)* - TDLib function
  ///
  /// Sends a code to verify an email address to be added to a user's Telegram Passport.
  ///
  /// * [emailAddress]: Email address.
  ///
  /// [EmailAddressAuthenticationCodeInfo] is returned on completion.
  const SendEmailAddressVerificationCode({
    required this.emailAddress,
  });
  
  /// Email address
  final String emailAddress;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "email_address": emailAddress,
      "@extra": extra,
    };
  }
  
  SendEmailAddressVerificationCode copyWith({
    String? emailAddress,
  }) => SendEmailAddressVerificationCode(
    emailAddress: emailAddress ?? this.emailAddress,
  );

  static const String constructor = 'sendEmailAddressVerificationCode';
  
  @override
  String getConstructor() => constructor;
}

part of '../tdapi.dart';

/// **CheckEmailAddressVerificationCode** *(checkEmailAddressVerificationCode)* - TDLib function
  ///
  /// Checks the email address verification code for Telegram Passport.
  ///
  /// * [code]: Verification code to check.
  ///
  /// [Ok] is returned on completion.
class CheckEmailAddressVerificationCode extends TdFunction {
  
  /// **CheckEmailAddressVerificationCode** *(checkEmailAddressVerificationCode)* - TDLib function
  ///
  /// Checks the email address verification code for Telegram Passport.
  ///
  /// * [code]: Verification code to check.
  ///
  /// [Ok] is returned on completion.
  const CheckEmailAddressVerificationCode({
    required this.code,
  });
  
  /// Verification code to check
  final String code;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "code": code,
      "@extra": extra,
    };
  }
  
  CheckEmailAddressVerificationCode copyWith({
    String? code,
  }) => CheckEmailAddressVerificationCode(
    code: code ?? this.code,
  );

  static const String constructor = 'checkEmailAddressVerificationCode';
  
  @override
  String getConstructor() => constructor;
}

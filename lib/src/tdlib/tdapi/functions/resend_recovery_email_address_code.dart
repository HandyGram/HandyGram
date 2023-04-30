part of '../tdapi.dart';

/// **ResendRecoveryEmailAddressCode** *(resendRecoveryEmailAddressCode)* - TDLib function
  ///
  /// Resends the 2-step verification recovery email address verification code.
  ///
  /// [PasswordState] is returned on completion.
class ResendRecoveryEmailAddressCode extends TdFunction {
  
  /// **ResendRecoveryEmailAddressCode** *(resendRecoveryEmailAddressCode)* - TDLib function
  ///
  /// Resends the 2-step verification recovery email address verification code.
  ///
  /// [PasswordState] is returned on completion.
  const ResendRecoveryEmailAddressCode();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "@extra": extra,
    };
  }
  
  ResendRecoveryEmailAddressCode copyWith() => const ResendRecoveryEmailAddressCode();

  static const String constructor = 'resendRecoveryEmailAddressCode';
  
  @override
  String getConstructor() => constructor;
}

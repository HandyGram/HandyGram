part of '../tdapi.dart';

/// **ResendLoginEmailAddressCode** *(resendLoginEmailAddressCode)* - TDLib function
  ///
  /// Resends the login email address verification code.
  ///
  /// [EmailAddressAuthenticationCodeInfo] is returned on completion.
class ResendLoginEmailAddressCode extends TdFunction {
  
  /// **ResendLoginEmailAddressCode** *(resendLoginEmailAddressCode)* - TDLib function
  ///
  /// Resends the login email address verification code.
  ///
  /// [EmailAddressAuthenticationCodeInfo] is returned on completion.
  const ResendLoginEmailAddressCode();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "@extra": extra,
    };
  }
  
  ResendLoginEmailAddressCode copyWith() => const ResendLoginEmailAddressCode();

  static const String constructor = 'resendLoginEmailAddressCode';
  
  @override
  String getConstructor() => constructor;
}

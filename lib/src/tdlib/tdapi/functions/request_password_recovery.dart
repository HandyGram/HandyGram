part of '../tdapi.dart';

/// **RequestPasswordRecovery** *(requestPasswordRecovery)* - TDLib function
  ///
  /// Requests to send a 2-step verification password recovery code to an email address that was previously set up.
  ///
  /// [EmailAddressAuthenticationCodeInfo] is returned on completion.
class RequestPasswordRecovery extends TdFunction {
  
  /// **RequestPasswordRecovery** *(requestPasswordRecovery)* - TDLib function
  ///
  /// Requests to send a 2-step verification password recovery code to an email address that was previously set up.
  ///
  /// [EmailAddressAuthenticationCodeInfo] is returned on completion.
  const RequestPasswordRecovery();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "@extra": extra,
    };
  }
  
  RequestPasswordRecovery copyWith() => const RequestPasswordRecovery();

  static const String constructor = 'requestPasswordRecovery';
  
  @override
  String getConstructor() => constructor;
}

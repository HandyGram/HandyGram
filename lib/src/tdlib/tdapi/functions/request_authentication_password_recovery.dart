part of '../tdapi.dart';

/// **RequestAuthenticationPasswordRecovery** *(requestAuthenticationPasswordRecovery)* - TDLib function
  ///
  /// Requests to send a 2-step verification password recovery code to an email address that was previously set up. Works only when the current authorization state is authorizationStateWaitPassword.
  ///
  /// [Ok] is returned on completion.
class RequestAuthenticationPasswordRecovery extends TdFunction {
  
  /// **RequestAuthenticationPasswordRecovery** *(requestAuthenticationPasswordRecovery)* - TDLib function
  ///
  /// Requests to send a 2-step verification password recovery code to an email address that was previously set up. Works only when the current authorization state is authorizationStateWaitPassword.
  ///
  /// [Ok] is returned on completion.
  const RequestAuthenticationPasswordRecovery();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "@extra": extra,
    };
  }
  
  RequestAuthenticationPasswordRecovery copyWith() => const RequestAuthenticationPasswordRecovery();

  static const String constructor = 'requestAuthenticationPasswordRecovery';
  
  @override
  String getConstructor() => constructor;
}

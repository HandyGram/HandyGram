part of '../tdapi.dart';

/// **RequestAuthenticationPasswordRecovery** *(requestAuthenticationPasswordRecovery)* - TDLib function
///
/// Requests to send a 2-step verification password recovery code to an email address that was previously set up. Works only when the current authorization state is authorizationStateWaitPassword.
///
/// [Ok] is returned on completion.
final class RequestAuthenticationPasswordRecovery extends TdFunction {
  
  /// **RequestAuthenticationPasswordRecovery** *(requestAuthenticationPasswordRecovery)* - TDLib function
  ///
  /// Requests to send a 2-step verification password recovery code to an email address that was previously set up. Works only when the current authorization state is authorizationStateWaitPassword.
  ///
  /// [Ok] is returned on completion.
  const RequestAuthenticationPasswordRecovery();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "@extra": extra,
		};
	}

  
  RequestAuthenticationPasswordRecovery copyWith() => const RequestAuthenticationPasswordRecovery();

  static const String objectType = 'requestAuthenticationPasswordRecovery';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

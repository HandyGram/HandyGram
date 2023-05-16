part of '../tdapi.dart';

/// **ResendAuthenticationCode** *(resendAuthenticationCode)* - TDLib function
///
/// Resends an authentication code to the user. Works only when the current authorization state is authorizationStateWaitCode, the next_code_type of the result is not null and the server-specified timeout has passed,. or when the current authorization state is authorizationStateWaitEmailCode.
///
/// [Ok] is returned on completion.
final class ResendAuthenticationCode extends TdFunction {
  
  /// **ResendAuthenticationCode** *(resendAuthenticationCode)* - TDLib function
  ///
  /// Resends an authentication code to the user. Works only when the current authorization state is authorizationStateWaitCode, the next_code_type of the result is not null and the server-specified timeout has passed,. or when the current authorization state is authorizationStateWaitEmailCode.
  ///
  /// [Ok] is returned on completion.
  const ResendAuthenticationCode();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "@extra": extra,
		};
	}

  
  ResendAuthenticationCode copyWith() => const ResendAuthenticationCode();

  static const String objectType = 'resendAuthenticationCode';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

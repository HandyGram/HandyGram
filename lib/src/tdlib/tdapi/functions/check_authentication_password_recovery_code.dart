part of '../tdapi.dart';

/// **CheckAuthenticationPasswordRecoveryCode** *(checkAuthenticationPasswordRecoveryCode)* - TDLib function
///
/// Checks whether a 2-step verification password recovery code sent to an email address is valid. Works only when the current authorization state is authorizationStateWaitPassword.
///
/// * [recoveryCode]: Recovery code to check.
///
/// [Ok] is returned on completion.
final class CheckAuthenticationPasswordRecoveryCode extends TdFunction {
  
  /// **CheckAuthenticationPasswordRecoveryCode** *(checkAuthenticationPasswordRecoveryCode)* - TDLib function
  ///
  /// Checks whether a 2-step verification password recovery code sent to an email address is valid. Works only when the current authorization state is authorizationStateWaitPassword.
  ///
  /// * [recoveryCode]: Recovery code to check.
  ///
  /// [Ok] is returned on completion.
  const CheckAuthenticationPasswordRecoveryCode({
    required this.recoveryCode,
  });
  
  /// Recovery code to check
  final String recoveryCode;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "recovery_code": recoveryCode,
      "@extra": extra,
		};
	}

  
  CheckAuthenticationPasswordRecoveryCode copyWith({
    String? recoveryCode,
  }) => CheckAuthenticationPasswordRecoveryCode(
    recoveryCode: recoveryCode ?? this.recoveryCode,
  );

  static const String objectType = 'checkAuthenticationPasswordRecoveryCode';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

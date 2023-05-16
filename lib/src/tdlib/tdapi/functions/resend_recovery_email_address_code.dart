part of '../tdapi.dart';

/// **ResendRecoveryEmailAddressCode** *(resendRecoveryEmailAddressCode)* - TDLib function
///
/// Resends the 2-step verification recovery email address verification code.
///
/// [PasswordState] is returned on completion.
final class ResendRecoveryEmailAddressCode extends TdFunction {
  
  /// **ResendRecoveryEmailAddressCode** *(resendRecoveryEmailAddressCode)* - TDLib function
  ///
  /// Resends the 2-step verification recovery email address verification code.
  ///
  /// [PasswordState] is returned on completion.
  const ResendRecoveryEmailAddressCode();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "@extra": extra,
		};
	}

  
  ResendRecoveryEmailAddressCode copyWith() => const ResendRecoveryEmailAddressCode();

  static const String objectType = 'resendRecoveryEmailAddressCode';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

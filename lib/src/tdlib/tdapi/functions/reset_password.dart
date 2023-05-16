part of '../tdapi.dart';

/// **ResetPassword** *(resetPassword)* - TDLib function
///
/// Removes 2-step verification password without previous password and access to recovery email address. The password can't be reset immediately and the request needs to be repeated after the specified time.
///
/// [ResetPasswordResult] is returned on completion.
final class ResetPassword extends TdFunction {
  
  /// **ResetPassword** *(resetPassword)* - TDLib function
  ///
  /// Removes 2-step verification password without previous password and access to recovery email address. The password can't be reset immediately and the request needs to be repeated after the specified time.
  ///
  /// [ResetPasswordResult] is returned on completion.
  const ResetPassword();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "@extra": extra,
		};
	}

  
  ResetPassword copyWith() => const ResetPassword();

  static const String objectType = 'resetPassword';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

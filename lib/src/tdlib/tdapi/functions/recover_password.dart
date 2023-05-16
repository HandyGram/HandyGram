part of '../tdapi.dart';

/// **RecoverPassword** *(recoverPassword)* - TDLib function
///
/// Recovers the 2-step verification password using a recovery code sent to an email address that was previously set up.
///
/// * [recoveryCode]: Recovery code to check.
/// * [newPassword]: New 2-step verification password of the user; may be empty to remove the password.
/// * [newHint]: New password hint; may be empty.
///
/// [PasswordState] is returned on completion.
final class RecoverPassword extends TdFunction {
  
  /// **RecoverPassword** *(recoverPassword)* - TDLib function
  ///
  /// Recovers the 2-step verification password using a recovery code sent to an email address that was previously set up.
  ///
  /// * [recoveryCode]: Recovery code to check.
  /// * [newPassword]: New 2-step verification password of the user; may be empty to remove the password.
  /// * [newHint]: New password hint; may be empty.
  ///
  /// [PasswordState] is returned on completion.
  const RecoverPassword({
    required this.recoveryCode,
    required this.newPassword,
    required this.newHint,
  });
  
  /// Recovery code to check
  final String recoveryCode;

  /// New 2-step verification password of the user; may be empty to remove the password
  final String newPassword;

  /// New password hint; may be empty
  final String newHint;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "recovery_code": recoveryCode,
      "new_password": newPassword,
      "new_hint": newHint,
      "@extra": extra,
		};
	}

  
  RecoverPassword copyWith({
    String? recoveryCode,
    String? newPassword,
    String? newHint,
  }) => RecoverPassword(
    recoveryCode: recoveryCode ?? this.recoveryCode,
    newPassword: newPassword ?? this.newPassword,
    newHint: newHint ?? this.newHint,
  );

  static const String objectType = 'recoverPassword';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

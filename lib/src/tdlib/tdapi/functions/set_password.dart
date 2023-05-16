part of '../tdapi.dart';

/// **SetPassword** *(setPassword)* - TDLib function
///
/// Changes the 2-step verification password for the current user. If a new recovery email address is specified, then the change will not be applied until the new recovery email address is confirmed.
///
/// * [oldPassword]: Previous 2-step verification password of the user.
/// * [newPassword]: New 2-step verification password of the user; may be empty to remove the password.
/// * [newHint]: New password hint; may be empty.
/// * [setRecoveryEmailAddress]: Pass true to change also the recovery email address.
/// * [newRecoveryEmailAddress]: New recovery email address; may be empty.
///
/// [PasswordState] is returned on completion.
final class SetPassword extends TdFunction {
  
  /// **SetPassword** *(setPassword)* - TDLib function
  ///
  /// Changes the 2-step verification password for the current user. If a new recovery email address is specified, then the change will not be applied until the new recovery email address is confirmed.
  ///
  /// * [oldPassword]: Previous 2-step verification password of the user.
  /// * [newPassword]: New 2-step verification password of the user; may be empty to remove the password.
  /// * [newHint]: New password hint; may be empty.
  /// * [setRecoveryEmailAddress]: Pass true to change also the recovery email address.
  /// * [newRecoveryEmailAddress]: New recovery email address; may be empty.
  ///
  /// [PasswordState] is returned on completion.
  const SetPassword({
    required this.oldPassword,
    required this.newPassword,
    required this.newHint,
    required this.setRecoveryEmailAddress,
    required this.newRecoveryEmailAddress,
  });
  
  /// Previous 2-step verification password of the user
  final String oldPassword;

  /// New 2-step verification password of the user; may be empty to remove the password
  final String newPassword;

  /// New password hint; may be empty
  final String newHint;

  /// Pass true to change also the recovery email address
  final bool setRecoveryEmailAddress;

  /// New recovery email address; may be empty
  final String newRecoveryEmailAddress;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "old_password": oldPassword,
      "new_password": newPassword,
      "new_hint": newHint,
      "set_recovery_email_address": setRecoveryEmailAddress,
      "new_recovery_email_address": newRecoveryEmailAddress,
      "@extra": extra,
		};
	}

  
  SetPassword copyWith({
    String? oldPassword,
    String? newPassword,
    String? newHint,
    bool? setRecoveryEmailAddress,
    String? newRecoveryEmailAddress,
  }) => SetPassword(
    oldPassword: oldPassword ?? this.oldPassword,
    newPassword: newPassword ?? this.newPassword,
    newHint: newHint ?? this.newHint,
    setRecoveryEmailAddress: setRecoveryEmailAddress ?? this.setRecoveryEmailAddress,
    newRecoveryEmailAddress: newRecoveryEmailAddress ?? this.newRecoveryEmailAddress,
  );

  static const String objectType = 'setPassword';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

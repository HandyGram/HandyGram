part of '../tdapi.dart';

/// **SetRecoveryEmailAddress** *(setRecoveryEmailAddress)* - TDLib function
///
/// Changes the 2-step verification recovery email address of the user. If a new recovery email address is specified, then the change will not be applied until the new recovery email address is confirmed.. If new_recovery_email_address is the same as the email address that is currently set up, this call succeeds immediately and aborts all other requests waiting for an email confirmation.
///
/// * [password]: The 2-step verification password of the current user.
/// * [newRecoveryEmailAddress]: New recovery email address.
///
/// [PasswordState] is returned on completion.
final class SetRecoveryEmailAddress extends TdFunction {
  
  /// **SetRecoveryEmailAddress** *(setRecoveryEmailAddress)* - TDLib function
  ///
  /// Changes the 2-step verification recovery email address of the user. If a new recovery email address is specified, then the change will not be applied until the new recovery email address is confirmed.. If new_recovery_email_address is the same as the email address that is currently set up, this call succeeds immediately and aborts all other requests waiting for an email confirmation.
  ///
  /// * [password]: The 2-step verification password of the current user.
  /// * [newRecoveryEmailAddress]: New recovery email address.
  ///
  /// [PasswordState] is returned on completion.
  const SetRecoveryEmailAddress({
    required this.password,
    required this.newRecoveryEmailAddress,
  });
  
  /// The 2-step verification password of the current user
  final String password;

  /// New recovery email address
  final String newRecoveryEmailAddress;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "password": password,
      "new_recovery_email_address": newRecoveryEmailAddress,
      "@extra": extra,
		};
	}

  
  SetRecoveryEmailAddress copyWith({
    String? password,
    String? newRecoveryEmailAddress,
  }) => SetRecoveryEmailAddress(
    password: password ?? this.password,
    newRecoveryEmailAddress: newRecoveryEmailAddress ?? this.newRecoveryEmailAddress,
  );

  static const String objectType = 'setRecoveryEmailAddress';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

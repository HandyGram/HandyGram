part of '../tdapi.dart';

/// **DeleteAccount** *(deleteAccount)* - TDLib function
///
/// Deletes the account of the current user, deleting all information associated with the user from the server. The phone number of the account can be used to create a new account.. Can be called before authorization when the current authorization state is authorizationStateWaitPassword.
///
/// * [reason]: The reason why the account was deleted; optional.
/// * [password]: The 2-step verification password of the current user. If not specified, account deletion can be canceled within one week.
///
/// [Ok] is returned on completion.
final class DeleteAccount extends TdFunction {
  
  /// **DeleteAccount** *(deleteAccount)* - TDLib function
  ///
  /// Deletes the account of the current user, deleting all information associated with the user from the server. The phone number of the account can be used to create a new account.. Can be called before authorization when the current authorization state is authorizationStateWaitPassword.
  ///
  /// * [reason]: The reason why the account was deleted; optional.
  /// * [password]: The 2-step verification password of the current user. If not specified, account deletion can be canceled within one week.
  ///
  /// [Ok] is returned on completion.
  const DeleteAccount({
    required this.reason,
    required this.password,
  });
  
  /// The reason why the account was deleted; optional
  final String reason;

  /// The 2-step verification password of the current user. If not specified, account deletion can be canceled within one week
  final String password;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "reason": reason,
      "password": password,
      "@extra": extra,
		};
	}

  
  DeleteAccount copyWith({
    String? reason,
    String? password,
  }) => DeleteAccount(
    reason: reason ?? this.reason,
    password: password ?? this.password,
  );

  static const String objectType = 'deleteAccount';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

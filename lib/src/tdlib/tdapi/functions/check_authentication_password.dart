part of '../tdapi.dart';

/// **CheckAuthenticationPassword** *(checkAuthenticationPassword)* - TDLib function
///
/// Checks the 2-step verification password for correctness. Works only when the current authorization state is authorizationStateWaitPassword.
///
/// * [password]: The 2-step verification password to check.
///
/// [Ok] is returned on completion.
final class CheckAuthenticationPassword extends TdFunction {
  
  /// **CheckAuthenticationPassword** *(checkAuthenticationPassword)* - TDLib function
  ///
  /// Checks the 2-step verification password for correctness. Works only when the current authorization state is authorizationStateWaitPassword.
  ///
  /// * [password]: The 2-step verification password to check.
  ///
  /// [Ok] is returned on completion.
  const CheckAuthenticationPassword({
    required this.password,
  });
  
  /// The 2-step verification password to check
  final String password;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "password": password,
      "@extra": extra,
		};
	}

  
  CheckAuthenticationPassword copyWith({
    String? password,
  }) => CheckAuthenticationPassword(
    password: password ?? this.password,
  );

  static const String objectType = 'checkAuthenticationPassword';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

part of '../tdapi.dart';

/// **CheckAuthenticationPassword** *(checkAuthenticationPassword)* - TDLib function
  ///
  /// Checks the 2-step verification password for correctness. Works only when the current authorization state is authorizationStateWaitPassword.
  ///
  /// * [password]: The 2-step verification password to check.
  ///
  /// [Ok] is returned on completion.
class CheckAuthenticationPassword extends TdFunction {
  
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
      "@type": constructor,
      "password": password,
      "@extra": extra,
    };
  }
  
  CheckAuthenticationPassword copyWith({
    String? password,
  }) => CheckAuthenticationPassword(
    password: password ?? this.password,
  );

  static const String constructor = 'checkAuthenticationPassword';
  
  @override
  String getConstructor() => constructor;
}

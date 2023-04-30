part of '../tdapi.dart';

/// **CheckAuthenticationEmailCode** *(checkAuthenticationEmailCode)* - TDLib function
  ///
  /// Checks the authentication of a email address. Works only when the current authorization state is authorizationStateWaitEmailCode.
  ///
  /// * [code]: Email address authentication to check.
  ///
  /// [Ok] is returned on completion.
class CheckAuthenticationEmailCode extends TdFunction {
  
  /// **CheckAuthenticationEmailCode** *(checkAuthenticationEmailCode)* - TDLib function
  ///
  /// Checks the authentication of a email address. Works only when the current authorization state is authorizationStateWaitEmailCode.
  ///
  /// * [code]: Email address authentication to check.
  ///
  /// [Ok] is returned on completion.
  const CheckAuthenticationEmailCode({
    required this.code,
  });
  
  /// Email address authentication to check
  final EmailAddressAuthentication code;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "code": code.toJson(),
      "@extra": extra,
    };
  }
  
  CheckAuthenticationEmailCode copyWith({
    EmailAddressAuthentication? code,
  }) => CheckAuthenticationEmailCode(
    code: code ?? this.code,
  );

  static const String constructor = 'checkAuthenticationEmailCode';
  
  @override
  String getConstructor() => constructor;
}

part of '../tdapi.dart';

/// **CheckAuthenticationCode** *(checkAuthenticationCode)* - TDLib function
  ///
  /// Checks the authentication code. Works only when the current authorization state is authorizationStateWaitCode.
  ///
  /// * [code]: Authentication code to check.
  ///
  /// [Ok] is returned on completion.
class CheckAuthenticationCode extends TdFunction {
  
  /// **CheckAuthenticationCode** *(checkAuthenticationCode)* - TDLib function
  ///
  /// Checks the authentication code. Works only when the current authorization state is authorizationStateWaitCode.
  ///
  /// * [code]: Authentication code to check.
  ///
  /// [Ok] is returned on completion.
  const CheckAuthenticationCode({
    required this.code,
  });
  
  /// Authentication code to check
  final String code;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "code": code,
      "@extra": extra,
    };
  }
  
  CheckAuthenticationCode copyWith({
    String? code,
  }) => CheckAuthenticationCode(
    code: code ?? this.code,
  );

  static const String constructor = 'checkAuthenticationCode';
  
  @override
  String getConstructor() => constructor;
}

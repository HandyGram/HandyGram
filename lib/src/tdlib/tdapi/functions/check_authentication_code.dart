part of '../tdapi.dart';

/// **CheckAuthenticationCode** *(checkAuthenticationCode)* - TDLib function
///
/// Checks the authentication code. Works only when the current authorization state is authorizationStateWaitCode.
///
/// * [code]: Authentication code to check.
///
/// [Ok] is returned on completion.
final class CheckAuthenticationCode extends TdFunction {
  
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
			"@type": objectType,
      "code": code,
      "@extra": extra,
		};
	}

  
  CheckAuthenticationCode copyWith({
    String? code,
  }) => CheckAuthenticationCode(
    code: code ?? this.code,
  );

  static const String objectType = 'checkAuthenticationCode';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

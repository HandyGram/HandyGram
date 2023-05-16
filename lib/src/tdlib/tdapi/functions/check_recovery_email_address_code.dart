part of '../tdapi.dart';

/// **CheckRecoveryEmailAddressCode** *(checkRecoveryEmailAddressCode)* - TDLib function
///
/// Checks the 2-step verification recovery email address verification code.
///
/// * [code]: Verification code to check.
///
/// [PasswordState] is returned on completion.
final class CheckRecoveryEmailAddressCode extends TdFunction {
  
  /// **CheckRecoveryEmailAddressCode** *(checkRecoveryEmailAddressCode)* - TDLib function
  ///
  /// Checks the 2-step verification recovery email address verification code.
  ///
  /// * [code]: Verification code to check.
  ///
  /// [PasswordState] is returned on completion.
  const CheckRecoveryEmailAddressCode({
    required this.code,
  });
  
  /// Verification code to check
  final String code;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "code": code,
      "@extra": extra,
		};
	}

  
  CheckRecoveryEmailAddressCode copyWith({
    String? code,
  }) => CheckRecoveryEmailAddressCode(
    code: code ?? this.code,
  );

  static const String objectType = 'checkRecoveryEmailAddressCode';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

part of '../tdapi.dart';

/// **CheckPhoneNumberVerificationCode** *(checkPhoneNumberVerificationCode)* - TDLib function
///
/// Checks the phone number verification code for Telegram Passport.
///
/// * [code]: Verification code to check.
///
/// [Ok] is returned on completion.
final class CheckPhoneNumberVerificationCode extends TdFunction {
  
  /// **CheckPhoneNumberVerificationCode** *(checkPhoneNumberVerificationCode)* - TDLib function
  ///
  /// Checks the phone number verification code for Telegram Passport.
  ///
  /// * [code]: Verification code to check.
  ///
  /// [Ok] is returned on completion.
  const CheckPhoneNumberVerificationCode({
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

  
  CheckPhoneNumberVerificationCode copyWith({
    String? code,
  }) => CheckPhoneNumberVerificationCode(
    code: code ?? this.code,
  );

  static const String objectType = 'checkPhoneNumberVerificationCode';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

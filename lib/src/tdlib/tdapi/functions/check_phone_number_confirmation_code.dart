part of '../tdapi.dart';

/// **CheckPhoneNumberConfirmationCode** *(checkPhoneNumberConfirmationCode)* - TDLib function
///
/// Checks phone number confirmation code.
///
/// * [code]: Confirmation code to check.
///
/// [Ok] is returned on completion.
final class CheckPhoneNumberConfirmationCode extends TdFunction {
  
  /// **CheckPhoneNumberConfirmationCode** *(checkPhoneNumberConfirmationCode)* - TDLib function
  ///
  /// Checks phone number confirmation code.
  ///
  /// * [code]: Confirmation code to check.
  ///
  /// [Ok] is returned on completion.
  const CheckPhoneNumberConfirmationCode({
    required this.code,
  });
  
  /// Confirmation code to check
  final String code;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "code": code,
      "@extra": extra,
		};
	}

  
  CheckPhoneNumberConfirmationCode copyWith({
    String? code,
  }) => CheckPhoneNumberConfirmationCode(
    code: code ?? this.code,
  );

  static const String objectType = 'checkPhoneNumberConfirmationCode';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

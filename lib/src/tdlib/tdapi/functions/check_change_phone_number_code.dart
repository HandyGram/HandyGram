part of '../tdapi.dart';

/// **CheckChangePhoneNumberCode** *(checkChangePhoneNumberCode)* - TDLib function
///
/// Checks the authentication code sent to confirm a new phone number of the user.
///
/// * [code]: Authentication code to check.
///
/// [Ok] is returned on completion.
final class CheckChangePhoneNumberCode extends TdFunction {
  
  /// **CheckChangePhoneNumberCode** *(checkChangePhoneNumberCode)* - TDLib function
  ///
  /// Checks the authentication code sent to confirm a new phone number of the user.
  ///
  /// * [code]: Authentication code to check.
  ///
  /// [Ok] is returned on completion.
  const CheckChangePhoneNumberCode({
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

  
  CheckChangePhoneNumberCode copyWith({
    String? code,
  }) => CheckChangePhoneNumberCode(
    code: code ?? this.code,
  );

  static const String objectType = 'checkChangePhoneNumberCode';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

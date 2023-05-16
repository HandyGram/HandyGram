part of '../tdapi.dart';

/// **CheckLoginEmailAddressCode** *(checkLoginEmailAddressCode)* - TDLib function
///
/// Checks the login email address authentication.
///
/// * [code]: Email address authentication to check.
///
/// [Ok] is returned on completion.
final class CheckLoginEmailAddressCode extends TdFunction {
  
  /// **CheckLoginEmailAddressCode** *(checkLoginEmailAddressCode)* - TDLib function
  ///
  /// Checks the login email address authentication.
  ///
  /// * [code]: Email address authentication to check.
  ///
  /// [Ok] is returned on completion.
  const CheckLoginEmailAddressCode({
    required this.code,
  });
  
  /// Email address authentication to check
  final EmailAddressAuthentication code;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "code": code.toJson(),
      "@extra": extra,
		};
	}

  
  CheckLoginEmailAddressCode copyWith({
    EmailAddressAuthentication? code,
  }) => CheckLoginEmailAddressCode(
    code: code ?? this.code,
  );

  static const String objectType = 'checkLoginEmailAddressCode';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

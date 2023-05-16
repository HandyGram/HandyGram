part of '../tdapi.dart';

/// **ResendLoginEmailAddressCode** *(resendLoginEmailAddressCode)* - TDLib function
///
/// Resends the login email address verification code.
///
/// [EmailAddressAuthenticationCodeInfo] is returned on completion.
final class ResendLoginEmailAddressCode extends TdFunction {
  
  /// **ResendLoginEmailAddressCode** *(resendLoginEmailAddressCode)* - TDLib function
  ///
  /// Resends the login email address verification code.
  ///
  /// [EmailAddressAuthenticationCodeInfo] is returned on completion.
  const ResendLoginEmailAddressCode();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "@extra": extra,
		};
	}

  
  ResendLoginEmailAddressCode copyWith() => const ResendLoginEmailAddressCode();

  static const String objectType = 'resendLoginEmailAddressCode';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

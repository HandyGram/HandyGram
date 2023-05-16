part of '../tdapi.dart';

/// **ResendChangePhoneNumberCode** *(resendChangePhoneNumberCode)* - TDLib function
///
/// Resends the authentication code sent to confirm a new phone number for the current user. Works only if the previously received authenticationCodeInfo next_code_type was not null and the server-specified timeout has passed.
///
/// [AuthenticationCodeInfo] is returned on completion.
final class ResendChangePhoneNumberCode extends TdFunction {
  
  /// **ResendChangePhoneNumberCode** *(resendChangePhoneNumberCode)* - TDLib function
  ///
  /// Resends the authentication code sent to confirm a new phone number for the current user. Works only if the previously received authenticationCodeInfo next_code_type was not null and the server-specified timeout has passed.
  ///
  /// [AuthenticationCodeInfo] is returned on completion.
  const ResendChangePhoneNumberCode();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "@extra": extra,
		};
	}

  
  ResendChangePhoneNumberCode copyWith() => const ResendChangePhoneNumberCode();

  static const String objectType = 'resendChangePhoneNumberCode';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

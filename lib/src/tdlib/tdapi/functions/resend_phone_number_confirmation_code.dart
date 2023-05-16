part of '../tdapi.dart';

/// **ResendPhoneNumberConfirmationCode** *(resendPhoneNumberConfirmationCode)* - TDLib function
///
/// Resends phone number confirmation code.
///
/// [AuthenticationCodeInfo] is returned on completion.
final class ResendPhoneNumberConfirmationCode extends TdFunction {
  
  /// **ResendPhoneNumberConfirmationCode** *(resendPhoneNumberConfirmationCode)* - TDLib function
  ///
  /// Resends phone number confirmation code.
  ///
  /// [AuthenticationCodeInfo] is returned on completion.
  const ResendPhoneNumberConfirmationCode();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "@extra": extra,
		};
	}

  
  ResendPhoneNumberConfirmationCode copyWith() => const ResendPhoneNumberConfirmationCode();

  static const String objectType = 'resendPhoneNumberConfirmationCode';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

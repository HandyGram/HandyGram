part of '../tdapi.dart';

/// **ResendPhoneNumberConfirmationCode** *(resendPhoneNumberConfirmationCode)* - TDLib function
  ///
  /// Resends phone number confirmation code.
  ///
  /// [AuthenticationCodeInfo] is returned on completion.
class ResendPhoneNumberConfirmationCode extends TdFunction {
  
  /// **ResendPhoneNumberConfirmationCode** *(resendPhoneNumberConfirmationCode)* - TDLib function
  ///
  /// Resends phone number confirmation code.
  ///
  /// [AuthenticationCodeInfo] is returned on completion.
  const ResendPhoneNumberConfirmationCode();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "@extra": extra,
    };
  }
  
  ResendPhoneNumberConfirmationCode copyWith() => const ResendPhoneNumberConfirmationCode();

  static const String constructor = 'resendPhoneNumberConfirmationCode';
  
  @override
  String getConstructor() => constructor;
}

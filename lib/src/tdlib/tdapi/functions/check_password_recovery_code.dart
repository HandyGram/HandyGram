part of '../tdapi.dart';

/// **CheckPasswordRecoveryCode** *(checkPasswordRecoveryCode)* - TDLib function
  ///
  /// Checks whether a 2-step verification password recovery code sent to an email address is valid.
  ///
  /// * [recoveryCode]: Recovery code to check.
  ///
  /// [Ok] is returned on completion.
class CheckPasswordRecoveryCode extends TdFunction {
  
  /// **CheckPasswordRecoveryCode** *(checkPasswordRecoveryCode)* - TDLib function
  ///
  /// Checks whether a 2-step verification password recovery code sent to an email address is valid.
  ///
  /// * [recoveryCode]: Recovery code to check.
  ///
  /// [Ok] is returned on completion.
  const CheckPasswordRecoveryCode({
    required this.recoveryCode,
  });
  
  /// Recovery code to check
  final String recoveryCode;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "recovery_code": recoveryCode,
      "@extra": extra,
    };
  }
  
  CheckPasswordRecoveryCode copyWith({
    String? recoveryCode,
  }) => CheckPasswordRecoveryCode(
    recoveryCode: recoveryCode ?? this.recoveryCode,
  );

  static const String constructor = 'checkPasswordRecoveryCode';
  
  @override
  String getConstructor() => constructor;
}

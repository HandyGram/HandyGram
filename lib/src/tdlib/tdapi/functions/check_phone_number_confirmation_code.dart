part of '../tdapi.dart';

/// **CheckPhoneNumberConfirmationCode** *(checkPhoneNumberConfirmationCode)* - TDLib function
  ///
  /// Checks phone number confirmation code.
  ///
  /// * [code]: Confirmation code to check.
  ///
  /// [Ok] is returned on completion.
class CheckPhoneNumberConfirmationCode extends TdFunction {
  
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
      "@type": constructor,
      "code": code,
      "@extra": extra,
    };
  }
  
  CheckPhoneNumberConfirmationCode copyWith({
    String? code,
  }) => CheckPhoneNumberConfirmationCode(
    code: code ?? this.code,
  );

  static const String constructor = 'checkPhoneNumberConfirmationCode';
  
  @override
  String getConstructor() => constructor;
}

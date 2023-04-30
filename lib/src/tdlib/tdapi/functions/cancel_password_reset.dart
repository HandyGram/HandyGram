part of '../tdapi.dart';

/// **CancelPasswordReset** *(cancelPasswordReset)* - TDLib function
  ///
  /// Cancels reset of 2-step verification password. The method can be called if passwordState.pending_reset_date.
  ///
  /// [Ok] is returned on completion.
class CancelPasswordReset extends TdFunction {
  
  /// **CancelPasswordReset** *(cancelPasswordReset)* - TDLib function
  ///
  /// Cancels reset of 2-step verification password. The method can be called if passwordState.pending_reset_date.
  ///
  /// [Ok] is returned on completion.
  const CancelPasswordReset();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "@extra": extra,
    };
  }
  
  CancelPasswordReset copyWith() => const CancelPasswordReset();

  static const String constructor = 'cancelPasswordReset';
  
  @override
  String getConstructor() => constructor;
}

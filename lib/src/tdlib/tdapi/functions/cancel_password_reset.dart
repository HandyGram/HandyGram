part of '../tdapi.dart';

/// **CancelPasswordReset** *(cancelPasswordReset)* - TDLib function
///
/// Cancels reset of 2-step verification password. The method can be called if passwordState.pending_reset_date.
///
/// [Ok] is returned on completion.
final class CancelPasswordReset extends TdFunction {
  
  /// **CancelPasswordReset** *(cancelPasswordReset)* - TDLib function
  ///
  /// Cancels reset of 2-step verification password. The method can be called if passwordState.pending_reset_date.
  ///
  /// [Ok] is returned on completion.
  const CancelPasswordReset();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "@extra": extra,
		};
	}

  
  CancelPasswordReset copyWith() => const CancelPasswordReset();

  static const String objectType = 'cancelPasswordReset';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

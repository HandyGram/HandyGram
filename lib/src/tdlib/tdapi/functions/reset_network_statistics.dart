part of '../tdapi.dart';

/// **ResetNetworkStatistics** *(resetNetworkStatistics)* - TDLib function
///
/// Resets all network data usage statistics to zero. Can be called before authorization.
///
/// [Ok] is returned on completion.
final class ResetNetworkStatistics extends TdFunction {
  
  /// **ResetNetworkStatistics** *(resetNetworkStatistics)* - TDLib function
  ///
  /// Resets all network data usage statistics to zero. Can be called before authorization.
  ///
  /// [Ok] is returned on completion.
  const ResetNetworkStatistics();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "@extra": extra,
		};
	}

  
  ResetNetworkStatistics copyWith() => const ResetNetworkStatistics();

  static const String objectType = 'resetNetworkStatistics';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

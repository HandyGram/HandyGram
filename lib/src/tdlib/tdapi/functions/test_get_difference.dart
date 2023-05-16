part of '../tdapi.dart';

/// **TestGetDifference** *(testGetDifference)* - TDLib function
///
/// Forces an updates.getDifference call to the Telegram servers; for testing only.
///
/// [Ok] is returned on completion.
final class TestGetDifference extends TdFunction {
  
  /// **TestGetDifference** *(testGetDifference)* - TDLib function
  ///
  /// Forces an updates.getDifference call to the Telegram servers; for testing only.
  ///
  /// [Ok] is returned on completion.
  const TestGetDifference();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "@extra": extra,
		};
	}

  
  TestGetDifference copyWith() => const TestGetDifference();

  static const String objectType = 'testGetDifference';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

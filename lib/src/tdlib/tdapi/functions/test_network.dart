part of '../tdapi.dart';

/// **TestNetwork** *(testNetwork)* - TDLib function
///
/// Sends a simple network request to the Telegram servers; for testing only. Can be called before authorization.
///
/// [Ok] is returned on completion.
final class TestNetwork extends TdFunction {
  
  /// **TestNetwork** *(testNetwork)* - TDLib function
  ///
  /// Sends a simple network request to the Telegram servers; for testing only. Can be called before authorization.
  ///
  /// [Ok] is returned on completion.
  const TestNetwork();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "@extra": extra,
		};
	}

  
  TestNetwork copyWith() => const TestNetwork();

  static const String objectType = 'testNetwork';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

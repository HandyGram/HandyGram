part of '../tdapi.dart';

/// **TestReturnError** *(testReturnError)* - TDLib function
///
/// Returns the specified error and ensures that the Error object is used; for testing only. Can be called synchronously.
///
/// * [error]: The error to be returned.
///
/// [Error] is returned on completion.
final class TestReturnError extends TdFunction {
  
  /// **TestReturnError** *(testReturnError)* - TDLib function
  ///
  /// Returns the specified error and ensures that the Error object is used; for testing only. Can be called synchronously.
  ///
  /// * [error]: The error to be returned.
  ///
  /// [Error] is returned on completion.
  const TestReturnError({
    required this.error,
  });
  
  /// The error to be returned
  final TdError error;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "error": error.toJson(),
      "@extra": extra,
		};
	}

  
  TestReturnError copyWith({
    TdError? error,
  }) => TestReturnError(
    error: error ?? this.error,
  );

  static const String objectType = 'testReturnError';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

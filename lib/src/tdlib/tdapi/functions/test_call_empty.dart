part of '../tdapi.dart';

/// **TestCallEmpty** *(testCallEmpty)* - TDLib function
  ///
  /// Does nothing; for testing only. This is an offline method. Can be called before authorization.
  ///
  /// [Ok] is returned on completion.
class TestCallEmpty extends TdFunction {
  
  /// **TestCallEmpty** *(testCallEmpty)* - TDLib function
  ///
  /// Does nothing; for testing only. This is an offline method. Can be called before authorization.
  ///
  /// [Ok] is returned on completion.
  const TestCallEmpty();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "@extra": extra,
    };
  }
  
  TestCallEmpty copyWith() => const TestCallEmpty();

  static const String constructor = 'testCallEmpty';
  
  @override
  String getConstructor() => constructor;
}

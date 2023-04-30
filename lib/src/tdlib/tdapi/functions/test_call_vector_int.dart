part of '../tdapi.dart';

/// **TestCallVectorInt** *(testCallVectorInt)* - TDLib function
  ///
  /// Returns the received vector of numbers; for testing only. This is an offline method. Can be called before authorization.
  ///
  /// * [x]: Vector of numbers to return.
  ///
  /// [TestVectorInt] is returned on completion.
class TestCallVectorInt extends TdFunction {
  
  /// **TestCallVectorInt** *(testCallVectorInt)* - TDLib function
  ///
  /// Returns the received vector of numbers; for testing only. This is an offline method. Can be called before authorization.
  ///
  /// * [x]: Vector of numbers to return.
  ///
  /// [TestVectorInt] is returned on completion.
  const TestCallVectorInt({
    required this.x,
  });
  
  /// Vector of numbers to return
  final List<int> x;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "x": x.map((i) => i).toList(),
      "@extra": extra,
    };
  }
  
  TestCallVectorInt copyWith({
    List<int>? x,
  }) => TestCallVectorInt(
    x: x ?? this.x,
  );

  static const String constructor = 'testCallVectorInt';
  
  @override
  String getConstructor() => constructor;
}

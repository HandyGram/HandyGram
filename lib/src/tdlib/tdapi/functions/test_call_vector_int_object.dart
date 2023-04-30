part of '../tdapi.dart';

/// **TestCallVectorIntObject** *(testCallVectorIntObject)* - TDLib function
  ///
  /// Returns the received vector of objects containing a number; for testing only. This is an offline method. Can be called before authorization.
  ///
  /// * [x]: Vector of objects to return.
  ///
  /// [TestVectorIntObject] is returned on completion.
class TestCallVectorIntObject extends TdFunction {
  
  /// **TestCallVectorIntObject** *(testCallVectorIntObject)* - TDLib function
  ///
  /// Returns the received vector of objects containing a number; for testing only. This is an offline method. Can be called before authorization.
  ///
  /// * [x]: Vector of objects to return.
  ///
  /// [TestVectorIntObject] is returned on completion.
  const TestCallVectorIntObject({
    required this.x,
  });
  
  /// Vector of objects to return
  final List<TestInt> x;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "x": x.map((i) => i.toJson()).toList(),
      "@extra": extra,
    };
  }
  
  TestCallVectorIntObject copyWith({
    List<TestInt>? x,
  }) => TestCallVectorIntObject(
    x: x ?? this.x,
  );

  static const String constructor = 'testCallVectorIntObject';
  
  @override
  String getConstructor() => constructor;
}

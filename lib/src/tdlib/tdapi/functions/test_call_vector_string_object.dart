part of '../tdapi.dart';

/// **TestCallVectorStringObject** *(testCallVectorStringObject)* - TDLib function
  ///
  /// Returns the received vector of objects containing a string; for testing only. This is an offline method. Can be called before authorization.
  ///
  /// * [x]: Vector of objects to return.
  ///
  /// [TestVectorStringObject] is returned on completion.
class TestCallVectorStringObject extends TdFunction {
  
  /// **TestCallVectorStringObject** *(testCallVectorStringObject)* - TDLib function
  ///
  /// Returns the received vector of objects containing a string; for testing only. This is an offline method. Can be called before authorization.
  ///
  /// * [x]: Vector of objects to return.
  ///
  /// [TestVectorStringObject] is returned on completion.
  const TestCallVectorStringObject({
    required this.x,
  });
  
  /// Vector of objects to return
  final List<TestString> x;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "x": x.map((i) => i.toJson()).toList(),
      "@extra": extra,
    };
  }
  
  TestCallVectorStringObject copyWith({
    List<TestString>? x,
  }) => TestCallVectorStringObject(
    x: x ?? this.x,
  );

  static const String constructor = 'testCallVectorStringObject';
  
  @override
  String getConstructor() => constructor;
}

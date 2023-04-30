part of '../tdapi.dart';

/// **TestCallString** *(testCallString)* - TDLib function
  ///
  /// Returns the received string; for testing only. This is an offline method. Can be called before authorization.
  ///
  /// * [x]: String to return.
  ///
  /// [TestString] is returned on completion.
class TestCallString extends TdFunction {
  
  /// **TestCallString** *(testCallString)* - TDLib function
  ///
  /// Returns the received string; for testing only. This is an offline method. Can be called before authorization.
  ///
  /// * [x]: String to return.
  ///
  /// [TestString] is returned on completion.
  const TestCallString({
    required this.x,
  });
  
  /// String to return
  final String x;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "x": x,
      "@extra": extra,
    };
  }
  
  TestCallString copyWith({
    String? x,
  }) => TestCallString(
    x: x ?? this.x,
  );

  static const String constructor = 'testCallString';
  
  @override
  String getConstructor() => constructor;
}

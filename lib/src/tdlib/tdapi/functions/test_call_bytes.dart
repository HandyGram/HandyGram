part of '../tdapi.dart';

/// **TestCallBytes** *(testCallBytes)* - TDLib function
  ///
  /// Returns the received bytes; for testing only. This is an offline method. Can be called before authorization.
  ///
  /// * [x]: Bytes to return.
  ///
  /// [TestBytes] is returned on completion.
class TestCallBytes extends TdFunction {
  
  /// **TestCallBytes** *(testCallBytes)* - TDLib function
  ///
  /// Returns the received bytes; for testing only. This is an offline method. Can be called before authorization.
  ///
  /// * [x]: Bytes to return.
  ///
  /// [TestBytes] is returned on completion.
  const TestCallBytes({
    required this.x,
  });
  
  /// Bytes to return
  final String x;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "x": x,
      "@extra": extra,
    };
  }
  
  TestCallBytes copyWith({
    String? x,
  }) => TestCallBytes(
    x: x ?? this.x,
  );

  static const String constructor = 'testCallBytes';
  
  @override
  String getConstructor() => constructor;
}

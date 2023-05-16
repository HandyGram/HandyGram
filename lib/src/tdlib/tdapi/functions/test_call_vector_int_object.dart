part of '../tdapi.dart';

/// **TestCallVectorIntObject** *(testCallVectorIntObject)* - TDLib function
///
/// Returns the received vector of objects containing a number; for testing only. This is an offline method. Can be called before authorization.
///
/// * [x]: Vector of objects to return.
///
/// [TestVectorIntObject] is returned on completion.
final class TestCallVectorIntObject extends TdFunction {
  
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
			"@type": objectType,
      "x": x.map((i) => i.toJson()).toList(),
      "@extra": extra,
		};
	}

  
  TestCallVectorIntObject copyWith({
    List<TestInt>? x,
  }) => TestCallVectorIntObject(
    x: x ?? this.x,
  );

  static const String objectType = 'testCallVectorIntObject';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

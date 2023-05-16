part of '../tdapi.dart';

/// **TestCallVectorString** *(testCallVectorString)* - TDLib function
///
/// Returns the received vector of strings; for testing only. This is an offline method. Can be called before authorization.
///
/// * [x]: Vector of strings to return.
///
/// [TestVectorString] is returned on completion.
final class TestCallVectorString extends TdFunction {
  
  /// **TestCallVectorString** *(testCallVectorString)* - TDLib function
  ///
  /// Returns the received vector of strings; for testing only. This is an offline method. Can be called before authorization.
  ///
  /// * [x]: Vector of strings to return.
  ///
  /// [TestVectorString] is returned on completion.
  const TestCallVectorString({
    required this.x,
  });
  
  /// Vector of strings to return
  final List<String> x;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "x": x.map((i) => i).toList(),
      "@extra": extra,
		};
	}

  
  TestCallVectorString copyWith({
    List<String>? x,
  }) => TestCallVectorString(
    x: x ?? this.x,
  );

  static const String objectType = 'testCallVectorString';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

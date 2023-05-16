part of '../tdapi.dart';

/// **TestVectorInt** *(testVectorInt)* - basic class
///
/// A simple object containing a vector of numbers; for testing only.
///
/// * [value]: Vector of numbers.
final class TestVectorInt extends TdObject {
  
  /// **TestVectorInt** *(testVectorInt)* - basic class
  ///
  /// A simple object containing a vector of numbers; for testing only.
  ///
  /// * [value]: Vector of numbers.
  const TestVectorInt({
    required this.value,
    this.extra,
    this.clientId,
  });
  
  /// Vector of numbers
  final List<int> value;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory TestVectorInt.fromJson(Map<String, dynamic> json) => TestVectorInt(
    value: List<int>.from((json['value'] ?? []).map((item) => item).toList()),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "value": value.map((i) => i).toList(),
		};
	}

  
  TestVectorInt copyWith({
    List<int>? value,
    dynamic extra,
    int? clientId,
  }) => TestVectorInt(
    value: value ?? this.value,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'testVectorInt';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

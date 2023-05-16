part of '../tdapi.dart';

/// **TestVectorIntObject** *(testVectorIntObject)* - basic class
///
/// A simple object containing a vector of objects that hold a number; for testing only.
///
/// * [value]: Vector of objects.
final class TestVectorIntObject extends TdObject {
  
  /// **TestVectorIntObject** *(testVectorIntObject)* - basic class
  ///
  /// A simple object containing a vector of objects that hold a number; for testing only.
  ///
  /// * [value]: Vector of objects.
  const TestVectorIntObject({
    required this.value,
    this.extra,
    this.clientId,
  });
  
  /// Vector of objects
  final List<TestInt> value;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory TestVectorIntObject.fromJson(Map<String, dynamic> json) => TestVectorIntObject(
    value: List<TestInt>.from((json['value'] ?? []).map((item) => TestInt.fromJson(item)).toList()),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "value": value.map((i) => i.toJson()).toList(),
		};
	}

  
  TestVectorIntObject copyWith({
    List<TestInt>? value,
    dynamic extra,
    int? clientId,
  }) => TestVectorIntObject(
    value: value ?? this.value,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'testVectorIntObject';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

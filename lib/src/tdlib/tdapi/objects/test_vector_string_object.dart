part of '../tdapi.dart';

/// **TestVectorStringObject** *(testVectorStringObject)* - basic class
///
/// A simple object containing a vector of objects that hold a string; for testing only.
///
/// * [value]: Vector of objects.
final class TestVectorStringObject extends TdObject {
  
  /// **TestVectorStringObject** *(testVectorStringObject)* - basic class
  ///
  /// A simple object containing a vector of objects that hold a string; for testing only.
  ///
  /// * [value]: Vector of objects.
  const TestVectorStringObject({
    required this.value,
    this.extra,
    this.clientId,
  });
  
  /// Vector of objects
  final List<TestString> value;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory TestVectorStringObject.fromJson(Map<String, dynamic> json) => TestVectorStringObject(
    value: List<TestString>.from((json['value'] ?? []).map((item) => TestString.fromJson(item)).toList()),
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

  
  TestVectorStringObject copyWith({
    List<TestString>? value,
    dynamic extra,
    int? clientId,
  }) => TestVectorStringObject(
    value: value ?? this.value,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'testVectorStringObject';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

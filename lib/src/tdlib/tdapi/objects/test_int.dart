part of '../tdapi.dart';

/// **TestInt** *(testInt)* - basic class
///
/// A simple object containing a number; for testing only.
///
/// * [value]: Number.
final class TestInt extends TdObject {
  
  /// **TestInt** *(testInt)* - basic class
  ///
  /// A simple object containing a number; for testing only.
  ///
  /// * [value]: Number.
  const TestInt({
    required this.value,
    this.extra,
    this.clientId,
  });
  
  /// Number
  final int value;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory TestInt.fromJson(Map<String, dynamic> json) => TestInt(
    value: json['value'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "value": value,
		};
	}

  
  TestInt copyWith({
    int? value,
    dynamic extra,
    int? clientId,
  }) => TestInt(
    value: value ?? this.value,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'testInt';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

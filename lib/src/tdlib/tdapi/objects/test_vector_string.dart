part of '../tdapi.dart';

/// **TestVectorString** *(testVectorString)* - basic class
///
/// A simple object containing a vector of strings; for testing only.
///
/// * [value]: Vector of strings.
final class TestVectorString extends TdObject {
  
  /// **TestVectorString** *(testVectorString)* - basic class
  ///
  /// A simple object containing a vector of strings; for testing only.
  ///
  /// * [value]: Vector of strings.
  const TestVectorString({
    required this.value,
    this.extra,
    this.clientId,
  });
  
  /// Vector of strings
  final List<String> value;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory TestVectorString.fromJson(Map<String, dynamic> json) => TestVectorString(
    value: List<String>.from((json['value'] ?? []).map((item) => item).toList()),
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

  
  TestVectorString copyWith({
    List<String>? value,
    dynamic extra,
    int? clientId,
  }) => TestVectorString(
    value: value ?? this.value,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'testVectorString';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

part of '../tdapi.dart';

/// **TestString** *(testString)* - basic class
  ///
  /// A simple object containing a string; for testing only.
  ///
  /// * [value]: String.
class TestString extends TdObject {
  
  /// **TestString** *(testString)* - basic class
  ///
  /// A simple object containing a string; for testing only.
  ///
  /// * [value]: String.
  const TestString({
    required this.value,
    this.extra,
    this.clientId,
  });
  
  /// String
  final String value;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory TestString.fromJson(Map<String, dynamic> json) => TestString(
    value: json['value'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "value": value,
    };
  }
  
  TestString copyWith({
    String? value,
    dynamic extra,
    int? clientId,
  }) => TestString(
    value: value ?? this.value,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String constructor = 'testString';
  
  @override
  String getConstructor() => constructor;
}

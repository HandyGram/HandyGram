part of '../tdapi.dart';

/// **JsonObjectMember** *(jsonObjectMember)* - basic class
///
/// Represents one member of a JSON object.
///
/// * [key]: Member's key.
/// * [value]: Member's value.
final class JsonObjectMember extends TdObject {
  
  /// **JsonObjectMember** *(jsonObjectMember)* - basic class
  ///
  /// Represents one member of a JSON object.
  ///
  /// * [key]: Member's key.
  /// * [value]: Member's value.
  const JsonObjectMember({
    required this.key,
    required this.value,
  });
  
  /// Member's key 
  final String key;

  /// Member's value
  final JsonValue value;
  
  /// Parse from a json
  factory JsonObjectMember.fromJson(Map<String, dynamic> json) => JsonObjectMember(
    key: json['key'],
    value: JsonValue.fromJson(json['value']),
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "key": key,
      "value": value.toJson(),
		};
	}

  
  JsonObjectMember copyWith({
    String? key,
    JsonValue? value,
  }) => JsonObjectMember(
    key: key ?? this.key,
    value: value ?? this.value,
  );

  static const String objectType = 'jsonObjectMember';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

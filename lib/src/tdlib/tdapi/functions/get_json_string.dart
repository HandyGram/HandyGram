part of '../tdapi.dart';

/// **GetJsonString** *(getJsonString)* - TDLib function
///
/// Converts a JsonValue object to corresponding JSON-serialized string. Can be called synchronously.
///
/// * [jsonValue]: The JsonValue object.
///
/// [Text] is returned on completion.
final class GetJsonString extends TdFunction {
  
  /// **GetJsonString** *(getJsonString)* - TDLib function
  ///
  /// Converts a JsonValue object to corresponding JSON-serialized string. Can be called synchronously.
  ///
  /// * [jsonValue]: The JsonValue object.
  ///
  /// [Text] is returned on completion.
  const GetJsonString({
    required this.jsonValue,
  });
  
  /// The JsonValue object
  final JsonValue jsonValue;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "json_value": jsonValue.toJson(),
      "@extra": extra,
		};
	}

  
  GetJsonString copyWith({
    JsonValue? jsonValue,
  }) => GetJsonString(
    jsonValue: jsonValue ?? this.jsonValue,
  );

  static const String objectType = 'getJsonString';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

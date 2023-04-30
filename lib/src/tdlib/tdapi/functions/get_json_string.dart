part of '../tdapi.dart';

/// **GetJsonString** *(getJsonString)* - TDLib function
  ///
  /// Converts a JsonValue object to corresponding JSON-serialized string. Can be called synchronously.
  ///
  /// * [jsonValue]: The JsonValue object.
  ///
  /// [Text] is returned on completion.
class GetJsonString extends TdFunction {
  
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
      "@type": constructor,
      "json_value": jsonValue.toJson(),
      "@extra": extra,
    };
  }
  
  GetJsonString copyWith({
    JsonValue? jsonValue,
  }) => GetJsonString(
    jsonValue: jsonValue ?? this.jsonValue,
  );

  static const String constructor = 'getJsonString';
  
  @override
  String getConstructor() => constructor;
}

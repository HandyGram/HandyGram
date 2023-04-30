part of '../tdapi.dart';

/// **GetJsonValue** *(getJsonValue)* - TDLib function
  ///
  /// Converts a JSON-serialized string to corresponding JsonValue object. Can be called synchronously.
  ///
  /// * [json]: The JSON-serialized string.
  ///
  /// [JsonValue] is returned on completion.
class GetJsonValue extends TdFunction {
  
  /// **GetJsonValue** *(getJsonValue)* - TDLib function
  ///
  /// Converts a JSON-serialized string to corresponding JsonValue object. Can be called synchronously.
  ///
  /// * [json]: The JSON-serialized string.
  ///
  /// [JsonValue] is returned on completion.
  const GetJsonValue({
    required this.json,
  });
  
  /// The JSON-serialized string
  final String json;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "json": json,
      "@extra": extra,
    };
  }
  
  GetJsonValue copyWith({
    String? json,
  }) => GetJsonValue(
    json: json ?? this.json,
  );

  static const String constructor = 'getJsonValue';
  
  @override
  String getConstructor() => constructor;
}

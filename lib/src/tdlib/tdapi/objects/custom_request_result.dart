part of '../tdapi.dart';

/// **CustomRequestResult** *(customRequestResult)* - basic class
  ///
  /// Contains the result of a custom request.
  ///
  /// * [result]: A JSON-serialized result.
class CustomRequestResult extends TdObject {
  
  /// **CustomRequestResult** *(customRequestResult)* - basic class
  ///
  /// Contains the result of a custom request.
  ///
  /// * [result]: A JSON-serialized result.
  const CustomRequestResult({
    required this.result,
    this.extra,
    this.clientId,
  });
  
  /// A JSON-serialized result
  final String result;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory CustomRequestResult.fromJson(Map<String, dynamic> json) => CustomRequestResult(
    result: json['result'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "result": result,
    };
  }
  
  CustomRequestResult copyWith({
    String? result,
    dynamic extra,
    int? clientId,
  }) => CustomRequestResult(
    result: result ?? this.result,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String constructor = 'customRequestResult';
  
  @override
  String getConstructor() => constructor;
}

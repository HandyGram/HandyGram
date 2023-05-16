part of '../tdapi.dart';

/// **SendCustomRequest** *(sendCustomRequest)* - TDLib function
///
/// Sends a custom request; for bots only.
///
/// * [method]: The method name.
/// * [parameters]: JSON-serialized method parameters.
///
/// [CustomRequestResult] is returned on completion.
final class SendCustomRequest extends TdFunction {
  
  /// **SendCustomRequest** *(sendCustomRequest)* - TDLib function
  ///
  /// Sends a custom request; for bots only.
  ///
  /// * [method]: The method name.
  /// * [parameters]: JSON-serialized method parameters.
  ///
  /// [CustomRequestResult] is returned on completion.
  const SendCustomRequest({
    required this.method,
    required this.parameters,
  });
  
  /// The method name 
  final String method;

  /// JSON-serialized method parameters
  final String parameters;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "method": method,
      "parameters": parameters,
      "@extra": extra,
		};
	}

  
  SendCustomRequest copyWith({
    String? method,
    String? parameters,
  }) => SendCustomRequest(
    method: method ?? this.method,
    parameters: parameters ?? this.parameters,
  );

  static const String objectType = 'sendCustomRequest';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

part of '../tdapi.dart';

/// **PassportElementError** *(passportElementError)* - basic class
///
/// Contains the description of an error in a Telegram Passport element.
///
/// * [type]: Type of the Telegram Passport element which has the error.
/// * [message]: Error message.
/// * [source]: Error source.
final class PassportElementError extends TdObject {
  
  /// **PassportElementError** *(passportElementError)* - basic class
  ///
  /// Contains the description of an error in a Telegram Passport element.
  ///
  /// * [type]: Type of the Telegram Passport element which has the error.
  /// * [message]: Error message.
  /// * [source]: Error source.
  const PassportElementError({
    required this.type,
    required this.message,
    required this.source,
  });
  
  /// Type of the Telegram Passport element which has the error 
  final PassportElementType type;

  /// Error message 
  final String message;

  /// Error source
  final PassportElementErrorSource source;
  
  /// Parse from a json
  factory PassportElementError.fromJson(Map<String, dynamic> json) => PassportElementError(
    type: PassportElementType.fromJson(json['type']),
    message: json['message'],
    source: PassportElementErrorSource.fromJson(json['source']),
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "type": type.toJson(),
      "message": message,
      "source": source.toJson(),
		};
	}

  
  PassportElementError copyWith({
    PassportElementType? type,
    String? message,
    PassportElementErrorSource? source,
  }) => PassportElementError(
    type: type ?? this.type,
    message: message ?? this.message,
    source: source ?? this.source,
  );

  static const String objectType = 'passportElementError';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

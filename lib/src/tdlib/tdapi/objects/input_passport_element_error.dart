part of '../tdapi.dart';

/// **InputPassportElementError** *(inputPassportElementError)* - basic class
///
/// Contains the description of an error in a Telegram Passport element; for bots only.
///
/// * [type]: Type of Telegram Passport element that has the error.
/// * [message]: Error message.
/// * [source]: Error source.
final class InputPassportElementError extends TdObject {
  
  /// **InputPassportElementError** *(inputPassportElementError)* - basic class
  ///
  /// Contains the description of an error in a Telegram Passport element; for bots only.
  ///
  /// * [type]: Type of Telegram Passport element that has the error.
  /// * [message]: Error message.
  /// * [source]: Error source.
  const InputPassportElementError({
    required this.type,
    required this.message,
    required this.source,
  });
  
  /// Type of Telegram Passport element that has the error 
  final PassportElementType type;

  /// Error message 
  final String message;

  /// Error source
  final InputPassportElementErrorSource source;
  
  /// Parse from a json
  factory InputPassportElementError.fromJson(Map<String, dynamic> json) => InputPassportElementError(
    type: PassportElementType.fromJson(json['type']),
    message: json['message'],
    source: InputPassportElementErrorSource.fromJson(json['source']),
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

  
  InputPassportElementError copyWith({
    PassportElementType? type,
    String? message,
    InputPassportElementErrorSource? source,
  }) => InputPassportElementError(
    type: type ?? this.type,
    message: message ?? this.message,
    source: source ?? this.source,
  );

  static const String objectType = 'inputPassportElementError';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

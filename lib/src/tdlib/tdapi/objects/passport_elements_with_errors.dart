part of '../tdapi.dart';

/// **PassportElementsWithErrors** *(passportElementsWithErrors)* - basic class
///
/// Contains information about a Telegram Passport elements and corresponding errors.
///
/// * [elements]: Telegram Passport elements.
/// * [errors]: Errors in the elements that are already available.
final class PassportElementsWithErrors extends TdObject {
  
  /// **PassportElementsWithErrors** *(passportElementsWithErrors)* - basic class
  ///
  /// Contains information about a Telegram Passport elements and corresponding errors.
  ///
  /// * [elements]: Telegram Passport elements.
  /// * [errors]: Errors in the elements that are already available.
  const PassportElementsWithErrors({
    required this.elements,
    required this.errors,
    this.extra,
    this.clientId,
  });
  
  /// Telegram Passport elements 
  final List<PassportElement> elements;

  /// Errors in the elements that are already available
  final List<PassportElementError> errors;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory PassportElementsWithErrors.fromJson(Map<String, dynamic> json) => PassportElementsWithErrors(
    elements: List<PassportElement>.from((json['elements'] ?? []).map((item) => PassportElement.fromJson(item)).toList()),
    errors: List<PassportElementError>.from((json['errors'] ?? []).map((item) => PassportElementError.fromJson(item)).toList()),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "elements": elements.map((i) => i.toJson()).toList(),
      "errors": errors.map((i) => i.toJson()).toList(),
		};
	}

  
  PassportElementsWithErrors copyWith({
    List<PassportElement>? elements,
    List<PassportElementError>? errors,
    dynamic extra,
    int? clientId,
  }) => PassportElementsWithErrors(
    elements: elements ?? this.elements,
    errors: errors ?? this.errors,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'passportElementsWithErrors';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

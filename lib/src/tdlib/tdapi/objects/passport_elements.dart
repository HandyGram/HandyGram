part of '../tdapi.dart';

/// **PassportElements** *(passportElements)* - basic class
///
/// Contains information about saved Telegram Passport elements.
///
/// * [elements]: Telegram Passport elements.
final class PassportElements extends TdObject {
  
  /// **PassportElements** *(passportElements)* - basic class
  ///
  /// Contains information about saved Telegram Passport elements.
  ///
  /// * [elements]: Telegram Passport elements.
  const PassportElements({
    required this.elements,
    this.extra,
    this.clientId,
  });
  
  /// Telegram Passport elements
  final List<PassportElement> elements;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory PassportElements.fromJson(Map<String, dynamic> json) => PassportElements(
    elements: List<PassportElement>.from((json['elements'] ?? []).map((item) => PassportElement.fromJson(item)).toList()),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "elements": elements.map((i) => i.toJson()).toList(),
		};
	}

  
  PassportElements copyWith({
    List<PassportElement>? elements,
    dynamic extra,
    int? clientId,
  }) => PassportElements(
    elements: elements ?? this.elements,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'passportElements';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

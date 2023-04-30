part of '../tdapi.dart';

/// **PassportRequiredElement** *(passportRequiredElement)* - basic class
  ///
  /// Contains a description of the required Telegram Passport element that was requested by a service.
  ///
  /// * [suitableElements]: List of Telegram Passport elements any of which is enough to provide.
class PassportRequiredElement extends TdObject {
  
  /// **PassportRequiredElement** *(passportRequiredElement)* - basic class
  ///
  /// Contains a description of the required Telegram Passport element that was requested by a service.
  ///
  /// * [suitableElements]: List of Telegram Passport elements any of which is enough to provide.
  const PassportRequiredElement({
    required this.suitableElements,
  });
  
  /// List of Telegram Passport elements any of which is enough to provide
  final List<PassportSuitableElement> suitableElements;
  
  /// Parse from a json
  factory PassportRequiredElement.fromJson(Map<String, dynamic> json) => PassportRequiredElement(
    suitableElements: List<PassportSuitableElement>.from((json['suitable_elements'] ?? []).map((item) => PassportSuitableElement.fromJson(item)).toList()),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "suitable_elements": suitableElements.map((i) => i.toJson()).toList(),
    };
  }
  
  PassportRequiredElement copyWith({
    List<PassportSuitableElement>? suitableElements,
  }) => PassportRequiredElement(
    suitableElements: suitableElements ?? this.suitableElements,
  );

  static const String constructor = 'passportRequiredElement';
  
  @override
  String getConstructor() => constructor;
}

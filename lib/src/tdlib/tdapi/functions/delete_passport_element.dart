part of '../tdapi.dart';

/// **DeletePassportElement** *(deletePassportElement)* - TDLib function
  ///
  /// Deletes a Telegram Passport element.
  ///
  /// * [type]: Element type.
  ///
  /// [Ok] is returned on completion.
class DeletePassportElement extends TdFunction {
  
  /// **DeletePassportElement** *(deletePassportElement)* - TDLib function
  ///
  /// Deletes a Telegram Passport element.
  ///
  /// * [type]: Element type.
  ///
  /// [Ok] is returned on completion.
  const DeletePassportElement({
    required this.type,
  });
  
  /// Element type
  final PassportElementType type;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "type": type.toJson(),
      "@extra": extra,
    };
  }
  
  DeletePassportElement copyWith({
    PassportElementType? type,
  }) => DeletePassportElement(
    type: type ?? this.type,
  );

  static const String constructor = 'deletePassportElement';
  
  @override
  String getConstructor() => constructor;
}

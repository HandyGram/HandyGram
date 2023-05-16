part of '../tdapi.dart';

/// **DeletePassportElement** *(deletePassportElement)* - TDLib function
///
/// Deletes a Telegram Passport element.
///
/// * [type]: Element type.
///
/// [Ok] is returned on completion.
final class DeletePassportElement extends TdFunction {
  
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
			"@type": objectType,
      "type": type.toJson(),
      "@extra": extra,
		};
	}

  
  DeletePassportElement copyWith({
    PassportElementType? type,
  }) => DeletePassportElement(
    type: type ?? this.type,
  );

  static const String objectType = 'deletePassportElement';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

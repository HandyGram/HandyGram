part of '../tdapi.dart';

/// **DeleteLanguagePack** *(deleteLanguagePack)* - TDLib function
///
/// Deletes all information about a language pack in the current localization target. The language pack which is currently in use (including base language pack) or is being synchronized can't be deleted.. Can be called before authorization.
///
/// * [languagePackId]: Identifier of the language pack to delete.
///
/// [Ok] is returned on completion.
final class DeleteLanguagePack extends TdFunction {
  
  /// **DeleteLanguagePack** *(deleteLanguagePack)* - TDLib function
  ///
  /// Deletes all information about a language pack in the current localization target. The language pack which is currently in use (including base language pack) or is being synchronized can't be deleted.. Can be called before authorization.
  ///
  /// * [languagePackId]: Identifier of the language pack to delete.
  ///
  /// [Ok] is returned on completion.
  const DeleteLanguagePack({
    required this.languagePackId,
  });
  
  /// Identifier of the language pack to delete
  final String languagePackId;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "language_pack_id": languagePackId,
      "@extra": extra,
		};
	}

  
  DeleteLanguagePack copyWith({
    String? languagePackId,
  }) => DeleteLanguagePack(
    languagePackId: languagePackId ?? this.languagePackId,
  );

  static const String objectType = 'deleteLanguagePack';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

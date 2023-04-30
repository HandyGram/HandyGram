part of '../tdapi.dart';

/// **AddCustomServerLanguagePack** *(addCustomServerLanguagePack)* - TDLib function
  ///
  /// Adds a custom server language pack to the list of installed language packs in current localization target. Can be called before authorization.
  ///
  /// * [languagePackId]: Identifier of a language pack to be added; may be different from a name that is used in an "https://t.me/setlanguage/" link.
  ///
  /// [Ok] is returned on completion.
class AddCustomServerLanguagePack extends TdFunction {
  
  /// **AddCustomServerLanguagePack** *(addCustomServerLanguagePack)* - TDLib function
  ///
  /// Adds a custom server language pack to the list of installed language packs in current localization target. Can be called before authorization.
  ///
  /// * [languagePackId]: Identifier of a language pack to be added; may be different from a name that is used in an "https://t.me/setlanguage/" link.
  ///
  /// [Ok] is returned on completion.
  const AddCustomServerLanguagePack({
    required this.languagePackId,
  });
  
  /// Identifier of a language pack to be added; may be different from a name that is used in an "https://t.me/setlanguage/" link
  final String languagePackId;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "language_pack_id": languagePackId,
      "@extra": extra,
    };
  }
  
  AddCustomServerLanguagePack copyWith({
    String? languagePackId,
  }) => AddCustomServerLanguagePack(
    languagePackId: languagePackId ?? this.languagePackId,
  );

  static const String constructor = 'addCustomServerLanguagePack';
  
  @override
  String getConstructor() => constructor;
}

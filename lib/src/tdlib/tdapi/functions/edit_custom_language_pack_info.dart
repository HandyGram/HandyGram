part of '../tdapi.dart';

/// **EditCustomLanguagePackInfo** *(editCustomLanguagePackInfo)* - TDLib function
  ///
  /// Edits information about a custom local language pack in the current localization target. Can be called before authorization.
  ///
  /// * [info]: New information about the custom local language pack.
  ///
  /// [Ok] is returned on completion.
class EditCustomLanguagePackInfo extends TdFunction {
  
  /// **EditCustomLanguagePackInfo** *(editCustomLanguagePackInfo)* - TDLib function
  ///
  /// Edits information about a custom local language pack in the current localization target. Can be called before authorization.
  ///
  /// * [info]: New information about the custom local language pack.
  ///
  /// [Ok] is returned on completion.
  const EditCustomLanguagePackInfo({
    required this.info,
  });
  
  /// New information about the custom local language pack
  final LanguagePackInfo info;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "info": info.toJson(),
      "@extra": extra,
    };
  }
  
  EditCustomLanguagePackInfo copyWith({
    LanguagePackInfo? info,
  }) => EditCustomLanguagePackInfo(
    info: info ?? this.info,
  );

  static const String constructor = 'editCustomLanguagePackInfo';
  
  @override
  String getConstructor() => constructor;
}

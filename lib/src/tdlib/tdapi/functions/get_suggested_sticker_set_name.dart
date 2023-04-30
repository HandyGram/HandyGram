part of '../tdapi.dart';

/// **GetSuggestedStickerSetName** *(getSuggestedStickerSetName)* - TDLib function
  ///
  /// Returns a suggested name for a new sticker set with a given title.
  ///
  /// * [title]: Sticker set title; 1-64 characters.
  ///
  /// [Text] is returned on completion.
class GetSuggestedStickerSetName extends TdFunction {
  
  /// **GetSuggestedStickerSetName** *(getSuggestedStickerSetName)* - TDLib function
  ///
  /// Returns a suggested name for a new sticker set with a given title.
  ///
  /// * [title]: Sticker set title; 1-64 characters.
  ///
  /// [Text] is returned on completion.
  const GetSuggestedStickerSetName({
    required this.title,
  });
  
  /// Sticker set title; 1-64 characters
  final String title;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "title": title,
      "@extra": extra,
    };
  }
  
  GetSuggestedStickerSetName copyWith({
    String? title,
  }) => GetSuggestedStickerSetName(
    title: title ?? this.title,
  );

  static const String constructor = 'getSuggestedStickerSetName';
  
  @override
  String getConstructor() => constructor;
}

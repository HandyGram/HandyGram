part of '../tdapi.dart';

/// **RemoveFavoriteSticker** *(removeFavoriteSticker)* - TDLib function
///
/// Removes a sticker from the list of favorite stickers.
///
/// * [sticker]: Sticker file to delete from the list.
///
/// [Ok] is returned on completion.
final class RemoveFavoriteSticker extends TdFunction {
  
  /// **RemoveFavoriteSticker** *(removeFavoriteSticker)* - TDLib function
  ///
  /// Removes a sticker from the list of favorite stickers.
  ///
  /// * [sticker]: Sticker file to delete from the list.
  ///
  /// [Ok] is returned on completion.
  const RemoveFavoriteSticker({
    required this.sticker,
  });
  
  /// Sticker file to delete from the list
  final InputFile sticker;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "sticker": sticker.toJson(),
      "@extra": extra,
		};
	}

  
  RemoveFavoriteSticker copyWith({
    InputFile? sticker,
  }) => RemoveFavoriteSticker(
    sticker: sticker ?? this.sticker,
  );

  static const String objectType = 'removeFavoriteSticker';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

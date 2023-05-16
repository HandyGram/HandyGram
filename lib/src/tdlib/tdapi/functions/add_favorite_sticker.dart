part of '../tdapi.dart';

/// **AddFavoriteSticker** *(addFavoriteSticker)* - TDLib function
///
/// Adds a new sticker to the list of favorite stickers. The new sticker is added to the top of the list. If the sticker was already in the list, it is removed from the list first.. Only stickers belonging to a sticker set can be added to this list. Emoji stickers can't be added to favorite stickers.
///
/// * [sticker]: Sticker file to add.
///
/// [Ok] is returned on completion.
final class AddFavoriteSticker extends TdFunction {
  
  /// **AddFavoriteSticker** *(addFavoriteSticker)* - TDLib function
  ///
  /// Adds a new sticker to the list of favorite stickers. The new sticker is added to the top of the list. If the sticker was already in the list, it is removed from the list first.. Only stickers belonging to a sticker set can be added to this list. Emoji stickers can't be added to favorite stickers.
  ///
  /// * [sticker]: Sticker file to add.
  ///
  /// [Ok] is returned on completion.
  const AddFavoriteSticker({
    required this.sticker,
  });
  
  /// Sticker file to add
  final InputFile sticker;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "sticker": sticker.toJson(),
      "@extra": extra,
		};
	}

  
  AddFavoriteSticker copyWith({
    InputFile? sticker,
  }) => AddFavoriteSticker(
    sticker: sticker ?? this.sticker,
  );

  static const String objectType = 'addFavoriteSticker';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

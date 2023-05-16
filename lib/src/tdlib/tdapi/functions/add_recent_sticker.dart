part of '../tdapi.dart';

/// **AddRecentSticker** *(addRecentSticker)* - TDLib function
///
/// Manually adds a new sticker to the list of recently used stickers. The new sticker is added to the top of the list. If the sticker was already in the list, it is removed from the list first.. Only stickers belonging to a sticker set can be added to this list. Emoji stickers can't be added to recent stickers.
///
/// * [isAttached]: Pass true to add the sticker to the list of stickers recently attached to photo or video files; pass false to add the sticker to the list of recently sent stickers.
/// * [sticker]: Sticker file to add.
///
/// [Stickers] is returned on completion.
final class AddRecentSticker extends TdFunction {
  
  /// **AddRecentSticker** *(addRecentSticker)* - TDLib function
  ///
  /// Manually adds a new sticker to the list of recently used stickers. The new sticker is added to the top of the list. If the sticker was already in the list, it is removed from the list first.. Only stickers belonging to a sticker set can be added to this list. Emoji stickers can't be added to recent stickers.
  ///
  /// * [isAttached]: Pass true to add the sticker to the list of stickers recently attached to photo or video files; pass false to add the sticker to the list of recently sent stickers.
  /// * [sticker]: Sticker file to add.
  ///
  /// [Stickers] is returned on completion.
  const AddRecentSticker({
    required this.isAttached,
    required this.sticker,
  });
  
  /// Pass true to add the sticker to the list of stickers recently attached to photo or video files; pass false to add the sticker to the list of recently sent stickers
  final bool isAttached;

  /// Sticker file to add
  final InputFile sticker;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "is_attached": isAttached,
      "sticker": sticker.toJson(),
      "@extra": extra,
		};
	}

  
  AddRecentSticker copyWith({
    bool? isAttached,
    InputFile? sticker,
  }) => AddRecentSticker(
    isAttached: isAttached ?? this.isAttached,
    sticker: sticker ?? this.sticker,
  );

  static const String objectType = 'addRecentSticker';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

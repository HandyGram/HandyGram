part of '../tdapi.dart';

/// **AddStickerToSet** *(addStickerToSet)* - TDLib function
  ///
  /// Adds a new sticker to a set; for bots only. Returns the sticker set.
  ///
  /// * [userId]: Sticker set owner.
  /// * [name]: Sticker set name.
  /// * [sticker]: Sticker to add to the set.
  ///
  /// [StickerSet] is returned on completion.
class AddStickerToSet extends TdFunction {
  
  /// **AddStickerToSet** *(addStickerToSet)* - TDLib function
  ///
  /// Adds a new sticker to a set; for bots only. Returns the sticker set.
  ///
  /// * [userId]: Sticker set owner.
  /// * [name]: Sticker set name.
  /// * [sticker]: Sticker to add to the set.
  ///
  /// [StickerSet] is returned on completion.
  const AddStickerToSet({
    required this.userId,
    required this.name,
    required this.sticker,
  });
  
  /// Sticker set owner
  final int userId;

  /// Sticker set name
  final String name;

  /// Sticker to add to the set
  final InputSticker sticker;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "user_id": userId,
      "name": name,
      "sticker": sticker.toJson(),
      "@extra": extra,
    };
  }
  
  AddStickerToSet copyWith({
    int? userId,
    String? name,
    InputSticker? sticker,
  }) => AddStickerToSet(
    userId: userId ?? this.userId,
    name: name ?? this.name,
    sticker: sticker ?? this.sticker,
  );

  static const String constructor = 'addStickerToSet';
  
  @override
  String getConstructor() => constructor;
}

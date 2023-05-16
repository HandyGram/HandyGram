part of '../tdapi.dart';

/// **SetSupergroupStickerSet** *(setSupergroupStickerSet)* - TDLib function
///
/// Changes the sticker set of a supergroup; requires can_change_info administrator right.
///
/// * [supergroupId]: Identifier of the supergroup.
/// * [stickerSetId]: New value of the supergroup sticker set identifier. Use 0 to remove the supergroup sticker set.
///
/// [Ok] is returned on completion.
final class SetSupergroupStickerSet extends TdFunction {
  
  /// **SetSupergroupStickerSet** *(setSupergroupStickerSet)* - TDLib function
  ///
  /// Changes the sticker set of a supergroup; requires can_change_info administrator right.
  ///
  /// * [supergroupId]: Identifier of the supergroup.
  /// * [stickerSetId]: New value of the supergroup sticker set identifier. Use 0 to remove the supergroup sticker set.
  ///
  /// [Ok] is returned on completion.
  const SetSupergroupStickerSet({
    required this.supergroupId,
    required this.stickerSetId,
  });
  
  /// Identifier of the supergroup 
  final int supergroupId;

  /// New value of the supergroup sticker set identifier. Use 0 to remove the supergroup sticker set
  final int stickerSetId;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "supergroup_id": supergroupId,
      "sticker_set_id": stickerSetId,
      "@extra": extra,
		};
	}

  
  SetSupergroupStickerSet copyWith({
    int? supergroupId,
    int? stickerSetId,
  }) => SetSupergroupStickerSet(
    supergroupId: supergroupId ?? this.supergroupId,
    stickerSetId: stickerSetId ?? this.stickerSetId,
  );

  static const String objectType = 'setSupergroupStickerSet';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

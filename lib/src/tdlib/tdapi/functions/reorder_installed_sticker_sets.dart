part of '../tdapi.dart';

/// **ReorderInstalledStickerSets** *(reorderInstalledStickerSets)* - TDLib function
///
/// Changes the order of installed sticker sets.
///
/// * [stickerType]: Type of the sticker sets to reorder.
/// * [stickerSetIds]: Identifiers of installed sticker sets in the new correct order.
///
/// [Ok] is returned on completion.
final class ReorderInstalledStickerSets extends TdFunction {
  
  /// **ReorderInstalledStickerSets** *(reorderInstalledStickerSets)* - TDLib function
  ///
  /// Changes the order of installed sticker sets.
  ///
  /// * [stickerType]: Type of the sticker sets to reorder.
  /// * [stickerSetIds]: Identifiers of installed sticker sets in the new correct order.
  ///
  /// [Ok] is returned on completion.
  const ReorderInstalledStickerSets({
    required this.stickerType,
    required this.stickerSetIds,
  });
  
  /// Type of the sticker sets to reorder 
  final StickerType stickerType;

  /// Identifiers of installed sticker sets in the new correct order
  final List<int> stickerSetIds;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "sticker_type": stickerType.toJson(),
      "sticker_set_ids": stickerSetIds.map((i) => i).toList(),
      "@extra": extra,
		};
	}

  
  ReorderInstalledStickerSets copyWith({
    StickerType? stickerType,
    List<int>? stickerSetIds,
  }) => ReorderInstalledStickerSets(
    stickerType: stickerType ?? this.stickerType,
    stickerSetIds: stickerSetIds ?? this.stickerSetIds,
  );

  static const String objectType = 'reorderInstalledStickerSets';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

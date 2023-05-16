part of '../tdapi.dart';

/// **GetArchivedStickerSets** *(getArchivedStickerSets)* - TDLib function
///
/// Returns a list of archived sticker sets.
///
/// * [stickerType]: Type of the sticker sets to return.
/// * [offsetStickerSetId]: Identifier of the sticker set from which to return the result.
/// * [limit]: The maximum number of sticker sets to return; up to 100.
///
/// [StickerSets] is returned on completion.
final class GetArchivedStickerSets extends TdFunction {
  
  /// **GetArchivedStickerSets** *(getArchivedStickerSets)* - TDLib function
  ///
  /// Returns a list of archived sticker sets.
  ///
  /// * [stickerType]: Type of the sticker sets to return.
  /// * [offsetStickerSetId]: Identifier of the sticker set from which to return the result.
  /// * [limit]: The maximum number of sticker sets to return; up to 100.
  ///
  /// [StickerSets] is returned on completion.
  const GetArchivedStickerSets({
    required this.stickerType,
    required this.offsetStickerSetId,
    required this.limit,
  });
  
  /// Type of the sticker sets to return 
  final StickerType stickerType;

  /// Identifier of the sticker set from which to return the result 
  final int offsetStickerSetId;

  /// The maximum number of sticker sets to return; up to 100
  final int limit;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "sticker_type": stickerType.toJson(),
      "offset_sticker_set_id": offsetStickerSetId,
      "limit": limit,
      "@extra": extra,
		};
	}

  
  GetArchivedStickerSets copyWith({
    StickerType? stickerType,
    int? offsetStickerSetId,
    int? limit,
  }) => GetArchivedStickerSets(
    stickerType: stickerType ?? this.stickerType,
    offsetStickerSetId: offsetStickerSetId ?? this.offsetStickerSetId,
    limit: limit ?? this.limit,
  );

  static const String objectType = 'getArchivedStickerSets';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

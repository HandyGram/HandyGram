part of '../tdapi.dart';

/// **ChangeStickerSet** *(changeStickerSet)* - TDLib function
///
/// Installs/uninstalls or activates/archives a sticker set.
///
/// * [setId]: Identifier of the sticker set.
/// * [isInstalled]: The new value of is_installed.
/// * [isArchived]: The new value of is_archived. A sticker set can't be installed and archived simultaneously.
///
/// [Ok] is returned on completion.
final class ChangeStickerSet extends TdFunction {
  
  /// **ChangeStickerSet** *(changeStickerSet)* - TDLib function
  ///
  /// Installs/uninstalls or activates/archives a sticker set.
  ///
  /// * [setId]: Identifier of the sticker set.
  /// * [isInstalled]: The new value of is_installed.
  /// * [isArchived]: The new value of is_archived. A sticker set can't be installed and archived simultaneously.
  ///
  /// [Ok] is returned on completion.
  const ChangeStickerSet({
    required this.setId,
    required this.isInstalled,
    required this.isArchived,
  });
  
  /// Identifier of the sticker set 
  final int setId;

  /// The new value of is_installed 
  final bool isInstalled;

  /// The new value of is_archived. A sticker set can't be installed and archived simultaneously
  final bool isArchived;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "set_id": setId,
      "is_installed": isInstalled,
      "is_archived": isArchived,
      "@extra": extra,
		};
	}

  
  ChangeStickerSet copyWith({
    int? setId,
    bool? isInstalled,
    bool? isArchived,
  }) => ChangeStickerSet(
    setId: setId ?? this.setId,
    isInstalled: isInstalled ?? this.isInstalled,
    isArchived: isArchived ?? this.isArchived,
  );

  static const String objectType = 'changeStickerSet';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

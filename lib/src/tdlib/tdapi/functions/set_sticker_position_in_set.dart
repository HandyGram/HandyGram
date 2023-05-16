part of '../tdapi.dart';

/// **SetStickerPositionInSet** *(setStickerPositionInSet)* - TDLib function
///
/// Changes the position of a sticker in the set to which it belongs; for bots only. The sticker set must have been created by the bot.
///
/// * [sticker]: Sticker.
/// * [position]: New position of the sticker in the set, 0-based.
///
/// [Ok] is returned on completion.
final class SetStickerPositionInSet extends TdFunction {
  
  /// **SetStickerPositionInSet** *(setStickerPositionInSet)* - TDLib function
  ///
  /// Changes the position of a sticker in the set to which it belongs; for bots only. The sticker set must have been created by the bot.
  ///
  /// * [sticker]: Sticker.
  /// * [position]: New position of the sticker in the set, 0-based.
  ///
  /// [Ok] is returned on completion.
  const SetStickerPositionInSet({
    required this.sticker,
    required this.position,
  });
  
  /// Sticker
  final InputFile sticker;

  /// New position of the sticker in the set, 0-based
  final int position;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "sticker": sticker.toJson(),
      "position": position,
      "@extra": extra,
		};
	}

  
  SetStickerPositionInSet copyWith({
    InputFile? sticker,
    int? position,
  }) => SetStickerPositionInSet(
    sticker: sticker ?? this.sticker,
    position: position ?? this.position,
  );

  static const String objectType = 'setStickerPositionInSet';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

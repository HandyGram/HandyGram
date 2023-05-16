part of '../tdapi.dart';

/// **GetStickerEmojis** *(getStickerEmojis)* - TDLib function
///
/// Returns emoji corresponding to a sticker. The list is only for informational purposes, because a sticker is always sent with a fixed emoji from the corresponding Sticker object.
///
/// * [sticker]: Sticker file identifier.
///
/// [Emojis] is returned on completion.
final class GetStickerEmojis extends TdFunction {
  
  /// **GetStickerEmojis** *(getStickerEmojis)* - TDLib function
  ///
  /// Returns emoji corresponding to a sticker. The list is only for informational purposes, because a sticker is always sent with a fixed emoji from the corresponding Sticker object.
  ///
  /// * [sticker]: Sticker file identifier.
  ///
  /// [Emojis] is returned on completion.
  const GetStickerEmojis({
    required this.sticker,
  });
  
  /// Sticker file identifier
  final InputFile sticker;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "sticker": sticker.toJson(),
      "@extra": extra,
		};
	}

  
  GetStickerEmojis copyWith({
    InputFile? sticker,
  }) => GetStickerEmojis(
    sticker: sticker ?? this.sticker,
  );

  static const String objectType = 'getStickerEmojis';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

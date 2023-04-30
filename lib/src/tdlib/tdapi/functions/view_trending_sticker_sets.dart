part of '../tdapi.dart';

/// **ViewTrendingStickerSets** *(viewTrendingStickerSets)* - TDLib function
  ///
  /// Informs the server that some trending sticker sets have been viewed by the user.
  ///
  /// * [stickerSetIds]: Identifiers of viewed trending sticker sets.
  ///
  /// [Ok] is returned on completion.
class ViewTrendingStickerSets extends TdFunction {
  
  /// **ViewTrendingStickerSets** *(viewTrendingStickerSets)* - TDLib function
  ///
  /// Informs the server that some trending sticker sets have been viewed by the user.
  ///
  /// * [stickerSetIds]: Identifiers of viewed trending sticker sets.
  ///
  /// [Ok] is returned on completion.
  const ViewTrendingStickerSets({
    required this.stickerSetIds,
  });
  
  /// Identifiers of viewed trending sticker sets
  final List<int> stickerSetIds;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "sticker_set_ids": stickerSetIds.map((i) => i).toList(),
      "@extra": extra,
    };
  }
  
  ViewTrendingStickerSets copyWith({
    List<int>? stickerSetIds,
  }) => ViewTrendingStickerSets(
    stickerSetIds: stickerSetIds ?? this.stickerSetIds,
  );

  static const String constructor = 'viewTrendingStickerSets';
  
  @override
  String getConstructor() => constructor;
}

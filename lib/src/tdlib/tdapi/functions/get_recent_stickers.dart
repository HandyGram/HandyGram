part of '../tdapi.dart';

/// **GetRecentStickers** *(getRecentStickers)* - TDLib function
  ///
  /// Returns a list of recently used stickers.
  ///
  /// * [isAttached]: Pass true to return stickers and masks that were recently attached to photos or video files; pass false to return recently sent stickers.
  ///
  /// [Stickers] is returned on completion.
class GetRecentStickers extends TdFunction {
  
  /// **GetRecentStickers** *(getRecentStickers)* - TDLib function
  ///
  /// Returns a list of recently used stickers.
  ///
  /// * [isAttached]: Pass true to return stickers and masks that were recently attached to photos or video files; pass false to return recently sent stickers.
  ///
  /// [Stickers] is returned on completion.
  const GetRecentStickers({
    required this.isAttached,
  });
  
  /// Pass true to return stickers and masks that were recently attached to photos or video files; pass false to return recently sent stickers
  final bool isAttached;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "is_attached": isAttached,
      "@extra": extra,
    };
  }
  
  GetRecentStickers copyWith({
    bool? isAttached,
  }) => GetRecentStickers(
    isAttached: isAttached ?? this.isAttached,
  );

  static const String constructor = 'getRecentStickers';
  
  @override
  String getConstructor() => constructor;
}

part of '../tdapi.dart';

/// **TrendingStickerSets** *(trendingStickerSets)* - basic class
///
/// Represents a list of trending sticker sets.
///
/// * [totalCount]: Approximate total number of trending sticker sets.
/// * [sets]: List of trending sticker sets.
/// * [isPremium]: True, if the list contains sticker sets with premium stickers.
final class TrendingStickerSets extends TdObject {
  
  /// **TrendingStickerSets** *(trendingStickerSets)* - basic class
  ///
  /// Represents a list of trending sticker sets.
  ///
  /// * [totalCount]: Approximate total number of trending sticker sets.
  /// * [sets]: List of trending sticker sets.
  /// * [isPremium]: True, if the list contains sticker sets with premium stickers.
  const TrendingStickerSets({
    required this.totalCount,
    required this.sets,
    required this.isPremium,
    this.extra,
    this.clientId,
  });
  
  /// Approximate total number of trending sticker sets 
  final int totalCount;

  /// List of trending sticker sets 
  final List<StickerSetInfo> sets;

  /// True, if the list contains sticker sets with premium stickers
  final bool isPremium;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory TrendingStickerSets.fromJson(Map<String, dynamic> json) => TrendingStickerSets(
    totalCount: json['total_count'],
    sets: List<StickerSetInfo>.from((json['sets'] ?? []).map((item) => StickerSetInfo.fromJson(item)).toList()),
    isPremium: json['is_premium'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "total_count": totalCount,
      "sets": sets.map((i) => i.toJson()).toList(),
      "is_premium": isPremium,
		};
	}

  
  TrendingStickerSets copyWith({
    int? totalCount,
    List<StickerSetInfo>? sets,
    bool? isPremium,
    dynamic extra,
    int? clientId,
  }) => TrendingStickerSets(
    totalCount: totalCount ?? this.totalCount,
    sets: sets ?? this.sets,
    isPremium: isPremium ?? this.isPremium,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'trendingStickerSets';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

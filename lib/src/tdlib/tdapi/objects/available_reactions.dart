part of '../tdapi.dart';

/// **AvailableReactions** *(availableReactions)* - basic class
///
/// Represents a list of reactions that can be added to a message.
///
/// * [topReactions]: List of reactions to be shown at the top.
/// * [recentReactions]: List of recently used reactions.
/// * [popularReactions]: List of popular reactions.
/// * [allowCustomEmoji]: True, if custom emoji reactions could be added by Telegram Premium subscribers.
final class AvailableReactions extends TdObject {
  
  /// **AvailableReactions** *(availableReactions)* - basic class
  ///
  /// Represents a list of reactions that can be added to a message.
  ///
  /// * [topReactions]: List of reactions to be shown at the top.
  /// * [recentReactions]: List of recently used reactions.
  /// * [popularReactions]: List of popular reactions.
  /// * [allowCustomEmoji]: True, if custom emoji reactions could be added by Telegram Premium subscribers.
  const AvailableReactions({
    required this.topReactions,
    required this.recentReactions,
    required this.popularReactions,
    required this.allowCustomEmoji,
    this.extra,
    this.clientId,
  });
  
  /// List of reactions to be shown at the top
  final List<AvailableReaction> topReactions;

  /// List of recently used reactions
  final List<AvailableReaction> recentReactions;

  /// List of popular reactions
  final List<AvailableReaction> popularReactions;

  /// True, if custom emoji reactions could be added by Telegram Premium subscribers
  final bool allowCustomEmoji;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory AvailableReactions.fromJson(Map<String, dynamic> json) => AvailableReactions(
    topReactions: List<AvailableReaction>.from((json['top_reactions'] ?? []).map((item) => AvailableReaction.fromJson(item)).toList()),
    recentReactions: List<AvailableReaction>.from((json['recent_reactions'] ?? []).map((item) => AvailableReaction.fromJson(item)).toList()),
    popularReactions: List<AvailableReaction>.from((json['popular_reactions'] ?? []).map((item) => AvailableReaction.fromJson(item)).toList()),
    allowCustomEmoji: json['allow_custom_emoji'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "top_reactions": topReactions.map((i) => i.toJson()).toList(),
      "recent_reactions": recentReactions.map((i) => i.toJson()).toList(),
      "popular_reactions": popularReactions.map((i) => i.toJson()).toList(),
      "allow_custom_emoji": allowCustomEmoji,
		};
	}

  
  AvailableReactions copyWith({
    List<AvailableReaction>? topReactions,
    List<AvailableReaction>? recentReactions,
    List<AvailableReaction>? popularReactions,
    bool? allowCustomEmoji,
    dynamic extra,
    int? clientId,
  }) => AvailableReactions(
    topReactions: topReactions ?? this.topReactions,
    recentReactions: recentReactions ?? this.recentReactions,
    popularReactions: popularReactions ?? this.popularReactions,
    allowCustomEmoji: allowCustomEmoji ?? this.allowCustomEmoji,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'availableReactions';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

part of '../tdapi.dart';

/// **EmojiStatuses** *(emojiStatuses)* - basic class
  ///
  /// Contains a list of emoji statuses.
  ///
  /// * [emojiStatuses]: The list of emoji statuses.
class EmojiStatuses extends TdObject {
  
  /// **EmojiStatuses** *(emojiStatuses)* - basic class
  ///
  /// Contains a list of emoji statuses.
  ///
  /// * [emojiStatuses]: The list of emoji statuses.
  const EmojiStatuses({
    required this.emojiStatuses,
    this.extra,
    this.clientId,
  });
  
  /// The list of emoji statuses
  final List<EmojiStatus> emojiStatuses;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory EmojiStatuses.fromJson(Map<String, dynamic> json) => EmojiStatuses(
    emojiStatuses: List<EmojiStatus>.from((json['emoji_statuses'] ?? []).map((item) => EmojiStatus.fromJson(item)).toList()),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "emoji_statuses": emojiStatuses.map((i) => i.toJson()).toList(),
    };
  }
  
  EmojiStatuses copyWith({
    List<EmojiStatus>? emojiStatuses,
    dynamic extra,
    int? clientId,
  }) => EmojiStatuses(
    emojiStatuses: emojiStatuses ?? this.emojiStatuses,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String constructor = 'emojiStatuses';
  
  @override
  String getConstructor() => constructor;
}

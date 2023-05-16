part of '../tdapi.dart';

/// **UnreadReaction** *(unreadReaction)* - basic class
///
/// Contains information about an unread reaction to a message.
///
/// * [type]: Type of the reaction.
/// * [senderId]: Identifier of the sender, added the reaction.
/// * [isBig]: True, if the reaction was added with a big animation.
final class UnreadReaction extends TdObject {
  
  /// **UnreadReaction** *(unreadReaction)* - basic class
  ///
  /// Contains information about an unread reaction to a message.
  ///
  /// * [type]: Type of the reaction.
  /// * [senderId]: Identifier of the sender, added the reaction.
  /// * [isBig]: True, if the reaction was added with a big animation.
  const UnreadReaction({
    required this.type,
    required this.senderId,
    required this.isBig,
  });
  
  /// Type of the reaction
  final ReactionType type;

  /// Identifier of the sender, added the reaction
  final MessageSender senderId;

  /// True, if the reaction was added with a big animation
  final bool isBig;
  
  /// Parse from a json
  factory UnreadReaction.fromJson(Map<String, dynamic> json) => UnreadReaction(
    type: ReactionType.fromJson(json['type']),
    senderId: MessageSender.fromJson(json['sender_id']),
    isBig: json['is_big'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "type": type.toJson(),
      "sender_id": senderId.toJson(),
      "is_big": isBig,
		};
	}

  
  UnreadReaction copyWith({
    ReactionType? type,
    MessageSender? senderId,
    bool? isBig,
  }) => UnreadReaction(
    type: type ?? this.type,
    senderId: senderId ?? this.senderId,
    isBig: isBig ?? this.isBig,
  );

  static const String objectType = 'unreadReaction';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

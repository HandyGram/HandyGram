part of '../tdapi.dart';

/// **AddedReaction** *(addedReaction)* - basic class
  ///
  /// Represents a reaction applied to a message.
  ///
  /// * [type]: Type of the reaction.
  /// * [senderId]: Identifier of the chat member, applied the reaction.
class AddedReaction extends TdObject {
  
  /// **AddedReaction** *(addedReaction)* - basic class
  ///
  /// Represents a reaction applied to a message.
  ///
  /// * [type]: Type of the reaction.
  /// * [senderId]: Identifier of the chat member, applied the reaction.
  const AddedReaction({
    required this.type,
    required this.senderId,
  });
  
  /// Type of the reaction 
  final ReactionType type;

  /// Identifier of the chat member, applied the reaction
  final MessageSender senderId;
  
  /// Parse from a json
  factory AddedReaction.fromJson(Map<String, dynamic> json) => AddedReaction(
    type: ReactionType.fromJson(json['type']),
    senderId: MessageSender.fromJson(json['sender_id']),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "type": type.toJson(),
      "sender_id": senderId.toJson(),
    };
  }
  
  AddedReaction copyWith({
    ReactionType? type,
    MessageSender? senderId,
  }) => AddedReaction(
    type: type ?? this.type,
    senderId: senderId ?? this.senderId,
  );

  static const String constructor = 'addedReaction';
  
  @override
  String getConstructor() => constructor;
}

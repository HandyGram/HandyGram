part of '../tdapi.dart';

/// **GetMessageAddedReactions** *(getMessageAddedReactions)* - TDLib function
///
/// Returns reactions added for a message, along with their sender.
///
/// * [chatId]: Identifier of the chat to which the message belongs.
/// * [messageId]: Identifier of the message.
/// * [reactionType]: Type of the reactions to return; pass null to return all added reactions *(optional)*.
/// * [offset]: Offset of the first entry to return as received from the previous request; use empty string to get the first chunk of results.
/// * [limit]: The maximum number of reactions to be returned; must be positive and can't be greater than 100.
///
/// [AddedReactions] is returned on completion.
final class GetMessageAddedReactions extends TdFunction {
  
  /// **GetMessageAddedReactions** *(getMessageAddedReactions)* - TDLib function
  ///
  /// Returns reactions added for a message, along with their sender.
  ///
  /// * [chatId]: Identifier of the chat to which the message belongs.
  /// * [messageId]: Identifier of the message.
  /// * [reactionType]: Type of the reactions to return; pass null to return all added reactions *(optional)*.
  /// * [offset]: Offset of the first entry to return as received from the previous request; use empty string to get the first chunk of results.
  /// * [limit]: The maximum number of reactions to be returned; must be positive and can't be greater than 100.
  ///
  /// [AddedReactions] is returned on completion.
  const GetMessageAddedReactions({
    required this.chatId,
    required this.messageId,
    this.reactionType,
    required this.offset,
    required this.limit,
  });
  
  /// Identifier of the chat to which the message belongs
  final int chatId;

  /// Identifier of the message
  final int messageId;

  /// Type of the reactions to return; pass null to return all added reactions
  final ReactionType? reactionType;

  /// Offset of the first entry to return as received from the previous request; use empty string to get the first chunk of results
  final String offset;

  /// The maximum number of reactions to be returned; must be positive and can't be greater than 100
  final int limit;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "chat_id": chatId,
      "message_id": messageId,
      "reaction_type": reactionType?.toJson(),
      "offset": offset,
      "limit": limit,
      "@extra": extra,
		};
	}

  
  GetMessageAddedReactions copyWith({
    int? chatId,
    int? messageId,
    ReactionType? reactionType,
    String? offset,
    int? limit,
  }) => GetMessageAddedReactions(
    chatId: chatId ?? this.chatId,
    messageId: messageId ?? this.messageId,
    reactionType: reactionType ?? this.reactionType,
    offset: offset ?? this.offset,
    limit: limit ?? this.limit,
  );

  static const String objectType = 'getMessageAddedReactions';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

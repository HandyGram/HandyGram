part of '../tdapi.dart';

/// **GetMessageThreadHistory** *(getMessageThreadHistory)* - TDLib function
///
/// Returns messages in a message thread of a message. Can be used only if message.can_get_message_thread == true. Message thread of a channel message is in the channel's linked supergroup.. The messages are returned in a reverse chronological order (i.e., in order of decreasing message_id). For optimal performance, the number of returned messages is chosen by TDLib.
///
/// * [chatId]: Chat identifier.
/// * [messageId]: Message identifier, which thread history needs to be returned.
/// * [fromMessageId]: Identifier of the message starting from which history must be fetched; use 0 to get results from the last message.
/// * [offset]: Specify 0 to get results from exactly the from_message_id or a negative offset up to 99 to get additionally some newer messages.
/// * [limit]: The maximum number of messages to be returned; must be positive and can't be greater than 100. If the offset is negative, the limit must be greater than or equal to -offset.. For optimal performance, the number of returned messages is chosen by TDLib and can be smaller than the specified limit.
///
/// [Messages] is returned on completion.
final class GetMessageThreadHistory extends TdFunction {
  
  /// **GetMessageThreadHistory** *(getMessageThreadHistory)* - TDLib function
  ///
  /// Returns messages in a message thread of a message. Can be used only if message.can_get_message_thread == true. Message thread of a channel message is in the channel's linked supergroup.. The messages are returned in a reverse chronological order (i.e., in order of decreasing message_id). For optimal performance, the number of returned messages is chosen by TDLib.
  ///
  /// * [chatId]: Chat identifier.
  /// * [messageId]: Message identifier, which thread history needs to be returned.
  /// * [fromMessageId]: Identifier of the message starting from which history must be fetched; use 0 to get results from the last message.
  /// * [offset]: Specify 0 to get results from exactly the from_message_id or a negative offset up to 99 to get additionally some newer messages.
  /// * [limit]: The maximum number of messages to be returned; must be positive and can't be greater than 100. If the offset is negative, the limit must be greater than or equal to -offset.. For optimal performance, the number of returned messages is chosen by TDLib and can be smaller than the specified limit.
  ///
  /// [Messages] is returned on completion.
  const GetMessageThreadHistory({
    required this.chatId,
    required this.messageId,
    required this.fromMessageId,
    required this.offset,
    required this.limit,
  });
  
  /// Chat identifier
  final int chatId;

  /// Message identifier, which thread history needs to be returned
  final int messageId;

  /// Identifier of the message starting from which history must be fetched; use 0 to get results from the last message
  final int fromMessageId;

  /// Specify 0 to get results from exactly the from_message_id or a negative offset up to 99 to get additionally some newer messages
  final int offset;

  /// The maximum number of messages to be returned; must be positive and can't be greater than 100. If the offset is negative, the limit must be greater than or equal to -offset.. For optimal performance, the number of returned messages is chosen by TDLib and can be smaller than the specified limit
  final int limit;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "chat_id": chatId,
      "message_id": messageId,
      "from_message_id": fromMessageId,
      "offset": offset,
      "limit": limit,
      "@extra": extra,
		};
	}

  
  GetMessageThreadHistory copyWith({
    int? chatId,
    int? messageId,
    int? fromMessageId,
    int? offset,
    int? limit,
  }) => GetMessageThreadHistory(
    chatId: chatId ?? this.chatId,
    messageId: messageId ?? this.messageId,
    fromMessageId: fromMessageId ?? this.fromMessageId,
    offset: offset ?? this.offset,
    limit: limit ?? this.limit,
  );

  static const String objectType = 'getMessageThreadHistory';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

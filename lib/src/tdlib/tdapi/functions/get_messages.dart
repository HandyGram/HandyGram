part of '../tdapi.dart';

/// **GetMessages** *(getMessages)* - TDLib function
///
/// Returns information about messages. If a message is not found, returns null on the corresponding position of the result.
///
/// * [chatId]: Identifier of the chat the messages belong to.
/// * [messageIds]: Identifiers of the messages to get.
///
/// [Messages] is returned on completion.
final class GetMessages extends TdFunction {
  
  /// **GetMessages** *(getMessages)* - TDLib function
  ///
  /// Returns information about messages. If a message is not found, returns null on the corresponding position of the result.
  ///
  /// * [chatId]: Identifier of the chat the messages belong to.
  /// * [messageIds]: Identifiers of the messages to get.
  ///
  /// [Messages] is returned on completion.
  const GetMessages({
    required this.chatId,
    required this.messageIds,
  });
  
  /// Identifier of the chat the messages belong to 
  final int chatId;

  /// Identifiers of the messages to get
  final List<int> messageIds;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "chat_id": chatId,
      "message_ids": messageIds.map((i) => i).toList(),
      "@extra": extra,
		};
	}

  
  GetMessages copyWith({
    int? chatId,
    List<int>? messageIds,
  }) => GetMessages(
    chatId: chatId ?? this.chatId,
    messageIds: messageIds ?? this.messageIds,
  );

  static const String objectType = 'getMessages';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

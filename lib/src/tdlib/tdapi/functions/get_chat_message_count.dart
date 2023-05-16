part of '../tdapi.dart';

/// **GetChatMessageCount** *(getChatMessageCount)* - TDLib function
///
/// Returns approximate number of messages of the specified type in the chat.
///
/// * [chatId]: Identifier of the chat in which to count messages.
/// * [filter]: Filter for message content; searchMessagesFilterEmpty is unsupported in this function.
/// * [returnLocal]: Pass true to get the number of messages without sending network requests, or -1 if the number of messages is unknown locally.
///
/// [Count] is returned on completion.
final class GetChatMessageCount extends TdFunction {
  
  /// **GetChatMessageCount** *(getChatMessageCount)* - TDLib function
  ///
  /// Returns approximate number of messages of the specified type in the chat.
  ///
  /// * [chatId]: Identifier of the chat in which to count messages.
  /// * [filter]: Filter for message content; searchMessagesFilterEmpty is unsupported in this function.
  /// * [returnLocal]: Pass true to get the number of messages without sending network requests, or -1 if the number of messages is unknown locally.
  ///
  /// [Count] is returned on completion.
  const GetChatMessageCount({
    required this.chatId,
    required this.filter,
    required this.returnLocal,
  });
  
  /// Identifier of the chat in which to count messages
  final int chatId;

  /// Filter for message content; searchMessagesFilterEmpty is unsupported in this function
  final SearchMessagesFilter filter;

  /// Pass true to get the number of messages without sending network requests, or -1 if the number of messages is unknown locally
  final bool returnLocal;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "chat_id": chatId,
      "filter": filter.toJson(),
      "return_local": returnLocal,
      "@extra": extra,
		};
	}

  
  GetChatMessageCount copyWith({
    int? chatId,
    SearchMessagesFilter? filter,
    bool? returnLocal,
  }) => GetChatMessageCount(
    chatId: chatId ?? this.chatId,
    filter: filter ?? this.filter,
    returnLocal: returnLocal ?? this.returnLocal,
  );

  static const String objectType = 'getChatMessageCount';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

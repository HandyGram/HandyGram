part of '../tdapi.dart';

/// **GetChatAvailableMessageSenders** *(getChatAvailableMessageSenders)* - TDLib function
///
/// Returns list of message sender identifiers, which can be used to send messages in a chat.
///
/// * [chatId]: Chat identifier.
///
/// [ChatMessageSenders] is returned on completion.
final class GetChatAvailableMessageSenders extends TdFunction {
  
  /// **GetChatAvailableMessageSenders** *(getChatAvailableMessageSenders)* - TDLib function
  ///
  /// Returns list of message sender identifiers, which can be used to send messages in a chat.
  ///
  /// * [chatId]: Chat identifier.
  ///
  /// [ChatMessageSenders] is returned on completion.
  const GetChatAvailableMessageSenders({
    required this.chatId,
  });
  
  /// Chat identifier
  final int chatId;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "chat_id": chatId,
      "@extra": extra,
		};
	}

  
  GetChatAvailableMessageSenders copyWith({
    int? chatId,
  }) => GetChatAvailableMessageSenders(
    chatId: chatId ?? this.chatId,
  );

  static const String objectType = 'getChatAvailableMessageSenders';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

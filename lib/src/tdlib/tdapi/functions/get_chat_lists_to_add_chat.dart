part of '../tdapi.dart';

/// **GetChatListsToAddChat** *(getChatListsToAddChat)* - TDLib function
///
/// Returns chat lists to which the chat can be added. This is an offline request.
///
/// * [chatId]: Chat identifier.
///
/// [ChatLists] is returned on completion.
final class GetChatListsToAddChat extends TdFunction {
  
  /// **GetChatListsToAddChat** *(getChatListsToAddChat)* - TDLib function
  ///
  /// Returns chat lists to which the chat can be added. This is an offline request.
  ///
  /// * [chatId]: Chat identifier.
  ///
  /// [ChatLists] is returned on completion.
  const GetChatListsToAddChat({
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

  
  GetChatListsToAddChat copyWith({
    int? chatId,
  }) => GetChatListsToAddChat(
    chatId: chatId ?? this.chatId,
  );

  static const String objectType = 'getChatListsToAddChat';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

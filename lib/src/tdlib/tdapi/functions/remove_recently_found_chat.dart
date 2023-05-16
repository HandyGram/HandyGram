part of '../tdapi.dart';

/// **RemoveRecentlyFoundChat** *(removeRecentlyFoundChat)* - TDLib function
///
/// Removes a chat from the list of recently found chats.
///
/// * [chatId]: Identifier of the chat to be removed.
///
/// [Ok] is returned on completion.
final class RemoveRecentlyFoundChat extends TdFunction {
  
  /// **RemoveRecentlyFoundChat** *(removeRecentlyFoundChat)* - TDLib function
  ///
  /// Removes a chat from the list of recently found chats.
  ///
  /// * [chatId]: Identifier of the chat to be removed.
  ///
  /// [Ok] is returned on completion.
  const RemoveRecentlyFoundChat({
    required this.chatId,
  });
  
  /// Identifier of the chat to be removed
  final int chatId;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "chat_id": chatId,
      "@extra": extra,
		};
	}

  
  RemoveRecentlyFoundChat copyWith({
    int? chatId,
  }) => RemoveRecentlyFoundChat(
    chatId: chatId ?? this.chatId,
  );

  static const String objectType = 'removeRecentlyFoundChat';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

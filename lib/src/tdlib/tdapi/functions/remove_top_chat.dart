part of '../tdapi.dart';

/// **RemoveTopChat** *(removeTopChat)* - TDLib function
///
/// Removes a chat from the list of frequently used chats. Supported only if the chat info database is enabled.
///
/// * [category]: Category of frequently used chats.
/// * [chatId]: Chat identifier.
///
/// [Ok] is returned on completion.
final class RemoveTopChat extends TdFunction {
  
  /// **RemoveTopChat** *(removeTopChat)* - TDLib function
  ///
  /// Removes a chat from the list of frequently used chats. Supported only if the chat info database is enabled.
  ///
  /// * [category]: Category of frequently used chats.
  /// * [chatId]: Chat identifier.
  ///
  /// [Ok] is returned on completion.
  const RemoveTopChat({
    required this.category,
    required this.chatId,
  });
  
  /// Category of frequently used chats 
  final TopChatCategory category;

  /// Chat identifier
  final int chatId;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "category": category.toJson(),
      "chat_id": chatId,
      "@extra": extra,
		};
	}

  
  RemoveTopChat copyWith({
    TopChatCategory? category,
    int? chatId,
  }) => RemoveTopChat(
    category: category ?? this.category,
    chatId: chatId ?? this.chatId,
  );

  static const String objectType = 'removeTopChat';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

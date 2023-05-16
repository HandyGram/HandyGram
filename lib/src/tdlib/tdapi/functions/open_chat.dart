part of '../tdapi.dart';

/// **OpenChat** *(openChat)* - TDLib function
///
/// Informs TDLib that the chat is opened by the user. Many useful activities depend on the chat being opened or closed (e.g., in supergroups and channels all updates are received only for opened chats).
///
/// * [chatId]: Chat identifier.
///
/// [Ok] is returned on completion.
final class OpenChat extends TdFunction {
  
  /// **OpenChat** *(openChat)* - TDLib function
  ///
  /// Informs TDLib that the chat is opened by the user. Many useful activities depend on the chat being opened or closed (e.g., in supergroups and channels all updates are received only for opened chats).
  ///
  /// * [chatId]: Chat identifier.
  ///
  /// [Ok] is returned on completion.
  const OpenChat({
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

  
  OpenChat copyWith({
    int? chatId,
  }) => OpenChat(
    chatId: chatId ?? this.chatId,
  );

  static const String objectType = 'openChat';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

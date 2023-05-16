part of '../tdapi.dart';

/// **CloseChat** *(closeChat)* - TDLib function
///
/// Informs TDLib that the chat is closed by the user. Many useful activities depend on the chat being opened or closed.
///
/// * [chatId]: Chat identifier.
///
/// [Ok] is returned on completion.
final class CloseChat extends TdFunction {
  
  /// **CloseChat** *(closeChat)* - TDLib function
  ///
  /// Informs TDLib that the chat is closed by the user. Many useful activities depend on the chat being opened or closed.
  ///
  /// * [chatId]: Chat identifier.
  ///
  /// [Ok] is returned on completion.
  const CloseChat({
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

  
  CloseChat copyWith({
    int? chatId,
  }) => CloseChat(
    chatId: chatId ?? this.chatId,
  );

  static const String objectType = 'closeChat';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

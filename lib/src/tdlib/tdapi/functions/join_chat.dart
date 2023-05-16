part of '../tdapi.dart';

/// **JoinChat** *(joinChat)* - TDLib function
///
/// Adds the current user as a new member to a chat. Private and secret chats can't be joined using this method. May return an error with a message "INVITE_REQUEST_SENT" if only a join request was created.
///
/// * [chatId]: Chat identifier.
///
/// [Ok] is returned on completion.
final class JoinChat extends TdFunction {
  
  /// **JoinChat** *(joinChat)* - TDLib function
  ///
  /// Adds the current user as a new member to a chat. Private and secret chats can't be joined using this method. May return an error with a message "INVITE_REQUEST_SENT" if only a join request was created.
  ///
  /// * [chatId]: Chat identifier.
  ///
  /// [Ok] is returned on completion.
  const JoinChat({
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

  
  JoinChat copyWith({
    int? chatId,
  }) => JoinChat(
    chatId: chatId ?? this.chatId,
  );

  static const String objectType = 'joinChat';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

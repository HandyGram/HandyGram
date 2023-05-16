part of '../tdapi.dart';

/// **DeleteChat** *(deleteChat)* - TDLib function
///
/// Deletes a chat along with all messages in the corresponding chat for all chat members. For group chats this will release the usernames and remove all members.. Use the field chat.can_be_deleted_for_all_users to find whether the method can be applied to the chat.
///
/// * [chatId]: Chat identifier.
///
/// [Ok] is returned on completion.
final class DeleteChat extends TdFunction {
  
  /// **DeleteChat** *(deleteChat)* - TDLib function
  ///
  /// Deletes a chat along with all messages in the corresponding chat for all chat members. For group chats this will release the usernames and remove all members.. Use the field chat.can_be_deleted_for_all_users to find whether the method can be applied to the chat.
  ///
  /// * [chatId]: Chat identifier.
  ///
  /// [Ok] is returned on completion.
  const DeleteChat({
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

  
  DeleteChat copyWith({
    int? chatId,
  }) => DeleteChat(
    chatId: chatId ?? this.chatId,
  );

  static const String objectType = 'deleteChat';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

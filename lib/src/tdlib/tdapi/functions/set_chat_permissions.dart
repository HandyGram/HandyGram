part of '../tdapi.dart';

/// **SetChatPermissions** *(setChatPermissions)* - TDLib function
  ///
  /// Changes the chat members permissions. Supported only for basic groups and supergroups. Requires can_restrict_members administrator right.
  ///
  /// * [chatId]: Chat identifier.
  /// * [permissions]: New non-administrator members permissions in the chat.
  ///
  /// [Ok] is returned on completion.
class SetChatPermissions extends TdFunction {
  
  /// **SetChatPermissions** *(setChatPermissions)* - TDLib function
  ///
  /// Changes the chat members permissions. Supported only for basic groups and supergroups. Requires can_restrict_members administrator right.
  ///
  /// * [chatId]: Chat identifier.
  /// * [permissions]: New non-administrator members permissions in the chat.
  ///
  /// [Ok] is returned on completion.
  const SetChatPermissions({
    required this.chatId,
    required this.permissions,
  });
  
  /// Chat identifier
  final int chatId;

  /// New non-administrator members permissions in the chat
  final ChatPermissions permissions;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "chat_id": chatId,
      "permissions": permissions.toJson(),
      "@extra": extra,
    };
  }
  
  SetChatPermissions copyWith({
    int? chatId,
    ChatPermissions? permissions,
  }) => SetChatPermissions(
    chatId: chatId ?? this.chatId,
    permissions: permissions ?? this.permissions,
  );

  static const String constructor = 'setChatPermissions';
  
  @override
  String getConstructor() => constructor;
}

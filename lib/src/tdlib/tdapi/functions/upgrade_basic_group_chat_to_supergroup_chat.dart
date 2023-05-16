part of '../tdapi.dart';

/// **UpgradeBasicGroupChatToSupergroupChat** *(upgradeBasicGroupChatToSupergroupChat)* - TDLib function
///
/// Creates a new supergroup from an existing basic group and sends a corresponding messageChatUpgradeTo and messageChatUpgradeFrom; requires creator privileges. Deactivates the original basic group.
///
/// * [chatId]: Identifier of the chat to upgrade.
///
/// [Chat] is returned on completion.
final class UpgradeBasicGroupChatToSupergroupChat extends TdFunction {
  
  /// **UpgradeBasicGroupChatToSupergroupChat** *(upgradeBasicGroupChatToSupergroupChat)* - TDLib function
  ///
  /// Creates a new supergroup from an existing basic group and sends a corresponding messageChatUpgradeTo and messageChatUpgradeFrom; requires creator privileges. Deactivates the original basic group.
  ///
  /// * [chatId]: Identifier of the chat to upgrade.
  ///
  /// [Chat] is returned on completion.
  const UpgradeBasicGroupChatToSupergroupChat({
    required this.chatId,
  });
  
  /// Identifier of the chat to upgrade
  final int chatId;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "chat_id": chatId,
      "@extra": extra,
		};
	}

  
  UpgradeBasicGroupChatToSupergroupChat copyWith({
    int? chatId,
  }) => UpgradeBasicGroupChatToSupergroupChat(
    chatId: chatId ?? this.chatId,
  );

  static const String objectType = 'upgradeBasicGroupChatToSupergroupChat';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

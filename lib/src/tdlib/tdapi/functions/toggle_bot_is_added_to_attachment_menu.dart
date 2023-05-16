part of '../tdapi.dart';

/// **ToggleBotIsAddedToAttachmentMenu** *(toggleBotIsAddedToAttachmentMenu)* - TDLib function
///
/// Adds or removes a bot to attachment menu. Bot can be added to attachment menu, only if userTypeBot.can_be_added_to_attachment_menu == true.
///
/// * [botUserId]: Bot's user identifier.
/// * [isAdded]: Pass true to add the bot to attachment menu; pass false to remove the bot from attachment menu.
/// * [allowWriteAccess]: Pass true if the current user allowed the bot to send them messages. Ignored if is_added is false.
///
/// [Ok] is returned on completion.
final class ToggleBotIsAddedToAttachmentMenu extends TdFunction {
  
  /// **ToggleBotIsAddedToAttachmentMenu** *(toggleBotIsAddedToAttachmentMenu)* - TDLib function
  ///
  /// Adds or removes a bot to attachment menu. Bot can be added to attachment menu, only if userTypeBot.can_be_added_to_attachment_menu == true.
  ///
  /// * [botUserId]: Bot's user identifier.
  /// * [isAdded]: Pass true to add the bot to attachment menu; pass false to remove the bot from attachment menu.
  /// * [allowWriteAccess]: Pass true if the current user allowed the bot to send them messages. Ignored if is_added is false.
  ///
  /// [Ok] is returned on completion.
  const ToggleBotIsAddedToAttachmentMenu({
    required this.botUserId,
    required this.isAdded,
    required this.allowWriteAccess,
  });
  
  /// Bot's user identifier
  final int botUserId;

  /// Pass true to add the bot to attachment menu; pass false to remove the bot from attachment menu
  final bool isAdded;

  /// Pass true if the current user allowed the bot to send them messages. Ignored if is_added is false
  final bool allowWriteAccess;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "bot_user_id": botUserId,
      "is_added": isAdded,
      "allow_write_access": allowWriteAccess,
      "@extra": extra,
		};
	}

  
  ToggleBotIsAddedToAttachmentMenu copyWith({
    int? botUserId,
    bool? isAdded,
    bool? allowWriteAccess,
  }) => ToggleBotIsAddedToAttachmentMenu(
    botUserId: botUserId ?? this.botUserId,
    isAdded: isAdded ?? this.isAdded,
    allowWriteAccess: allowWriteAccess ?? this.allowWriteAccess,
  );

  static const String objectType = 'toggleBotIsAddedToAttachmentMenu';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

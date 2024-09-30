/*
 * Copyright (C) Roman Rikhter <teledurak@gmail.com>, 2024
 * This program comes with ABSOLUTELY NO WARRANTY;
 * This is free software, and you are welcome to redistribute it under certain conditions;
 *
 * See /LICENSE for more details.
 */

import 'package:handy_tdlib/api.dart' as td;
import 'package:handygram/src/common/tdlib/misc/updaters_wrappers.dart';
import 'package:handygram/src/common/tdlib/providers/templates/updates_provider.dart';

class ChatUpdate {
  final int chatId;
  final int? messageThreadId;
  final td.Update update;

  const ChatUpdate({
    required this.chatId,
    this.messageThreadId,
    required this.update,
  });
}

class ChatsProvider extends TdlibDataUpdatesProvider<ChatUpdate>
    with TdlibUpdatesProviderTypicalWrappers {
  static const String tag = "ChatsProvider";

  /// Filter chat updates by chatId, messageThreadId and update type
  Stream<ChatUpdate> filter(
    final int chatId, {
    final int? messageThreadId,
    final List<Type>? tdUpdateTypes,
  }) =>
      updates.where(
        (update) {
          if (update.chatId != chatId) return false;
          if (messageThreadId != null &&
              messageThreadId != update.messageThreadId) return false;
          if (tdUpdateTypes != null &&
              !tdUpdateTypes.contains(update.update.runtimeType)) return false;
          return true;
        },
      );

  Future<td.Chat> getChat(int chatId) =>
      tdlibGetAnySingleBasicWrapper<td.Chat>(td.GetChat(chatId: chatId));

  Future<void> openChat(int chatId) =>
      tdlibOkActionWrapper(td.OpenChat(chatId: chatId));

  Future<void> closeChat(int chatId) =>
      tdlibOkActionWrapper(td.CloseChat(chatId: chatId));

  @override
  void updatesListener(td.TdObject obj) {
    if (hasNoListeners) return;
    switch (obj) {
      case td.UpdateChatAction(
          chatId: final chatId,
          messageThreadId: final messageThreadId,
        ):
        update(ChatUpdate(
          chatId: chatId,
          messageThreadId: messageThreadId,
          update: obj,
        ));
      case td.UpdateChatBackground(chatId: final chatId):
      case td.UpdateChatDefaultDisableNotification(chatId: final chatId):
      case td.UpdateChatDraftMessage(chatId: final chatId):
      case td.UpdateChatLastMessage(chatId: final chatId):
      case td.UpdateChatEmojiStatus(chatId: final chatId):
      case td.UpdateChatHasProtectedContent(chatId: final chatId):
      case td.UpdateChatIsMarkedAsUnread(chatId: final chatId):
      case td.UpdateChatIsTranslatable(chatId: final chatId):
      case td.UpdateChatMessageAutoDeleteTime(chatId: final chatId):
      case td.UpdateChatMessageSender(chatId: final chatId):
      case td.UpdateChatNotificationSettings(chatId: final chatId):
      case td.UpdateChatOnlineMemberCount(chatId: final chatId):
      case td.UpdateChatPendingJoinRequests(chatId: final chatId):
      case td.UpdateChatPermissions(chatId: final chatId):
      case td.UpdateChatReadInbox(chatId: final chatId):
      case td.UpdateChatReadOutbox(chatId: final chatId):
      case td.UpdateChatReplyMarkup(chatId: final chatId):
      case td.UpdateChatTheme(chatId: final chatId):
      case td.UpdateChatTitle(chatId: final chatId):
      case td.UpdateChatUnreadMentionCount(chatId: final chatId):
      case td.UpdateChatUnreadReactionCount(chatId: final chatId):
      case td.UpdateChatVideoChat(chatId: final chatId):
      case td.UpdateChatViewAsTopics(chatId: final chatId):
      case td.UpdateChatHasScheduledMessages(chatId: final chatId):
      case td.UpdateChatAvailableReactions(chatId: final chatId):
      case td.UpdateChatActionBar(chatId: final chatId):
        update(ChatUpdate(
          chatId: chatId,
          update: obj as td.Update,
        ));
      default:
        break;
    }
  }
}

/*
 * Copyright (C) Roman Rikhter <teledurak@gmail.com>, 2024
 * This program comes with ABSOLUTELY NO WARRANTY;
 * This is free software, and you are welcome to redistribute it under certain conditions;
 *
 * See /LICENSE for more details.
 */

import 'dart:async';

import 'package:handy_tdlib/api.dart' as td;
import 'package:handygram/src/common/tdlib/misc/updaters_wrappers.dart';
import 'package:handygram/src/common/tdlib/providers/templates/updates_provider.dart';

class MessageUpdate {
  final int chatId;
  final List<int> messageId;
  final td.Update update;
  final bool isNew;
  const MessageUpdate({
    required this.chatId,
    required this.update,
    required this.messageId,
    this.isNew = false,
  });
}

class MessagesProvider extends TdlibDataUpdatesProvider<MessageUpdate>
    with TdlibUpdatesProviderTypicalWrappers {
  static const String tag = "MessagesProvider";

  /// Filter message updates by chatId and messageId (optional)
  Stream<MessageUpdate> filter(
    final int chatId, {
    final int? messageId,
    final List<Type>? tdUpdateTypes,
  }) =>
      updates.where(
        (update) {
          if (update.chatId != chatId) return false;

          if (messageId != null && !update.messageId.contains(messageId)) {
            return false;
          }

          if (tdUpdateTypes != null &&
              !tdUpdateTypes.contains(update.update.runtimeType)) return false;

          return true;
        },
      );

  Future<td.Message> getMessage(int chatId, int messageId) =>
      tdlibGetAnySingleBasicWrapper(td.GetMessage(
        chatId: chatId,
        messageId: messageId,
      ));

  Future<List<td.Message>> getHistory(
    int chatId, {
    required int fromMessageId,
    int offset = 0,
    int limit = 10,
  }) =>
      tdlibGetAnySingleWrapper<td.Messages, List<td.Message>>(
        td.GetChatHistory(
          chatId: chatId,
          fromMessageId: fromMessageId,
          offset: offset,
          limit: limit,
          onlyLocal: false,
        ),
        transform: (source) => source.messages,
      );

  Future<void> viewMessage(int chatId, int messageId) =>
      tdlibOkActionWrapper(td.ViewMessages(
        chatId: chatId,
        messageIds: [messageId],
        source: null,
        forceRead: false,
      ));

  Future<void> readMessageContent(int chatId, int messageId) =>
      tdlibOkActionWrapper(td.OpenMessageContent(
        chatId: chatId,
        messageId: messageId,
      ));

  Future<void> sendMessage(
    int chatId,
    td.InputMessageContent content, {
    td.InputMessageReplyTo? replyTo,
    int? messageThreadId,
  }) =>
      tdlibGetAnySingleBasicWrapper<td.Message>(td.SendMessage(
        chatId: chatId,
        inputMessageContent: content,
        replyTo: replyTo,
        messageThreadId: messageThreadId ?? 0,
      ));

  @override
  void updatesListener(td.TdObject obj) async {
    if (hasNoListeners) return;
    switch (obj) {
      case td.UpdateMessageContent(
          chatId: final chatId,
          messageId: final messageId
        ):
      case td.UpdateMessageContentOpened(
          chatId: final chatId,
          messageId: final messageId
        ):
      case td.UpdateMessageEdited(
          chatId: final chatId,
          messageId: final messageId
        ):
      case td.UpdateMessageFactCheck(
          chatId: final chatId,
          messageId: final messageId
        ):
      case td.UpdateMessageInteractionInfo(
          chatId: final chatId,
          messageId: final messageId
        ):
      case td.UpdateMessageIsPinned(
          chatId: final chatId,
          messageId: final messageId
        ):
      case td.UpdateMessageLiveLocationViewed(
          chatId: final chatId,
          messageId: final messageId
        ):
      case td.UpdateMessageMentionRead(
          chatId: final chatId,
          messageId: final messageId
        ):
      case td.UpdateMessageReaction(
          chatId: final chatId,
          messageId: final messageId
        ):
      case td.UpdateMessageReactions(
          chatId: final chatId,
          messageId: final messageId
        ):
      case td.UpdateMessageSendAcknowledged(
          chatId: final chatId,
          messageId: final messageId
        ):
        update(MessageUpdate(
          update: obj as td.Update,
          chatId: chatId,
          messageId: [messageId],
        ));
      case td.UpdateNewMessage(message: final message):
        update(MessageUpdate(
          update: obj as td.Update,
          chatId: message.chatId,
          messageId: [message.id],
          isNew: true,
        ));
      case td.UpdateMessageSendSucceeded(
          message: final message,
          oldMessageId: final oldId,
        ):
      case td.UpdateMessageSendFailed(
          message: final message,
          oldMessageId: final oldId,
        ):
        update(MessageUpdate(
          update: obj as td.Update,
          chatId: message.chatId,
          messageId: [message.id, oldId],
          isNew: true,
        ));
      case td.UpdateDeleteMessages(
          chatId: final chatId,
          messageIds: final messageId,
        ):
        update(MessageUpdate(
          update: obj as td.Update,
          chatId: chatId,
          messageId: messageId,
        ));
      default:
        break;
    }
  }
}

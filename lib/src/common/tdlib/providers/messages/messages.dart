/*
 * Copyright (C) Roman Rikhter <teledurak@gmail.com>, 2024
 * This program comes with ABSOLUTELY NO WARRANTY;
 * This is free software, and you are welcome to redistribute it under certain conditions;
 *
 * See /LICENSE for more details.
 */

import 'dart:async';

import 'package:handy_tdlib/api.dart' as td;
import 'package:handygram/src/common/exceptions/tdlib_core_exception.dart';
import 'package:handygram/src/common/log/log.dart';
import 'package:handygram/src/common/tdlib/extensions/message/strings/content.dart';
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

class MessagesProvider extends TdlibDataUpdatesProvider<MessageUpdate> {
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
          if (messageId != null && messageId != update.messageId) return false;
          if (tdUpdateTypes != null &&
              !tdUpdateTypes.contains(update.runtimeType)) return false;
          return false;
        },
      );

  Future<td.Message> getMessage(int chatId, int messageId) async {
    final message = await box.invoke(td.GetMessage(
      chatId: chatId,
      messageId: messageId,
    ));
    if (message is! td.Message) {
      if (message is td.TdError) {
        l.e(tag,
            "Failed to get message $chatId/$messageId [${message.code}]: ${message.message}");
        throw TdlibCoreException.fromTd(tag, message);
      } else {
        l.e(tag,
            "Failed to get message $chatId/$messageId: got ${message.runtimeType}");
        throw TdlibCoreException(
            tag, "Got ${message.runtimeType} instead of td.Message");
      }
    }
    return message;
  }

  Future<List<td.Message>> getHistory(
    int chatId, {
    required int fromMessageId,
    int offset = 0,
    int limit = 10,
  }) async {
    final messages = await box.invoke(td.GetChatHistory(
      chatId: chatId,
      fromMessageId: fromMessageId,
      offset: offset,
      limit: limit,
      onlyLocal: false,
    ));
    if (messages is! td.Messages) {
      if (messages is td.TdError) {
        l.e(tag,
            "Failed to get chat $chatId history ($fromMessageId (-> $offset), max $limit) [${messages.code}]: ${messages.message}");
        throw TdlibCoreException.fromTd(tag, messages);
      } else {
        l.e(tag,
            "Failed to get chat $chatId history ($fromMessageId (-> $offset), max $limit): got ${messages.runtimeType}");
        throw TdlibCoreException(
            tag, "Got ${messages.runtimeType} instead of td.Message");
      }
    }
    return messages.messages;
  }

  Future<void> viewMessage(int chatId, int messageId) async {
    final message = await box.invoke(td.ViewMessages(
      chatId: chatId,
      messageIds: [messageId],
      source: null,
      forceRead: false,
    ));
    if (message is! td.Ok) {
      if (message is td.TdError) {
        l.e(tag,
            "Failed to view message $chatId/$messageId [${message.code}]: ${message.message}");
        throw TdlibCoreException.fromTd(tag, message);
      } else {
        l.e(tag,
            "Failed to view message $chatId/$messageId: got ${message.runtimeType}");
        throw TdlibCoreException(
            tag, "Got ${message.runtimeType} instead of td.Ok");
      }
    }
  }

  Future<void> readMessageContent(int chatId, int messageId) async {
    final message = await box.invoke(td.OpenMessageContent(
      chatId: chatId,
      messageId: messageId,
    ));
    if (message is! td.Ok) {
      if (message is td.TdError) {
        l.e(tag,
            "Failed to read message content $chatId/$messageId [${message.code}]: ${message.message}");
        throw TdlibCoreException.fromTd(tag, message);
      } else {
        l.e(tag,
            "Failed to read message content $chatId/$messageId: got ${message.runtimeType}");
        throw TdlibCoreException(
            tag, "Got ${message.runtimeType} instead of td.Ok");
      }
    }
  }

  @override
  void updatesListener(td.TdObject obj) async {
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

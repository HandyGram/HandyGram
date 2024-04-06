import 'dart:async';

import 'package:handy_tdlib/api.dart' as td;
import 'package:handygram/src/common/exceptions/tdlib_core_exception.dart';
import 'package:handygram/src/common/log/log.dart';
import 'package:handygram/src/common/tdlib/providers/templates/updates_provider.dart';

class MessageUpdate {
  final int chatId;
  final int messageId;
  final td.Update update;
  const MessageUpdate({
    required this.chatId,
    required this.messageId,
    required this.update,
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
      case td.UpdateMessageInteractionInfo(
          chatId: final chatId,
          messageId: final messageId
        ):
      case td.UpdateMessageIsPinned(
          chatId: final chatId,
          messageId: final messageId
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

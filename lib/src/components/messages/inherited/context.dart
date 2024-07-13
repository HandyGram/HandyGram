import 'package:flutter/material.dart';
import 'package:handy_tdlib/api.dart';
import 'package:handygram/src/common/exceptions/ui_exception.dart';
import 'package:handygram/src/common/log/log.dart';
import 'package:handygram/src/components/messages/inherited/chat_info.dart';
import 'package:handygram/src/components/messages/inherited/message_info.dart';

extension TdBuildContext on BuildContext {
  static const String tag = "TdBuildContext";

  Message? maybeGetMessage() {
    return MessageInfo.maybeOf(this)?.info;
  }

  Message getMessage() {
    return maybeGetMessage()!;
  }

  T? maybeGetMessageContent<T extends MessageContent>() {
    final message = maybeGetMessage();
    if (message == null) {
      l.d(tag, "No MessageInfo in widget tree");
      return null;
    }
    final content = message.content;
    if (content is! T) {
      l.d(tag, "Failed to find $T in inherited message");
      return null;
    }
    return content;
  }

  T getMessageContent<T extends MessageContent>() {
    final content = maybeGetMessageContent<T>();
    if (content == null) {
      l.e(tag, "Failed to find message content of type $T");
      throw HandyUiException(tag, "Failed to find message content of type $T");
    }
    return content;
  }

  Chat? maybeGetChat() {
    return ChatInfo.maybeOf(this)?.info;
  }

  Chat getChat() {
    return maybeGetChat()!;
  }
}

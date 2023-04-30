import 'package:handygram/src/misc/log.dart';
import 'package:handygram/src/tdlib/td_api.dart' as tdlib;

extension MessageSenderWithId on tdlib.MessageSender {
  int getSenderId() {
    if (getConstructor() == tdlib.MessageSenderChat.constructor) {
      return (this as tdlib.MessageSenderChat).chatId;
    } else if (getConstructor() == tdlib.MessageSenderUser.constructor) {
      return (this as tdlib.MessageSenderUser).userId;
    } else {
      l.e(runtimeType.toString(), "Invalid messageSender object");
      return -1;
    }
  }
}

extension InputMessageWithText on tdlib.InputMessageContent {
  String? getText() {
    if (getConstructor() == tdlib.InputMessageText.constructor) {
      return (this as tdlib.InputMessageText).text.text;
    } else {
      l.e(runtimeType.toString(), "Invalid inputMessageContent object");
      return null;
    }
  }
}

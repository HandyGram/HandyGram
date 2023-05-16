import 'package:handygram/src/tdlib/td_api.dart' as tdlib;

extension MessageSenderWithId on tdlib.MessageSender {
  int getSenderId() => switch (this) {
        tdlib.MessageSenderUser(userId: var id) => id,
        tdlib.MessageSenderChat(chatId: var id) => id,
      };
}

extension InputMessageWithText on tdlib.InputMessageContent {
  String? getText() => switch (this) {
        tdlib.InputMessageText(text: var text) => text.text,
        _ => "unsupported",
      };
}

import 'package:handy_tdlib/api.dart' as td;
import 'package:handygram/src/common/tdlib/extensions/misc/display.dart';
import 'package:handygram/src/common/tdlib/extensions/misc/file.dart';
import 'package:handygram/src/common/tdlib/extensions/misc/int.dart';

extension MessageSenderUtils on td.MessageSender {
  Future<String> get title async => switch (this) {
        td.MessageSenderChat(chatId: final chatId) =>
          (await chatId.asChat).title,
        td.MessageSenderUser(userId: final userId) =>
          (await userId.asUser).displayName,
      };

  Future<String?> get photoPath async => switch (this) {
        td.MessageSenderChat(chatId: final chatId) =>
          (await chatId.asChat).photo?.small.download(),
        td.MessageSenderUser(userId: final userId) =>
          (await userId.asUser).profilePhoto?.small.download(),
      };

  Future<bool> get isBot async => switch (this) {
        td.MessageSenderChat() => false,
        td.MessageSenderUser(userId: final userId) =>
          (await userId.asUser).type is td.UserTypeBot,
      };
}

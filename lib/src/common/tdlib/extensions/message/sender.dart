/*
 * Copyright (C) Roman Rikhter <teledurak@gmail.com>, 2024
 * This program comes with ABSOLUTELY NO WARRANTY;
 * This is free software, and you are welcome to redistribute it under certain conditions;
 *
 * See /LICENSE for more details.
 */

import 'package:handy_tdlib/api.dart' as td;
import 'package:handygram/src/common/cubits/current_account.dart';
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

  Future<int> get accentColorId async => switch (this) {
        td.MessageSenderChat(chatId: final chatId) =>
          (await chatId.asChat).accentColorId,
        td.MessageSenderUser(userId: final userId) =>
          (await userId.asUser).accentColorId,
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

  Future<bool> get isMe async => switch (this) {
        td.MessageSenderChat() => false,
        td.MessageSenderUser(userId: final userId) =>
          await CurrentAccount.providers.options.getMaybeCached('my_id') ==
              userId,
      };

  Future<td.EmojiStatus?> get emojiStatus async => switch (this) {
        td.MessageSenderChat(chatId: final chatId) =>
          (await chatId.asChat).emojiStatus,
        td.MessageSenderUser(userId: final userId) =>
          (await userId.asUser).emojiStatus,
      };

  Future<bool> get isPremium async => switch (this) {
        td.MessageSenderUser(userId: final userId) =>
          (await userId.asUser).isPremium,
        td.MessageSenderChat() => false,
      };
}

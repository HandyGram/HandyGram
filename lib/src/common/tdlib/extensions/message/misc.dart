/*
 * Copyright (C) Roman Rikhter <teledurak@gmail.com>, 2024
 * This program comes with ABSOLUTELY NO WARRANTY;
 * This is free software, and you are welcome to redistribute it under certain conditions;
 *
 * See /LICENSE for more details.
 */

import 'package:handy_tdlib/api.dart';
import 'package:handygram/src/common/cubits/current_account.dart';
import 'package:handygram/src/common/misc/strings.dart';
import 'package:handygram/src/common/tdlib/extensions/chats/misc.dart';

extension MessageEasySender on Message {
  Future<String> get senderName async {
    switch (senderId) {
      case MessageSenderChat(chatId: final chatId):
        if (authorSignature.isNotEmpty) {
          return authorSignature;
        } else {
          final chat = await CurrentAccount.providers.chats.getChat(chatId);
          return chat.title;
        }
      case MessageSenderUser(userId: final userId):
        final user = await CurrentAccount.providers.users.getUser(userId);
        return squashName(user.firstName, user.lastName);
    }
  }

  Future<bool> get isPrivate async {
    final chat = await CurrentAccount.providers.chats.getChat(chatId);
    return chat.isPrivate;
  }
}

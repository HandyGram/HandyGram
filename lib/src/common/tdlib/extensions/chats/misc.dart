/*
 * Copyright (C) Roman Rikhter <teledurak@gmail.com>, 2024
 * This program comes with ABSOLUTELY NO WARRANTY;
 * This is free software, and you are welcome to redistribute it under certain conditions;
 *
 * See /LICENSE for more details.
 */

import 'package:handy_tdlib/api.dart' as td;

extension ChatUtils on td.Chat {
  // Type shorthands

  bool get isPrivate => switch (type) {
        td.ChatTypePrivate() || td.ChatTypeSecret() => true,
        td.ChatTypeBasicGroup() || td.ChatTypeSupergroup() => false,
      };

  bool get isGroup => switch (type) {
        td.ChatTypePrivate() || td.ChatTypeSecret() => false,
        td.ChatTypeBasicGroup() => true,
        td.ChatTypeSupergroup(isChannel: final isChannel) => !isChannel,
      };

  bool get isChannel => switch (type) {
        td.ChatTypeSupergroup(isChannel: final isChannel) => isChannel,
        td.ChatTypePrivate() ||
        td.ChatTypeSecret() ||
        td.ChatTypeBasicGroup() =>
          false,
      };

  // IDs shorthands

  int? get userId => switch (type) {
        td.ChatTypePrivate(userId: final userId) ||
        td.ChatTypeSecret(userId: final userId) =>
          userId,
        td.ChatTypeBasicGroup() || td.ChatTypeSupergroup() => null,
      };

  int? get secretId => switch (type) {
        td.ChatTypeSecret(secretChatId: final secretId) => secretId,
        _ => null,
      };

  int? get basicGroupId => switch (type) {
        td.ChatTypeBasicGroup(basicGroupId: final basicGroupId) => basicGroupId,
        _ => null,
      };

  int? get supergroupId => switch (type) {
        td.ChatTypeSupergroup(supergroupId: final supergroupId) => supergroupId,
        _ => null,
      };

  td.MessageSender get typeAsSender => switch (type) {
        td.ChatTypeBasicGroup() ||
        td.ChatTypeSupergroup() =>
          td.MessageSenderChat(chatId: id),
        td.ChatTypeSecret(userId: final userId) ||
        td.ChatTypePrivate(userId: final userId) =>
          td.MessageSenderUser(userId: userId),
      };
}

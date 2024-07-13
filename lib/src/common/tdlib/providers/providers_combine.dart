/*
 * Copyright (C) Roman Rikhter <teledurak@gmail.com>, 2024
 * This program comes with ABSOLUTELY NO WARRANTY;
 * This is free software, and you are welcome to redistribute it under certain conditions;
 *
 * See /LICENSE for more details.
 */

import 'package:handygram/src/common/log/log.dart';
import 'package:handygram/src/common/tdlib/client/structures/base_provider.dart';
import 'package:handygram/src/common/tdlib/client/structures/tdlib_toolbox.dart';
import 'package:handygram/src/common/tdlib/providers/authorization_state/authorization_state.dart';
import 'package:handygram/src/common/tdlib/providers/chat_lists/chat_lists.dart';
import 'package:handygram/src/common/tdlib/providers/chats/basic_group.dart';
import 'package:handygram/src/common/tdlib/providers/chats/basic_group_full_info.dart';
import 'package:handygram/src/common/tdlib/providers/chats/chat.dart';
import 'package:handygram/src/common/tdlib/providers/chats/secret.dart';
import 'package:handygram/src/common/tdlib/providers/chats/supergroup.dart';
import 'package:handygram/src/common/tdlib/providers/chats/supergroup_full_info.dart';
import 'package:handygram/src/common/tdlib/providers/chats/user.dart';
import 'package:handygram/src/common/tdlib/providers/chats/user_full_info.dart';
import 'package:handygram/src/common/tdlib/providers/connection_state/connection_state.dart';
import 'package:handygram/src/common/tdlib/providers/files/files.dart';
import 'package:handygram/src/common/tdlib/providers/messages/messages.dart';
import 'package:handygram/src/common/tdlib/providers/notifications/notifications.dart';
import 'package:handygram/src/common/tdlib/providers/options/options.dart';
import 'package:handygram/src/common/tdlib/providers/proxy/proxy.dart';
import 'package:handygram/src/common/tdlib/providers/scope_notification_settings/scope_notification_settings.dart';
import 'package:handygram/src/common/tdlib/providers/stickers/stickers.dart';

class TdlibProvidersCombine {
  static const String tag = "TdlibProvidersCombine";

  final AuthorizationStateProvider authorizationState =
      AuthorizationStateProvider();
  final ConnectionStateProvider connectionState = ConnectionStateProvider();
  final ProxyProvider proxy = ProxyProvider();
  final ChatListsProvider chatLists = ChatListsProvider();

  final OptionsProvider options = OptionsProvider();
  final FilesProvider files = FilesProvider();

  final MessagesProvider messages = MessagesProvider();
  final ChatsProvider chats = ChatsProvider();

  final SecretChatsProvider secretChats = SecretChatsProvider();
  final SupergroupsProvider supergroups = SupergroupsProvider();
  final BasicGroupsProvider basicGroups = BasicGroupsProvider();
  final UsersProvider users = UsersProvider();

  final BasicGroupsFullInfoProvider basicGroupsFullInfo =
      BasicGroupsFullInfoProvider();
  final SupergroupsFullInfoProvider supergroupsFullInfo =
      SupergroupsFullInfoProvider();
  final UsersFullInfoProvider usersFullInfo = UsersFullInfoProvider();

  final NotificationsProvider notifications = NotificationsProvider();
  final ScopeNotificationSettingsProvider scopeNotificationSettings =
      ScopeNotificationSettingsProvider();

  final StickersProvider stickers = StickersProvider();

  final bool isLite;

  late final List<TdlibDataProvider> _providers = !isLite
      ? [
          authorizationState,
          connectionState,
          proxy,
          options,
          chatLists,
          files,
          messages,
          chats,
          secretChats,
          supergroups,
          basicGroups,
          users,
          basicGroupsFullInfo,
          supergroupsFullInfo,
          usersFullInfo,
          notifications,
          scopeNotificationSettings,
          stickers,
        ]
      : [
          users,
          chats,
          files,
          options,
          notifications,
          authorizationState,
        ];

  Future<void> attach(TdlibToolbox box) async {
    for (final p in _providers) {
      try {
        await p.attach(box);
      } catch (e, st) {
        l.e(tag, "Failed to attach ${p.runtimeType}: $e\n$st");
      }
    }
  }

  Future<void> detach(TdlibToolbox box) async {
    for (final p in _providers) {
      try {
        await p.detach(box);
      } catch (e, st) {
        l.e(tag, "Failed to detach ${p.runtimeType}: $e\n$st");
      }
    }
  }

  Future<void> onTdlibReady() async {
    for (final p in _providers) {
      try {
        await p.onTdlibReady();
      } catch (e, st) {
        l.e(tag, "Exception on ${p.runtimeType}.onTdlibReady(): $e\n$st");
      }
    }
  }

  Future<void> onAuthorized() async {
    for (final p in _providers) {
      try {
        await p.onAuthorized();
      } catch (e, st) {
        l.e(tag, "Exception on ${p.runtimeType}.onAuthorized(): $e\n$st");
      }
    }
  }

  TdlibProvidersCombine(this.isLite);
}

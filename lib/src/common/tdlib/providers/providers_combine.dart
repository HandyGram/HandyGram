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

class TdlibProvidersCombine {
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
      await p.attach(box);
    }
  }

  Future<void> detach(TdlibToolbox box) async {
    for (final p in _providers) {
      await p.detach(box);
    }
  }

  Future<void> onTdlibReady() async {
    l.d("TdlibProvidersCombine",
        "Notifying providers about TDLib being running");
    for (final p in _providers) {
      await p.onTdlibReady();
    }
  }

  TdlibProvidersCombine(this.isLite);
}

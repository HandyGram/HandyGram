import 'package:handy_tdlib/api.dart' as td;
import 'package:handygram/src/common/cubits/current_account.dart';

extension TdlibIds on int {
  Future<td.Chat> get asChat => CurrentAccount.providers.chats.getChat(this);

  Future<td.User> get asUser => CurrentAccount.providers.users.getUser(this);
  Future<td.UserFullInfo> get asUserFullInfo =>
      CurrentAccount.providers.usersFullInfo.getUserFullInfo(this);

  Future<td.BasicGroup> get asBasicGroup =>
      CurrentAccount.providers.basicGroups.getBasicGroup(this);
  Future<td.BasicGroupFullInfo> get asBasicGroupFullInfo =>
      CurrentAccount.providers.basicGroupsFullInfo.getBasicGroupFullInfo(this);

  Future<td.Supergroup> get asSupergroup =>
      CurrentAccount.providers.supergroups.getSupergroup(this);
  Future<td.SupergroupFullInfo> get asSupergroupFullInfo =>
      CurrentAccount.providers.supergroupsFullInfo.getSupergroupFullInfo(this);
}

extension TdlibDate on int {
  DateTime get asDate => DateTime.fromMillisecondsSinceEpoch(this * 1000);
}

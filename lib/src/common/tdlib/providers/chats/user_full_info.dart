/*
 * Copyright (C) Roman Rikhter <teledurak@gmail.com>, 2024
 * This program comes with ABSOLUTELY NO WARRANTY;
 * This is free software, and you are welcome to redistribute it under certain conditions;
 *
 * See /LICENSE for more details.
 */

import 'package:handy_tdlib/api.dart' as td;
import 'package:handygram/src/common/tdlib/misc/updaters_wrappers.dart';
import 'package:handygram/src/common/tdlib/providers/templates/updates_provider.dart';

class UserFullInfoUpdate {
  final int userId;
  final td.UserFullInfo userFullInfo;
  const UserFullInfoUpdate({
    required this.userId,
    required this.userFullInfo,
  });
}

class UsersFullInfoProvider extends TdlibDataUpdatesProvider<UserFullInfoUpdate>
    with TdlibUpdatesProviderTypicalWrappers {
  static const String tag = "UsersFullInfoProvider";

  Stream<UserFullInfoUpdate> filter(final int userId) =>
      updates.where((update) => update.userId == userId);

  Future<td.UserFullInfo> getUserFullInfo(int userId) =>
      tdlibGetAnySingleBasicWrapper(td.GetUserFullInfo(userId: userId));

  @override
  void updatesListener(td.TdObject obj) {
    if (hasNoListeners) return;
    if (obj is! td.UpdateUserFullInfo) return;
    update(UserFullInfoUpdate(
      userId: obj.userId,
      userFullInfo: obj.userFullInfo,
    ));
  }
}

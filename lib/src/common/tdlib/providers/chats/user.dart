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

class UsersProvider extends TdlibDataUpdatesProvider<td.User>
    with TdlibUpdatesProviderTypicalWrappers {
  static const String tag = "UsersProvider";

  Stream<td.User> filter(final int id) =>
      updates.where((update) => update.id == id);

  Future<td.User> getUser(int userId) =>
      tdlibGetAnySingleBasicWrapper(td.GetUser(userId: userId));

  Future<td.User> getMe() => tdlibGetAnySingleBasicWrapper(const td.GetMe());

  @override
  void updatesListener(td.TdObject obj) {
    if (hasNoListeners) return;
    if (obj is! td.UpdateUser) return;
    update(obj.user);
  }
}

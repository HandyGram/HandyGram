/*
 * Copyright (C) Roman Rikhter <teledurak@gmail.com>, 2024
 * This program comes with ABSOLUTELY NO WARRANTY;
 * This is free software, and you are welcome to redistribute it under certain conditions;
 *
 * See /LICENSE for more details.
 */

import 'package:handy_tdlib/api.dart' as td;
import 'package:handygram/src/common/exceptions/tdlib_core_exception.dart';
import 'package:handygram/src/common/log/log.dart';
import 'package:handygram/src/common/tdlib/providers/templates/updates_provider.dart';

class UsersProvider extends TdlibDataUpdatesProvider<td.User> {
  static const String tag = "UsersProvider";

  Stream<td.User> filter(final int id) =>
      updates.where((update) => update.id == id);

  Future<td.User> getUser(int userId) async {
    final user = await box.invoke(td.GetUser(
      userId: userId,
    ));
    if (user is! td.User) {
      if (user is td.TdError) {
        l.e(tag, "Failed to get user $userId [${user.code}]: ${user.message}");
        throw TdlibCoreException.fromTd(tag, user);
      } else {
        l.e(tag, "Failed to get user $userId: got ${user.runtimeType}");
        throw TdlibCoreException(
            tag, "Got ${user.runtimeType} instead of td.User");
      }
    }
    return user;
  }

  Future<td.User> getMe() async {
    final user = await box.invoke(const td.GetMe());
    if (user is! td.User) {
      if (user is td.TdError) {
        l.e(tag, "Failed to get me [${user.code}]: ${user.message}");
        throw TdlibCoreException.fromTd(tag, user);
      } else {
        l.e(tag, "Failed to get me: got ${user.runtimeType}");
        throw TdlibCoreException(
            tag, "Got ${user.runtimeType} instead of td.User");
      }
    }
    return user;
  }

  @override
  void updatesListener(td.TdObject obj) {
    if (obj is! td.UpdateUser) return;
    update(obj.user);
  }
}

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

class UserFullInfoUpdate {
  final int userId;
  final td.UserFullInfo userFullInfo;
  const UserFullInfoUpdate({
    required this.userId,
    required this.userFullInfo,
  });
}

class UsersFullInfoProvider
    extends TdlibDataUpdatesProvider<UserFullInfoUpdate> {
  static const String tag = "UsersFullInfoProvider";

  Stream<UserFullInfoUpdate> filter(final int userId) =>
      updates.where((update) => update.userId == userId);

  Future<td.UserFullInfo> getUserFullInfo(int userId) async {
    final obj = await box.invoke(td.GetUserFullInfo(
      userId: userId,
    ));
    if (obj is! td.UserFullInfo) {
      if (obj is td.TdError) {
        l.e(tag,
            "Failed to get user full info $userId [${obj.code}]: ${obj.message}");
        throw TdlibCoreException.fromTd(tag, obj);
      } else {
        l.e(tag,
            "Failed to get user full info $userId: got ${obj.runtimeType}");
        throw TdlibCoreException(
            tag, "Got ${obj.runtimeType} instead of td.UserFullInfo");
      }
    }
    return obj;
  }

  @override
  void updatesListener(td.TdObject obj) {
    if (obj is! td.UpdateUserFullInfo) return;
    update(UserFullInfoUpdate(
      userId: obj.userId,
      userFullInfo: obj.userFullInfo,
    ));
  }
}

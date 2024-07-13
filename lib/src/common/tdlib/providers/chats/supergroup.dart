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

class SupergroupsProvider extends TdlibDataUpdatesProvider<td.Supergroup> {
  static const String tag = "SupergroupsProvider";

  Stream<td.Supergroup> filter(final int id) =>
      updates.where((update) => update.id == id);

  Future<td.Supergroup> getSupergroup(int supergroupId) async {
    final supergroup = await box.invoke(td.GetSupergroup(
      supergroupId: supergroupId,
    ));
    if (supergroup is! td.Supergroup) {
      if (supergroup is td.TdError) {
        l.e(tag,
            "Failed to get supergroup $supergroupId [${supergroup.code}]: ${supergroup.message}");
        throw TdlibCoreException.fromTd(tag, supergroup);
      } else {
        l.e(tag,
            "Failed to get supergroup $supergroupId: got ${supergroup.runtimeType}");
        throw TdlibCoreException(
            tag, "Got ${supergroup.runtimeType} instead of td.Supergroup");
      }
    }
    return supergroup;
  }

  Future<td.ChatMembers> getSupergroupMembers({
    required int supergroupId,
    required int offset,
    required int limit,
    td.SupergroupMembersFilter? filter,
  }) async {
    final obj = await box.invoke(td.GetSupergroupMembers(
      supergroupId: supergroupId,
      filter: filter,
      offset: offset,
      limit: limit,
    ));
    if (obj is! td.ChatMembers) {
      if (obj is td.TdError) {
        l.e(tag,
            "Failed to get supergroup members $supergroupId [${obj.code}]: ${obj.message}");
        throw TdlibCoreException.fromTd(tag, obj);
      } else {
        l.e(tag,
            "Failed to get supergroup members $supergroupId: got ${obj.runtimeType}");
        throw TdlibCoreException(
            tag, "Got ${obj.runtimeType} instead of td.ChatMembers");
      }
    }
    return obj;
  }

  @override
  void updatesListener(td.TdObject obj) {
    if (obj is! td.UpdateSupergroup) return;
    update(obj.supergroup);
  }
}

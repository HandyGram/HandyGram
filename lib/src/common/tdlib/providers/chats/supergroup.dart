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

class SupergroupsProvider extends TdlibDataUpdatesProvider<td.Supergroup>
    with TdlibUpdatesProviderTypicalWrappers {
  static const String tag = "SupergroupsProvider";

  Stream<td.Supergroup> filter(final int id) =>
      updates.where((update) => update.id == id);

  Future<td.Supergroup> getSupergroup(int supergroupId) =>
      tdlibGetAnySingleBasicWrapper<td.Supergroup>(
        td.GetSupergroup(supergroupId: supergroupId),
      );

  Future<td.ChatMembers> getSupergroupMembers({
    required int supergroupId,
    required int offset,
    required int limit,
    td.SupergroupMembersFilter? filter,
  }) =>
      tdlibGetAnySingleBasicWrapper<td.ChatMembers>(
        td.GetSupergroupMembers(
          supergroupId: supergroupId,
          filter: filter,
          offset: offset,
          limit: limit,
        ),
      );

  @override
  void updatesListener(td.TdObject obj) {
    if (obj is! td.UpdateSupergroup) return;
    update(obj.supergroup);
  }
}

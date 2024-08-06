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

class BasicGroupsProvider extends TdlibDataUpdatesProvider<td.BasicGroup>
    with TdlibUpdatesProviderTypicalWrappers {
  static const String tag = "BasicGroupsProvider";

  Stream<td.BasicGroup> filter(final int id) =>
      updates.where((update) => update.id == id);

  Future<td.BasicGroup> getBasicGroup(int basicGroupId) =>
      tdlibGetAnySingleBasicWrapper<td.BasicGroup>(
        td.GetBasicGroup(basicGroupId: basicGroupId),
      );

  @override
  void updatesListener(td.TdObject obj) {
    if (obj is! td.UpdateBasicGroup) return;
    update(obj.basicGroup);
  }
}

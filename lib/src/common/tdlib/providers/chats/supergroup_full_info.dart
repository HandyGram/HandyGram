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

class SupergroupFullInfoUpdate {
  final int supergroupId;
  final td.SupergroupFullInfo supergroupFullInfo;
  const SupergroupFullInfoUpdate({
    required this.supergroupId,
    required this.supergroupFullInfo,
  });
}

class SupergroupsFullInfoProvider
    extends TdlibDataUpdatesProvider<SupergroupFullInfoUpdate>
    with TdlibUpdatesProviderTypicalWrappers {
  static const String tag = "SupergroupsFullInfoProvider";

  Stream<SupergroupFullInfoUpdate> filter(final int supergroupId) =>
      updates.where((update) => update.supergroupId == supergroupId);

  Future<td.SupergroupFullInfo> getSupergroupFullInfo(int supergroupId) =>
      tdlibGetAnySingleBasicWrapper<td.SupergroupFullInfo>(
        td.GetSupergroupFullInfo(supergroupId: supergroupId),
      );

  @override
  void updatesListener(td.TdObject obj) {
    if (obj is! td.UpdateSupergroupFullInfo) return;
    update(SupergroupFullInfoUpdate(
      supergroupId: obj.supergroupId,
      supergroupFullInfo: obj.supergroupFullInfo,
    ));
  }
}

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

class SupergroupFullInfoUpdate {
  final int supergroupId;
  final td.SupergroupFullInfo supergroupFullInfo;
  const SupergroupFullInfoUpdate({
    required this.supergroupId,
    required this.supergroupFullInfo,
  });
}

class SupergroupsFullInfoProvider
    extends TdlibDataUpdatesProvider<SupergroupFullInfoUpdate> {
  static const String tag = "SupergroupsFullInfoProvider";

  Stream<SupergroupFullInfoUpdate> filter(final int supergroupId) =>
      updates.where((update) => update.supergroupId == supergroupId);

  Future<td.SupergroupFullInfo> getSupergroupFullInfo(int supergroupId) async {
    final obj = await box.invoke(td.GetSupergroupFullInfo(
      supergroupId: supergroupId,
    ));
    if (obj is! td.SupergroupFullInfo) {
      if (obj is td.TdError) {
        l.e(tag,
            "Failed to get supergroup full info $supergroupId [${obj.code}]: ${obj.message}");
        throw TdlibCoreException.fromTd(tag, obj);
      } else {
        l.e(tag,
            "Failed to get supergroup full info $supergroupId: got ${obj.runtimeType}");
        throw TdlibCoreException(
            tag, "Got ${obj.runtimeType} instead of td.SupergroupFullInfo");
      }
    }
    return obj;
  }

  @override
  void updatesListener(td.TdObject obj) {
    if (obj is! td.UpdateSupergroupFullInfo) return;
    update(SupergroupFullInfoUpdate(
      supergroupId: obj.supergroupId,
      supergroupFullInfo: obj.supergroupFullInfo,
    ));
  }
}

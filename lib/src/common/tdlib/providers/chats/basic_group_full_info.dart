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

class BasicGroupFullInfoUpdate {
  final int basicGroupId;
  final td.BasicGroupFullInfo basicGroupFullInfo;
  const BasicGroupFullInfoUpdate({
    required this.basicGroupId,
    required this.basicGroupFullInfo,
  });
}

class BasicGroupsFullInfoProvider
    extends TdlibDataUpdatesProvider<BasicGroupFullInfoUpdate> {
  static const String tag = "BasicGroupsFullInfoProvider";

  Stream<BasicGroupFullInfoUpdate> filter(final int basicGroupId) =>
      updates.where((update) => update.basicGroupId == basicGroupId);

  Future<td.BasicGroupFullInfo> getBasicGroupFullInfo(int basicGroupId) async {
    final obj = await box.invoke(td.GetBasicGroupFullInfo(
      basicGroupId: basicGroupId,
    ));
    if (obj is! td.BasicGroupFullInfo) {
      if (obj is td.TdError) {
        l.e(tag,
            "Failed to get basicGroup full info $basicGroupId [${obj.code}]: ${obj.message}");
        throw TdlibCoreException.fromTd(tag, obj);
      } else {
        l.e(tag,
            "Failed to get basicGroup full info $basicGroupId: got ${obj.runtimeType}");
        throw TdlibCoreException(
            tag, "Got ${obj.runtimeType} instead of td.BasicGroupFullInfo");
      }
    }
    return obj;
  }

  @override
  void updatesListener(td.TdObject obj) {
    if (obj is! td.UpdateBasicGroupFullInfo) return;
    update(BasicGroupFullInfoUpdate(
      basicGroupId: obj.basicGroupId,
      basicGroupFullInfo: obj.basicGroupFullInfo,
    ));
  }
}

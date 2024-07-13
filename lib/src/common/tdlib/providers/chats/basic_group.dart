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

class BasicGroupsProvider extends TdlibDataUpdatesProvider<td.BasicGroup> {
  static const String tag = "BasicGroupsProvider";

  Stream<td.BasicGroup> filter(final int id) =>
      updates.where((update) => update.id == id);

  Future<td.BasicGroup> getBasicGroup(int basicGroupId) async {
    final basicGroup = await box.invoke(td.GetBasicGroup(
      basicGroupId: basicGroupId,
    ));
    if (basicGroup is! td.BasicGroup) {
      if (basicGroup is td.TdError) {
        l.e(tag,
            "Failed to get basicGroup $basicGroupId [${basicGroup.code}]: ${basicGroup.message}");
        throw TdlibCoreException.fromTd(tag, basicGroup);
      } else {
        l.e(tag,
            "Failed to get basicGroup $basicGroupId: got ${basicGroup.runtimeType}");
        throw TdlibCoreException(
            tag, "Got ${basicGroup.runtimeType} instead of td.BasicGroup");
      }
    }
    return basicGroup;
  }

  @override
  void updatesListener(td.TdObject obj) {
    if (obj is! td.UpdateBasicGroup) return;
    update(obj.basicGroup);
  }
}

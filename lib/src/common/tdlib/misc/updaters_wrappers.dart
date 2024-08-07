import 'dart:async';

import 'package:handy_tdlib/api.dart' as td;
import 'package:handygram/src/common/exceptions/tdlib_core_exception.dart';
import 'package:handygram/src/common/log/log.dart';
import 'package:handygram/src/common/tdlib/client/structures/base_provider.dart';
import 'package:handygram/src/common/tdlib/providers/templates/attachable_box.dart';
import 'package:meta/meta.dart';

// ignore: missing_override_of_must_be_overridden
mixin TdlibUpdatesProviderTypicalWrappers on TdlibDataProvider, AttachableBox {
  static const String tag = "TdlibGetWrapper";

  @protected
  Future<O> tdlibGetAnySingleBasicWrapper<O extends td.TdObject>(
    td.TdFunction function,
  ) =>
      tdlibGetAnySingleWrapper<O, O>(function);

  @protected
  Future<R> tdlibGetAnySingleWrapper<S extends td.TdObject, R>(
    td.TdFunction function, {
    FutureOr<R> Function(S sourceType)? transform,
  }) async {
    if (transform == null) assert(S == R, "S and R are not same types");

    final obj = await box!.invoke(function);
    if (obj is! S) {
      if (obj is td.TdError) {
        l.e(tag, "Failed to get $S [${obj.code}]: ${obj.message}");
        throw TdlibCoreException.fromTd(tag, obj);
      } else {
        l.e(tag, "Failed to get $S: got ${obj.runtimeType}");
        throw TdlibCoreException(tag, "Got ${obj.runtimeType} instead of $S");
      }
    }
    return transform?.call(obj) ?? obj as R;
  }

  @protected
  Future<void> tdlibOkActionWrapper<A extends td.TdObject>(
      td.TdFunction function) async {
    final obj = await box?.invoke(function);
    if (obj is! A && obj is! td.Ok) {
      if (obj is td.TdError) {
        l.e(tag, "Failed to perform $function [${obj.code}]: ${obj.message}");
        throw TdlibCoreException.fromTd(tag, obj);
      } else {
        l.e(tag, "Failed to perform $function");
        throw TdlibCoreException(
            tag, "Got ${obj.runtimeType} instead of td.Ok");
      }
    }
  }
}

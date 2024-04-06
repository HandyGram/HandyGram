import 'package:handy_tdlib/api.dart' as td;
import 'package:handygram/src/common/exceptions/tdlib_core_exception.dart';
import 'package:handygram/src/common/tdlib/client/management/multi_manager.dart';
import 'package:handygram/src/common/tdlib/client/management/user_manager.dart';

/// TDLib tools provided to each class
class TdlibToolbox {
  static const String tag = "TdlibToolbox";

  /// Stream with all TDLib updates
  final Stream<td.TdObject> updatesStream;

  /// Current TdlibClient's clientId
  final int clientId;

  /// TDLib invoke() function
  Future<td.TdObject?> invoke(
    final td.TdFunction f, {
    Duration timeout = const Duration(seconds: 10),
  }) =>
      _invoke(f, timeout: timeout);

  final Future<td.TdObject?> Function(td.TdFunction, {Duration timeout})
      _invoke;

  /// TDLib user manager attached to this box (convenience method)
  TdlibUserManager get user =>
      TdlibMultiManager.instance.fromClientId(clientId) ??
      (throw TdlibCoreException(
          tag, "Manager for $clientId doesn't currently exist"));

  /// Internal TdlibToolbox constructor
  const TdlibToolbox({
    required this.updatesStream,
    required this.clientId,
    required final Future<td.TdObject?> Function(td.TdFunction,
            {Duration timeout})
        invoke,
  }) : _invoke = invoke;
}

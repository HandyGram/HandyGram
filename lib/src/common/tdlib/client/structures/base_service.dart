import 'dart:async';

import 'package:handy_tdlib/api.dart' as td;
import 'package:handygram/src/common/tdlib/client/structures/base_provider.dart';
import 'package:handygram/src/common/tdlib/client/structures/tdlib_toolbox.dart';

/// Flutter service, used to provide information to TDLib.
///
/// For example: calls to [td.SetNetworkType] on network type changes.
abstract class TdlibService implements TdlibDataProvider {
  /// Attach service to TdlibClient
  @override
  FutureOr<void> attach(final TdlibToolbox toolbox) {}

  /// Detach service from TdlibClient
  @override
  FutureOr<void> detach(final TdlibToolbox toolbox) {}

  /// This function is run when TDLib has received sendTdlibParameters
  @override
  FutureOr<void> onTdlibReady() {}

  /// This function is run when TDLib has authorized successfully
  FutureOr<void> onAuthorized() {}
}

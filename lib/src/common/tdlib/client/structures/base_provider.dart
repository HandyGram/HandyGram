import 'dart:async';

import 'package:handygram/src/common/tdlib/client/structures/tdlib_toolbox.dart';

/// Base TDLib Data Provider layer class
abstract class TdlibDataProvider {
  /// Attach provider to TdlibClient
  FutureOr<void> attach(final TdlibToolbox toolbox) {}

  /// Detach provider from TdlibClient
  FutureOr<void> detach(final TdlibToolbox toolbox) {}

  /// This function is run when TDLib has received sendTdlibParameters
  FutureOr<void> onTdlibReady() {}
}

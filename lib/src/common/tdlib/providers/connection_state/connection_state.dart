/*
 * Copyright (C) Roman Rikhter <teledurak@gmail.com>, 2024
 * This program comes with ABSOLUTELY NO WARRANTY;
 * This is free software, and you are welcome to redistribute it under certain conditions;
 *
 * See /LICENSE for more details.
 */

import 'package:handy_tdlib/api.dart';
import 'package:handygram/src/common/tdlib/providers/templates/streamed_provider.dart';

class ConnectionStateProvider
    extends TdlibStreamedDataProvider<ConnectionState> {
  @override
  final initialState = const ConnectionStateConnecting();

  @override
  void updatesListener(final TdObject update) {
    switch (update) {
      case UpdateConnectionState(state: final s):
        reportState(s);
      default:
        return;
    }
  }
}

import 'dart:async';

import 'package:handy_tdlib/api.dart' as td;
import 'package:handygram/src/common/tdlib/client/structures/tdlib_toolbox.dart';
import 'package:handygram/src/common/tdlib/client/td/parameters.dart';
import 'package:handygram/src/common/tdlib/client/td/tdlib_client.dart';
import 'package:handygram/src/common/tdlib/providers/authorization_state/authorization_states.dart';
import 'package:handygram/src/common/tdlib/providers/providers_combine.dart';
import 'package:handygram/src/common/tdlib/services/services_combine.dart';

class TdlibUserManager {
  static const String tag = "TdlibUserManager";

  final bool isLite;
  late final TdlibProvidersCombine providers = TdlibProvidersCombine(isLite);
  late final TdlibServicesCombine services = TdlibServicesCombine(isLite);

  late final TdlibClient _client;
  late final TdlibToolbox _box;

  late final TdlibParameters parameters;
  late final int clientId;

  StreamSubscription? _sub;

  final int databaseId;

  Future<void> _start([final int? predefinedClientId]) async {
    _client = await TdlibClient.start(databaseId, predefinedClientId);
    clientId = _client.clientId;

    parameters = await TdlibParameters.init(databaseId);
    _box = TdlibToolbox(
      invoke: _client.invoke,
      updatesStream: _client.updates,
      clientId: clientId,
    );

    await providers.attach(_box);
    _client.providersReady();
    await services.attach(_box);

    if (!isLite) {
      _sub = providers.authorizationState.states.listen(_listenToAuthState);
    } else {
      _sub = _box.updatesStream.listen(_listenToNotifications);
    }
  }

  void _listenToNotifications(td.TdObject obj) async {
    if (obj is td.UpdateActiveNotifications) {
      await providers.onTdlibReady();
      await services.onTdlibReady();
    }
  }

  void _listenToAuthState(AuthorizationState state) async {
    switch (state) {
      case AuthorizationStateLoading(sentTdlibParameters: final ready):
        if (!ready) break;
        await providers.onTdlibReady();
        await services.onTdlibReady();
      default:
        break;
    }
  }

  Future<void> destroy() async {
    await services.detach(_box);
    await providers.detach(_box);
    await _client.close();
    await _sub?.cancel();
  }

  static Future<TdlibUserManager> start(int databaseId) async {
    TdlibUserManager m = TdlibUserManager._(databaseId, false);
    await m._start();
    return m;
  }

  static Future<TdlibUserManager> startLite({
    required int databaseId,
    required int clientId,
  }) async {
    TdlibUserManager m = TdlibUserManager._(databaseId, true);
    await m._start(clientId);
    return m;
  }

  TdlibUserManager._(this.databaseId, this.isLite);
}

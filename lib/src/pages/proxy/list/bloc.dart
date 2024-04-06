import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:handy_tdlib/api.dart' as td;
import 'package:handygram/src/common/cubits/current_account.dart';

enum ProxyConnectionStatus {
  waitingForNetwork,
  connectingToTelegram,
  connectingToProxy,
  connected,
}

sealed class ProxyStatus {
  const ProxyStatus();
}

final class ProxyStatusDisabled extends ProxyStatus {
  /// Null if never
  final DateTime? lastUsed;

  const ProxyStatusDisabled({this.lastUsed});
}

final class ProxyStatusEnabled extends ProxyStatus {
  final ProxyConnectionStatus connectionStatus;
  const ProxyStatusEnabled(this.connectionStatus);
}

sealed class ProxyListEvent {
  const ProxyListEvent();
}

final class ProxyListOpened extends ProxyListEvent {
  const ProxyListOpened();
}

final class EnableProxyFromList extends ProxyListEvent {
  final int id;
  const EnableProxyFromList(this.id);
}

final class DisableProxyFromList extends ProxyListEvent {
  const DisableProxyFromList();
}

final class _UpdateProxiesListInternal extends ProxyListEvent {
  final List<td.Proxy> proxies;
  const _UpdateProxiesListInternal(this.proxies);
}

final class _UpdateConnStateInternal extends ProxyListEvent {
  final td.ConnectionState state;
  const _UpdateConnStateInternal(this.state);
}

sealed class ProxyListState {
  const ProxyListState();
}

final class ProxyListLoading extends ProxyListState {
  const ProxyListLoading();
}

final class ProxyListUpdated extends ProxyListState {
  final List<({String server, ProxyStatus status, int id})> proxies;
  const ProxyListUpdated(this.proxies);
}

class ProxyListBloc extends Bloc<ProxyListEvent, ProxyListState> {
  List<({String server, ProxyStatus status, int id})> proxies = [];
  td.ConnectionState _currentCs =
      CurrentAccount.providers.connectionState.state;

  ProxyListBloc() : super(const ProxyListLoading()) {
    CurrentAccount.providers.connectionState.states.listen(
      (state) => (isClosed) ? null : add(_UpdateConnStateInternal(state)),
    );
    CurrentAccount.providers.proxy.addListener(
      () => (isClosed)
          ? null
          : add(
              _UpdateProxiesListInternal(
                  CurrentAccount.providers.proxy.proxies),
            ),
    );

    on<ProxyListOpened>(
      (_, __) => add(
        _UpdateProxiesListInternal(CurrentAccount.providers.proxy.proxies),
      ),
    );

    on<_UpdateProxiesListInternal>(_onListUpdate);
    on<_UpdateConnStateInternal>(_onCsUpdate);

    on<EnableProxyFromList>(_enableProxy);
    on<DisableProxyFromList>(_disableProxy);
  }

  Future<void> _enableProxy(
    EnableProxyFromList event,
    Emitter<ProxyListState> emit,
  ) async {
    final index = proxies.indexWhere((e) => e.status is ProxyStatusEnabled);
    // Check if we have an already enabled proxy
    if (index != -1) {
      await CurrentAccount.providers.proxy.disableProxy();
    }

    await CurrentAccount.providers.proxy.enableProxy(event.id);
  }

  Future<void> _disableProxy(
    DisableProxyFromList event,
    Emitter<ProxyListState> emit,
  ) async {
    final index = proxies.indexWhere((e) => e.status is ProxyStatusEnabled);
    // Check if we have nothing to disable
    if (index == -1) return;

    await CurrentAccount.providers.proxy.disableProxy();
  }

  static ProxyConnectionStatus _fromCs(td.ConnectionState state) =>
      switch (state) {
        td.ConnectionStateWaitingForNetwork() =>
          ProxyConnectionStatus.waitingForNetwork,
        td.ConnectionStateReady() ||
        td.ConnectionStateUpdating() =>
          ProxyConnectionStatus.connected,
        td.ConnectionStateConnecting() =>
          ProxyConnectionStatus.connectingToTelegram,
        td.ConnectionStateConnectingToProxy() =>
          ProxyConnectionStatus.connectingToProxy,
      };

  Future<void> _onCsUpdate(
    _UpdateConnStateInternal event,
    Emitter<ProxyListState> emit,
  ) async {
    _currentCs = event.state;
    final index = proxies.indexWhere((e) => e.status is ProxyStatusEnabled);
    if (index == -1) return;
    final proxy = proxies[index];
    proxies[index] = (
      id: proxy.id,
      server: proxy.server,
      status: ProxyStatusEnabled(_fromCs(event.state)),
    );
    emit(ProxyListUpdated(proxies));
  }

  Future<void> _onListUpdate(
    _UpdateProxiesListInternal event,
    Emitter<ProxyListState> emit,
  ) async {
    proxies = event.proxies
        .map(
          (e) => (
            id: e.id,
            server: "${e.server}:${e.port}",
            status: e.isEnabled
                ? ProxyStatusEnabled(_fromCs(_currentCs))
                : ProxyStatusDisabled(
                    lastUsed: DateTime.fromMillisecondsSinceEpoch(
                      e.lastUsedDate * 1000,
                    ),
                  ),
          ),
        )
        .toList();
    emit(ProxyListUpdated(proxies));
  }
}

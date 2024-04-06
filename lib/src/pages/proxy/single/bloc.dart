import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:handy_tdlib/api.dart' as td;
import 'package:handygram/src/common/cubits/current_account.dart';

sealed class ProxyEvent {
  const ProxyEvent();
}

final class ProxyOpened extends ProxyEvent {
  const ProxyOpened();
}

final class ProxyDelete extends ProxyEvent {
  const ProxyDelete();
}

final class ProxyCommit extends ProxyEvent {
  final String server;
  final int port;
  final td.ProxyType type;

  const ProxyCommit({
    required this.server,
    required this.port,
    required this.type,
  });
}

sealed class ProxyState {
  const ProxyState();
}

final class ProxyLoading extends ProxyState {
  const ProxyLoading();
}

final class ProxyCreating extends ProxyState {
  const ProxyCreating();
}

final class ProxyEditing extends ProxyState {
  final String server;
  final int port;
  final td.ProxyType type;

  const ProxyEditing({
    required this.port,
    required this.server,
    required this.type,
  });
}

class ProxyBloc extends Bloc<ProxyEvent, ProxyState> {
  final int? id;
  final BuildContext context;

  ProxyBloc(this.context, this.id) : super(const ProxyLoading()) {
    on<ProxyOpened>((_, emit) => _load(emit));
    on<ProxyCommit>((event, emit) => _commit(event, emit));
    on<ProxyDelete>((_, emit) => _delete(emit));
  }

  void _pop() {
    if (context.mounted) {
      GoRouter.of(context).pop();
    }
  }

  Future<void> _delete(Emitter<ProxyState> emit) async {
    if (id != null) await CurrentAccount.providers.proxy.removeProxy(id!);
    _pop();
  }

  Future<void> _commit(ProxyCommit event, Emitter<ProxyState> emit) async {
    final proxies = CurrentAccount.providers.proxy;
    if (id == null) {
      await proxies.addProxy(
        event.server,
        event.port,
        false,
        event.type,
      );
    } else {
      await proxies.editProxy(
        id!,
        server: event.server,
        port: event.port,
        enable: false,
        type: event.type,
      );
    }
    _pop();
  }

  void _load(Emitter<ProxyState> emit) async {
    if (id == null) return emit(const ProxyCreating());

    final proxy = CurrentAccount.providers.proxy.proxies
        .where((e) => e.id == id)
        .firstOrNull;
    if (proxy == null) {
      _pop();
      return;
    }

    return emit(ProxyEditing(
      port: proxy.port,
      server: proxy.server,
      type: proxy.type,
    ));
  }
}

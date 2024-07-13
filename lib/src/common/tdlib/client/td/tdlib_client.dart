/*
 * Copyright (C) Roman Rikhter <teledurak@gmail.com>, 2024
 * This program comes with ABSOLUTELY NO WARRANTY;
 * This is free software, and you are welcome to redistribute it under certain conditions;
 *
 * See /LICENSE for more details.
 */

import 'dart:async';
import 'dart:convert';
import 'dart:isolate';
import 'dart:math';

import 'package:handy_tdlib/api.dart';
import 'package:handy_tdlib/client.dart';
import 'package:handygram/src/common/log/log.dart';
import 'package:handygram/src/common/tdlib/client/management/rx/client.dart';

/// TDLib invoke function type
typedef InvokeFunction = Future<TdObject?> Function(TdFunction);

class _InvokeDataUnit {
  final int extra;
  final TdFunction function;
  const _InvokeDataUnit(this.function, this.extra);
}

typedef _ThreadData = ({
  SendPort tx,
  SendPort pollingTx,
  int? clientId,
});

/// Lowest-level TDLib data provider
class TdlibClient {
  static const String tag = "TdlibClient";
  static const String threadTag = "TdlibClientService";

  final Random _rng = Random(
    DateTime.now().millisecondsSinceEpoch,
  );

  /// This instance's TDJSON client ID
  late final int clientId;

  // Resources for invoke thread
  late final Isolate _thread;
  late final SendPort _tx, _pollingTx;
  final ReceivePort _rx = ReceivePort('TDLib-Client');
  final ReceivePort _pollingRx = ReceivePort('TDLib-Client-Polling');
  late final Stream<dynamic> _brx = _rx.asBroadcastStream();

  // Controllers
  final StreamController<TdObject> _updateController =
      StreamController.broadcast();
  final StreamController<TdObject> _responsesController =
      StreamController.broadcast();

  /// TDLib updates stream
  late final Stream<TdObject> _events;
  late final StreamSubscription _sub;
  late final Stream<TdObject> updates = _updateController.stream;

  static String _threadTag(final int? clientId) => "$threadTag-C$clientId";

  /// Make an asynchronous invoke to TDLib client
  Future<TdObject?> invoke(
    final TdFunction func, {
    Duration timeout = const Duration(seconds: 10),
  }) async {
    final int extra = _rng.nextInt(1 << 32);
    final _InvokeDataUnit request = _InvokeDataUnit(func, extra);

    _tx.send(request);
    final TdObject? object = await Future.any([
      Future.delayed(timeout),
      _responsesController.stream.firstWhere(
        (final TdObject object) => object.extra == extra,
      ),
    ]);

    if (object == null) {
      l.e(
        'TdlibClient',
        'Timeout on request ${request.function.currentObjectId}@$extra',
      );
    }

    return object;
  }

  Future<void> _update(final dynamic object) async {
    // Non-zero extra shows us a function result
    if (object.extra == null) {
      _updateController.add(object);
    } else {
      _responsesController.add(object);
    }
  }

  Future<void> _close() async {
    await invoke(const Close());
    _thread.kill(priority: Isolate.immediate);
    await _sub.cancel();
    await _updateController.close();
    await _responsesController.close();
  }

  /// Stop client and clean all its resources
  Future<void> close() async {
    await _close();
  }

  static Future<void> _threadWorker(final _ThreadData data) async {
    await TdPlugin.initialize();
    final int clientId = data.clientId ?? TdPlugin.instance.tdCreateClientId();
    final ReceivePort rx = ReceivePort(), pollingRx = ReceivePort();
    final SendPort tx = data.tx, pollingTx = data.pollingTx;
    tx.send([rx.sendPort, pollingRx.sendPort, clientId]);

    bool providersReady = false;
    final subscription = rx.listen((final request) {
      if (request == null) {
        providersReady = true;
        return;
      }
      if (request is! _InvokeDataUnit && !providersReady) {
        l.e(tag, "Unexpected request before providers init: $request", true);
        return;
      }
      TdPlugin.instance.tdSend(
        clientId,
        jsonEncode(
          request.function.toJson(request.extra),
        ),
      );
    });

    // Polling made to ensure that connected UI thread is alive
    pollingTx.send(null);
    await for (final event in pollingRx.timeout(
      const Duration(milliseconds: 1200),
      onTimeout: (s) => s.add(-1),
    )) {
      if (event == -1 && providersReady) break;
      await Future.delayed(const Duration(milliseconds: 500));
      pollingTx.send(null);
    }

    l.d(_threadTag(clientId), "We're not needed anymore, closing instance.",
        true);
    TdPlugin.instance.tdSend(
      clientId,
      jsonEncode(const Close().toJson(12345678)),
    );
    await subscription.cancel();
    await Future.delayed(const Duration(milliseconds: 500));
  }

  Future<void> _start([final int? preClientId]) async {
    _thread = await Isolate.spawn<_ThreadData>(
      _threadWorker,
      (
        tx: _rx.sendPort,
        pollingTx: _pollingRx.sendPort,
        clientId: preClientId,
      ),
      errorsAreFatal: false,
    );
    final List<dynamic> infoInvoke = await _brx.first;
    _tx = infoInvoke[0];
    _pollingTx = infoInvoke[1];
    clientId = infoInvoke[2];

    _pollingRx.listen((e) => _pollingTx.send(1));

    _events = TdlibReceiveManager.instance.filter(clientId);
    _sub = _events.listen(_update);

    l.i("$tag-C$clientId", "Started");
  }

  void providersReady() {
    _tx.send(null);
  }

  TdlibClient._();

  /// Start TDLib client and listen to updates
  static Future<TdlibClient> start(int databaseId, [int? clientId]) async {
    final TdlibClient client = TdlibClient._();
    await client._start(clientId);
    return client;
  }
}

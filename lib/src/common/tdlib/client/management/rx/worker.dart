import 'dart:async';
import 'dart:convert';
import 'dart:isolate';
import 'dart:math';
import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:handy_tdlib/client.dart';

void tdlibRxMain(SendPort message) async {
  final worker = TdlibReceiveManagerWorker();
  try {
    await worker.work(message);
  } catch (e, st) {
    TdlibReceiveManagerWorker._l("Error: $e\n$st");
    return tdlibRxMain(message);
  }
}

class _WorkerSubscriber {
  final SendPort targetPort;
  final RawReceivePort exitListener;
  final int token;

  const _WorkerSubscriber({
    required this.targetPort,
    required this.exitListener,
    required this.token,
  });
}

class TdlibReceiveManagerWorker {
  /// Registrant SendPort ID
  static String registrantId = "TdlibListenersRegistrantPort";

  final ReceivePort _rx = ReceivePort();
  bool _closing = false;
  final Completer _tdListenerExit = Completer(), _firstSub = Completer();

  final Map<int, _WorkerSubscriber> _subs = {};

  static void _l([dynamic obj]) {
    if (kDebugMode) print("TdlibRxWorker: $obj");
  }

  static Future<dynamic> sendMessage(
    SendPort target,
    String type, {
    bool oneWay = false,
    Map? data,
    Duration timeout = const Duration(seconds: 2),
  }) async {
    if (oneWay) {
      target.send({
        "msg": {
          "type": type,
          ...?data,
        },
      });
      return null;
    }

    final resultC = Completer<dynamic>();
    final resultPort = RawReceivePort((r) {
      resultC.complete(r);
    });
    target.send({
      "port": resultPort.sendPort,
      "msg": {
        "type": type,
        ...?data,
      },
    });
    return resultC.future.timeout(timeout, onTimeout: () => null);
  }

  int? _subscribe(final Map msg) {
    if (msg['port'] is! SendPort) return null;

    final token = Random().nextInt(1 << 32);
    final port = msg['port'] as SendPort;
    final exitListener = RawReceivePort((_) async {
      final root = IsolateNameServer.lookupPortByName(registrantId);
      if (root == null) return;
      await sendMessage(
        root,
        "unsubscribe",
        data: {"token": token},
        oneWay: true,
      );
    });
    _subs[token] = _WorkerSubscriber(
      targetPort: port,
      exitListener: exitListener,
      token: token,
    );
    if (_subs.length == 1) {
      _firstSub.complete();
    }
    return token;
  }

  void _unsubscribe(final Map msg) {
    _subs.remove(msg['token'])?.exitListener.close();
  }

  void _registrantListener(dynamic raw) async {
    if (raw is! Map) return;
    final Map? msg = raw['msg'] is Map ? raw['msg'] : null;
    final SendPort? port = raw['port'] is SendPort ? raw['port'] : null;
    if (msg == null) return;

    switch (msg['type']) {
      // Unmap this worker
      case 'unmap':
        // TODO: error handling
        try {
          await _dispose();
        } catch (_) {
          port?.send(false);
          break;
        }
        port?.send(true);
      case 'subscribe':
        final token = _subscribe(msg);
        final exitPort = _subs[token]!.exitListener.sendPort;
        port?.send({
          "token": token,
          "exit_listener_port": exitPort,
        });
      case 'unsubscribe':
        _unsubscribe(msg);
        port?.send(true);
      case 'ping':
        port?.send(true);
    }
  }

  Future<void> _tdListenerStart() async {
    await TdPlugin.initialize();
    while (true) {
      if (_closing) return;
      if (!_firstSub.isCompleted) await _firstSub.future;

      final raw = TdPlugin.instance.tdReceive(0.2);
      // Repeated check for faster closing
      if (_closing) return;
      if (raw == null) continue;

      late final Map json;
      try {
        json = jsonDecode(raw);
      } catch (e, st) {
        _l("Failed to parse TD object: $e\n$st");
      }

      for (final sub in _subs.values) {
        await sendMessage(
          sub.targetPort,
          "td",
          data: {"obj": json},
          oneWay: true,
        );
      }
    }
  }

  Future<void> _dispose() async {
    _closing = true;
    IsolateNameServer.removePortNameMapping(registrantId);
    _rx.close();
    await _tdListenerExit.future;
  }

  Future<void> work(SendPort response) async {
    final previous = IsolateNameServer.lookupPortByName(registrantId);
    if (previous != null) {
      final result = await sendMessage(
        previous,
        "unmap",
        // 200ms for TDLib + 100ms for other stuff
        timeout: const Duration(milliseconds: 300),
      );
      if (result != true) {
        _l("WARNING: Failed to unmap previous registrant port.");
        IsolateNameServer.removePortNameMapping(registrantId);
      }
    }

    final result =
        IsolateNameServer.registerPortWithName(_rx.sendPort, registrantId);
    if (!result) {
      _l("WARNING: Failed to remap registrant port.");
      response.send(false);
      return;
    }

    _rx.listen(_registrantListener);
    response.send(true);

    _l("Running");
    _tdListenerStart();
  }
}

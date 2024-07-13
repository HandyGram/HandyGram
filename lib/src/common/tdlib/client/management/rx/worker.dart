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

class _TdlibRxWorkerReceiver {
  static void main(SendPort tx) async {
    await TdPlugin.initialize();
    while (true) {
      final raw = TdPlugin.instance.tdReceive(0.1);
      if (raw == null) continue;

      late final Map json;
      try {
        json = jsonDecode(raw);
      } catch (e, st) {
        TdlibReceiveManagerWorker._l("Failed to parse TD object: $e\n$st");
        continue;
      }

      tx.send(json);
    }
  }
}

class TdlibReceiveManagerWorker {
  /// Registrant SendPort ID
  static String registrantId = "TdlibListenersRegistrantPort";

  final ReceivePort _rx = ReceivePort(), _tdRx = ReceivePort();
  final Completer _firstSub = Completer();
  Isolate? _receiver;

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

  Future<void> _unsubscribe(final Map msg) async {
    _subs.remove(msg['token'])?.exitListener.close();
    if (_subs.isEmpty) {
      await _dispose();
    }
  }

  void _registrantListener(dynamic raw) async {
    if (raw is! Map) return;
    final Map? msg = raw['msg'] is Map ? raw['msg'] : null;
    final SendPort? port = raw['port'] is SendPort ? raw['port'] : null;
    if (msg == null) return;

    switch (msg['type']) {
      // Unmap this worker
      case 'unmap':
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
        await _unsubscribe(msg);
        port?.send(true);
      case 'ping':
        port?.send(true);
    }
  }

  Future<void> _tdListener(dynamic val) async {
    if (val is! Map) return;
    if (!_firstSub.isCompleted) await _firstSub.future;
    for (final sub in _subs.values) {
      await sendMessage(
        sub.targetPort,
        "td",
        data: {"obj": val},
        oneWay: true,
      );
    }
  }

  Future<void> _dispose() async {
    IsolateNameServer.removePortNameMapping(registrantId);
    _receiver?.kill(priority: Isolate.immediate);
    _rx.close();
    _l("Disposed");
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

    _receiver = await Isolate.spawn(
      _TdlibRxWorkerReceiver.main,
      _tdRx.sendPort,
      debugName: "TdlibRxWorkerReceiver",
    );

    _rx.listen(_registrantListener);
    _tdRx.listen(_tdListener);
    response.send(true);
    _l("Running");
  }
}

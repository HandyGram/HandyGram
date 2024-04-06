import 'dart:async';
import 'dart:isolate';
import 'dart:math';
import 'dart:ui';

import 'package:handy_tdlib/api.dart' as td;
import 'package:handy_tdlib/client.dart';
import 'package:handygram/src/common/exceptions/tdlib_core_exception.dart';
import 'package:handygram/src/common/log/log.dart';

class _TdlibReceiveManagerWorker {
  static const String tag = "TdlibReceiveManagerWorker";
  static const String portName = "${tag}Port";
  static const double pollingRate = 0.25;
  static const int restTimingMs = 1000;

  final _rng = Random();
  final ReceivePort _globalRx = ReceivePort();
  final Map<int, SendPort> _subscribers = {};

  Completer? _exitCompleter;
  final Completer _firstSubscriberCompleter = Completer();

  void _subscribe(Map data) {
    final token = _rng.nextInt(1 << 32);
    _subscribers[token] = data['port'];
    l.d(tag, "New subscriber with token $token");
    _subscribers[token]!.send({
      'type': 'subscription',
      'token': token,
    });
    _subscribers[token]!.send({
      'type': 'exit_subscribe',
      'port': _globalRx.sendPort,
      'message': {
        'type': 'unsubscribe',
        'token': token,
      },
    });
    if (!_firstSubscriberCompleter.isCompleted) {
      _firstSubscriberCompleter.complete();
    }
  }

  void _unsubscribe(Map data) {
    _subscribers.remove(data['token']);
    l.i(tag, "${data['token']} had unsubscribed");
    if (_subscribers.isEmpty) {
      l.i(tag, "Worker isn't needed anymore, exiting.");
      _exit();
    }
  }

  void _listener(dynamic message) async {
    switch (message) {
      case Map():
        switch (message['type']) {
          case 'subscribe':
            _subscribe(message);
          case 'unsubscribe':
            _unsubscribe(message);
        }
      default:
        l.e(tag, "Unhandled message: $message");
    }
  }

  Future<void> _exit() async {
    l.i(tag, "Exiting...");
    IsolateNameServer.removePortNameMapping(portName);
    _exitCompleter = Completer();
    await _exitCompleter?.future;
    _globalRx.close();
  }

  td.TdObject? _receiveObject() {
    final query = TdPlugin.instance.tdReceive(pollingRate);
    if (query == null) return null;
    return td.convertJsonToObject(query);
  }

  Future<void> _notifyListeners(td.TdObject object) async {
    // Wait for any subscriber to notify about an update.
    if (!_firstSubscriberCompleter.isCompleted) {
      await _firstSubscriberCompleter.future;
    }

    for (final subscriber in _subscribers.values) {
      subscriber.send(object);
    }
  }

  Future<void> _tdlibListener() async {
    await TdPlugin.initialize();

    while (true) {
      try {
        if (_exitCompleter != null) {
          _exitCompleter?.complete();
          return;
        }

        final object = _receiveObject();
        if (object == null) continue;
        await _notifyListeners(object);

        await Future.delayed(
          const Duration(milliseconds: restTimingMs),
        );
      } catch (e, st) {
        l.e(tag, "Failed to process object: $e\n$st");
      }
    }
  }

  bool _setupPort(SendPort initial) {
    _globalRx.listen(_listener);
    final result =
        IsolateNameServer.registerPortWithName(_globalRx.sendPort, portName);
    // Answer that we're ready (or not) to handle subscribers.
    initial.send(result);
    l.i(tag, "${result ? "Set up" : "Failed to set up"} background thread");
    return result;
  }

  Future<void> start(SendPort initial) async {
    if (!_setupPort(initial)) return;
    try {
      await _tdlibListener();
    } catch (e, st) {
      l.e(tag, "Exception in TDLib listener: $e\n$st");
      _exit();
    }
  }

  static _TdlibReceiveManagerWorker? _instance;

  static Future<void> run(SendPort initial) async {
    _instance ??= _TdlibReceiveManagerWorker();
    await _instance!.start(initial);
  }
}

class TdlibReceiveManager {
  static const String tag = "TdlibReceiveManager";

  // Top-level TDLib stream data
  static final Stream<td.TdObject> stream = _streamController.stream;
  static final StreamController<td.TdObject> _streamController =
      StreamController.broadcast();

  // Low-level TDLib stream data
  static ReceivePort? _rx;
  static int? _token;
  static Completer? _connectionCompleter;

  // Is this instance ready?
  static bool _running = false;

  static bool get running => _running;

  static void _listener(dynamic message) {
    switch (message) {
      case td.TdObject():
        _streamController.add(message);
      case Map():
        switch (message['type']) {
          case 'subscription':
            _token = message['token'];
            _connectionCompleter?.complete();
          case 'exit_subscribe':
            final exitMsg = message['message'] as Map;
            final targetPort = message['port'] as SendPort;
            Isolate.current.addOnExitListener(targetPort, response: exitMsg);
          case null:
            break;
        }
    }
  }

  static Future<void> _connectToRunningWorker(SendPort tx) async {
    _connectionCompleter = Completer();
    _rx = ReceivePort('$tag-Foreground-RX')..listen(_listener);
    tx.send({
      "type": "subscribe",
      "port": _rx!.sendPort,
    });
    await _connectionCompleter?.future.timeout(const Duration(seconds: 5));
    _connectionCompleter = null;
    l.d(tag, "Attached to already running worker");
  }

  static Future<SendPort> _runNewWorker() async {
    final completer = Completer<bool>();
    final rawRx = RawReceivePort((message) {
      completer.complete(message);
    });
    await Isolate.spawn(
      _TdlibReceiveManagerWorker.run,
      rawRx.sendPort,
    );
    l.d(tag, "Started new worker");
    final successful = await completer.future.timeout(
      const Duration(seconds: 5),
      onTimeout: () => false,
    );
    if (!successful) {
      l.e(tag, "WTF, cannot run fresh RX manager without old port");
      throw const TdlibCoreException(tag, "Unexpected critical error");
    }
    _rx = ReceivePort.fromRawReceivePort(rawRx);
    return IsolateNameServer.lookupPortByName(
      _TdlibReceiveManagerWorker.portName,
    )!;
  }

  static Future<void> startToReceiveUpdates() async {
    l.d(tag, "Starting...");
    final port = IsolateNameServer.lookupPortByName(
          _TdlibReceiveManagerWorker.portName,
        ) ??
        await _runNewWorker();
    await _connectToRunningWorker(port);
    _running = true;
  }

  static Future<void> dispose() async {
    final port = IsolateNameServer.lookupPortByName(
      _TdlibReceiveManagerWorker.portName,
    );
    port?.send(_token);
    _streamController.close();
  }

  static Stream<td.TdObject> filter(int clientId) {
    if (!_running) {
      throw const TdlibCoreException(
        tag,
        "You must run startToReceiveUpdates() before using filter()",
      );
    }
    return stream.where((obj) => obj.clientId == clientId);
  }
}

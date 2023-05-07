import 'dart:async' show StreamController, Completer, Timer;
import 'dart:convert';
import 'dart:isolate' show Isolate, ReceivePort, SendPort;
import 'dart:math';
import 'package:handygram/src/misc/log.dart';
import 'package:handygram/src/tdlib/tdapi/tdapi.dart'
    show TdObject, convertToObject, TdFunction;
import 'package:handygram/src/tdlib/tdclient/platform_interfaces/td_olugin.dart';

class EventSubject {
  final ReceivePort _receivePort, _invokeReceivePort;
  final Isolate _receiveIsolate, _invokeIsolate;
  late final SendPort _invokeSendPort;
  late final StreamController<TdObject> _eventController =
      StreamController.broadcast();
  final Random _rng = Random();
  final Map<int, Completer<TdObject?>> _pendingRequests = {};
  final Map<int, Timer> _pendingTimeouts = {};
  final int clientId;

  EventSubject._(
    this._receivePort,
    this._receiveIsolate,
    this._invokeReceivePort,
    this._invokeIsolate,
    this.clientId,
  ) {
    _receivePort.listen(_onIsolateReceive);
    _invokeReceivePort.listen(_onInvokeReceive);
  }

  static Future<EventSubject> initialize() async {
    await TdPlugin.initialize();
    final clientId = TdPlugin.instance!.tdJsonClientCreate();
    TdPlugin.instance!.tdJsonClientExecute(jsonEncode({
      "@type": "setLogVerbosityLevel",
      "clientId": clientId,
      "new_verbosity_level": 0,
    }));
    final receivePort = ReceivePort("TDLib Receive Port");
    final invokeReceivePort = ReceivePort("TDLib Invoke Receive Port");
    final receiveIsolate = await Isolate.spawn(
      _receive,
      [
        receivePort.sendPort,
        clientId,
      ],
      debugName: "TDLib Isolated Receive",
    );
    final invokeIsolate = await Isolate.spawn(
      _invokeReceive,
      [
        invokeReceivePort.sendPort,
        clientId,
      ],
      debugName: "TDLib Isolated Invokes",
    );
    return EventSubject._(
      receivePort,
      receiveIsolate,
      invokeReceivePort,
      invokeIsolate,
      clientId,
    );
  }

  Stream<TdObject> listen() {
    return _eventController.stream;
  }

  Future<TdObject?> invoke(TdFunction func, [int timeout = 5]) {
    int extra = _rng.nextInt(4294967296);
    _invokeSendPort.send(
      jsonEncode(func.toJson(extra)),
    );
    _pendingRequests[extra] = Completer<TdObject?>();
    _pendingTimeouts[extra] = Timer(Duration(seconds: timeout), () {
      _pendingRequests[extra]?.complete(null);
      _pendingRequests.remove(extra);
      _pendingTimeouts.remove(extra);
    });
    return _pendingRequests[extra]!.future;
  }

  static void _receive(args) async {
    final SendPort sendPortToMain = args[0];
    final int clientId = args[1];
    await TdPlugin.initialize();
    TdPlugin.instance!.tdJsonClientExecute(jsonEncode({
      "@type": "setLogVerbosityLevel",
      "clientId": clientId,
      "new_verbosity_level": 0,
    }));
    while (true) {
      final s = TdPlugin.instance!.tdJsonClientReceive(clientId, 5);
      if (s == null) continue;
      sendPortToMain.send(s);
    }
  }

  static void _invokeReceive(args) async {
    final SendPort sendPortToMain = args[0];
    final int clientId = args[1];
    final ReceivePort receivePortFromMain = ReceivePort();
    sendPortToMain.send(receivePortFromMain.sendPort);
    await TdPlugin.initialize();
    TdPlugin.instance!.tdJsonClientExecute(jsonEncode({
      "@type": "setLogVerbosityLevel",
      "clientId": clientId,
      "new_verbosity_level": 0,
    }));
    receivePortFromMain.listen((message) {
      l.i("TDLib", "<- [INVOKE] $message");
      TdPlugin.instance!.tdJsonClientSend(clientId, message);
    });
  }

  void _onIsolateReceive(dynamic event) {
    final obj = convertToObject(event);
    if (obj == null) return;
    if (obj.extra == null) {
      l.i("TDLib", "-> [UPDATE] $event");
      _eventController.add(obj);
    } else if (_pendingRequests.containsKey(obj.extra)) {
      _pendingTimeouts[obj.extra]?.cancel();
      _pendingTimeouts.remove(obj.extra);
      _pendingRequests[obj.extra]?.complete(obj);
      _pendingRequests.remove(obj.extra);
    }
  }

  void _onInvokeReceive(dynamic event) {
    _invokeSendPort = event;
  }

  void close() {
    _eventController.close();
    _receiveIsolate.kill(priority: Isolate.immediate);
    _invokeIsolate.kill(priority: Isolate.immediate);
    _receivePort.close();
    _invokeReceivePort.close();
    TdPlugin.instance?.tdJsonClientDestroy(clientId);
  }
}

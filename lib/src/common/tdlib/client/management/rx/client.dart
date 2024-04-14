import 'dart:async';
import 'dart:isolate';
import 'dart:ui';

import 'package:handy_tdlib/api.dart' as td;
import 'package:handygram/src/common/exceptions/tdlib_core_exception.dart';
import 'package:handygram/src/common/log/log.dart';
import 'package:handygram/src/common/tdlib/client/management/rx/worker.dart';

class TdlibReceiveManager {
  static const String tag = "TdlibReceiveManager";

  final StreamController<td.TdObject> _rawController =
      StreamController.broadcast();
  late final Stream<td.TdObject> _raw = _rawController.stream;

  final Completer<bool> _initCompleter = Completer();
  bool _initResult = false;

  late final RawReceivePort _rrx = RawReceivePort(_listener);
  int? _token;

  void _listener(dynamic raw) async {
    if (raw is! Map) return;
    final Map? msg = raw['msg'] is Map ? raw['msg'] : null;
    if (msg == null) return;

    switch (msg['type']) {
      case 'td':
        final obj = msg['obj'];
        final tdObj = td.convertMapToObject(obj);
        if (tdObj == null) break;
        _rawController.add(tdObj);
    }
  }

  Future<void> _subscribe([bool spawned = false]) async {
    final port = IsolateNameServer.lookupPortByName(
        TdlibReceiveManagerWorker.registrantId);
    if (port == null) {
      l.e(tag, "Worker is offline");
      return;
    }
    final Map? data = await TdlibReceiveManagerWorker.sendMessage(
      port,
      "subscribe",
      data: {'port': _rrx.sendPort},
    );
    if (data == null) {
      if (spawned) {
        throw const TdlibCoreException(tag, "Failed to start worker");
      }
      return _spawn();
    }
    _token = data['token'];
    Isolate.current.addOnExitListener(data['exit_listener_port']);

    _initResult = true;
    _initCompleter.complete(true);
  }

  Future<void> _spawn() async {
    final tmp = RawReceivePort((result) async {
      if (result) await _subscribe(true);
    });

    await Isolate.spawn(
      tdlibRxMain,
      tmp.sendPort,
      debugName: "TdlibRxWorker",
    );
  }

  void _init() async {
    final port = IsolateNameServer.lookupPortByName(
      TdlibReceiveManagerWorker.registrantId,
    );
    if (port != null) {
      final response = await TdlibReceiveManagerWorker.sendMessage(
        port,
        "ping",
        // 100ms for tdReceive to complete, 100ms for other stuff
        timeout: const Duration(milliseconds: 200),
      );
      if (response == true) {
        return await _subscribe();
      } else {
        l.i(tag, "Restarting worker...");

        IsolateNameServer.removePortNameMapping(
          TdlibReceiveManagerWorker.registrantId,
        );
      }
    }

    await _spawn();
  }

  TdlibReceiveManager._() {
    // Start _init ASAP to speed up TDLib loading
    _init();
  }

  //
  // Public methods and fields
  //

  /// Is receive manager running?
  bool get active => _initResult;

  /// All TDLib objects, unfiltered.
  Stream<td.TdObject> get objects => _raw;

  /// Subscribe on TDLib updates. Returns true if succeed.
  Future<bool> subscribe() {
    if (_initCompleter.isCompleted) {
      return Future.value(_initResult);
    } else {
      return _initCompleter.future;
    }
  }

  /// Filter TDLib objects by client ID.
  Stream<td.TdObject> filter(int clientId) =>
      _raw.where((obj) => obj.clientId == clientId);

  /// Close receive manager.
  Future<void> dispose() async {
    final port = IsolateNameServer.lookupPortByName(
        TdlibReceiveManagerWorker.registrantId);
    if (port == null) {
      l.e(tag, "Worker is offline");
      return;
    }
    await TdlibReceiveManagerWorker.sendMessage(
      port,
      "unsubscribe",
      data: {"token": _token},
    );
  }

  static TdlibReceiveManager instance = TdlibReceiveManager._();
  factory TdlibReceiveManager() => instance;
}

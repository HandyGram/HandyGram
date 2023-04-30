import 'dart:ffi' as ffi;
import 'package:ffi/ffi.dart';

/// TD Native Library Instance.
class TdPlugin {
  static TdPlugin? instance;

  /// This class is set to be the default [TdPlugin].instance.
  static Future initialize([String? libPath]) async {
    TdPlugin.instance ??=
        TdPlugin(ffi.DynamicLibrary.open(libPath ?? 'libtdjson.so'));
  }

  final ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
      _lookup;

  /// TDLib methods are looked up in [dynamicLibrary].
  TdPlugin(ffi.DynamicLibrary dynamicLibrary) : _lookup = dynamicLibrary.lookup;

  /// TDLib methods are looked up with [lookup].
  TdPlugin.fromLookup(
    ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName) lookup,
  ) : _lookup = lookup;

  /// Creates a new instance of TDLib.
  /// return Pointer to the created instance of TDLib.
  late final _TdJsonClientCreate _tdJsonClientCreate =
      _lookup<ffi.NativeFunction<_TdJsonClientCreatePtr>>(
              '_td_json_client_create')
          .asFunction();

  int tdJsonClientCreate() => _tdJsonClientCreate().address;

  /// Sends request to the TDLib client. May be called from any thread.
  /// [client] The client.
  /// [request] JSON-serialized null-terminated request to TDLib.
  late final _TdJsonClientSend _tdJsonClientSend =
      _lookup<ffi.NativeFunction<_TdJsonClientSendPtr>>('_td_json_client_send')
          .asFunction();

  void tdJsonClientSend(int clientId, String event) {
    final req = event.toNativeUtf8();
    _tdJsonClientSend(
      ffi.Pointer.fromAddress(clientId),
      req,
    );
    malloc.free(req);
  }

  /// Receives incoming updates and request responses from the TDLib client. May be called from any thread, but
  /// must not be called simultaneously from two different threads.
  ///
  /// Returned pointer will be deallocated by TDLib during next call to [tdJsonClientReceive] or [tdJsonClientExecute]
  /// the same thread, so it can't be used after that.
  ///
  /// [client] The client.
  /// [timeout] The maximum number of seconds allowed for this function to wait for new data.
  ///
  /// return JSON-serialized null-terminated incoming update or request response. May be *null* if the timeout expires.
  late final _TdJsonClientReceive _tdJsonClientReceive =
      _lookup<ffi.NativeFunction<_TdJsonClientReceivePtr>>(
              '_td_json_client_receive')
          .asFunction();

  String? tdJsonClientReceive(int clientId, [double timeout = 8]) {
    final res =
        _tdJsonClientReceive(ffi.Pointer.fromAddress(clientId), timeout);
    if (res.address == ffi.nullptr.address) {
      return null;
    }
    return res.toDartString();
  }

  /// Synchronously executes TDLib request. May be called from any thread.
  /// Only a few requests can be executed synchronously.
  ///
  /// Returned pointer will be deallocated by TDLib during next call to [tdJsonClientReceive] or [tdJsonClientExecute]
  /// in the same thread, so it can't be used after that.
  ///
  /// [client] The client. Currently ignored for all requests, so NULL can be passed.
  ///
  /// [request] JSON-serialized null-terminated request to TDLib.
  ///
  /// return JSON-serialized null-terminated request response.
  late final _TdJsonClientExecute _tdJsonClientExecute =
      _lookup<ffi.NativeFunction<_TdJsonClientExecutePtr>>(
              '_td_json_client_execute')
          .asFunction();

  String? tdJsonClientExecute(String event) {
    final req = event.toNativeUtf8();
    final res = _tdJsonClientExecute(ffi.nullptr, req);
    malloc.free(req);
    if (res.address == ffi.nullptr.address) {
      return null;
    }
    return res.toDartString();
  }

  /// Destroys the TDLib client instance. After this is called the client instance must not be used anymore.
  ///
  /// [client] The client.
  late final _TdJsonClientDestroy _tdJsonClientDestroy =
      _lookup<ffi.NativeFunction<_TdJsonClientDestroyPtr>>(
              '_td_json_client_destroy')
          .asFunction();

  void tdJsonClientDestroy(int clientId) =>
      _tdJsonClientDestroy(ffi.Pointer.fromAddress(clientId));
}

/// A type of callback function that will be called when a message is added to the internal TDLib log.
///
///  [verbosityLevel] Log verbosity level with which the message was added (-1 - 1024).
/// If 0, then TDLib will crash as soon as the callback returns.
/// None of the TDLib methods can be called from the callback.
/// [message] Null-terminated string with the logged message.
typedef TdLogMessageCallbackPtr = ffi.Void Function(
    ffi.Int32 verbosityLevel, ffi.Pointer<Utf8> message);

typedef _TdJsonClientCreatePtr = ffi.Pointer<ffi.Void> Function();
typedef _TdJsonClientSendPtr = ffi.Void Function(
    ffi.Pointer client, ffi.Pointer<Utf8> request);
typedef _TdJsonClientReceivePtr = ffi.Pointer<Utf8> Function(
    ffi.Pointer client, ffi.Double timeout);
typedef _TdJsonClientExecutePtr = ffi.Pointer<Utf8> Function(
    ffi.Pointer client, ffi.Pointer<Utf8> request);
typedef _TdJsonClientDestroyPtr = ffi.Void Function(ffi.Pointer client);

typedef _TdJsonClientCreate = ffi.Pointer Function();
typedef _TdJsonClientSend = void Function(
    ffi.Pointer client, ffi.Pointer<Utf8> request);
typedef _TdJsonClientReceive = ffi.Pointer<Utf8> Function(
    ffi.Pointer client, double timeout);
typedef _TdJsonClientExecute = ffi.Pointer<Utf8> Function(
    ffi.Pointer client, ffi.Pointer<Utf8> request);
typedef _TdJsonClientDestroy = void Function(ffi.Pointer client);

/*
 * Copyright (C) Roman Rikhter <teledurak@gmail.com>, 2024
 * This program comes with ABSOLUTELY NO WARRANTY;
 * This is free software, and you are welcome to redistribute it under certain conditions;
 *
 * See /LICENSE for more details.
 */

import 'dart:async';

import 'package:handy_tdlib/api.dart' as td;
import 'package:handygram/src/common/exceptions/tdlib_core_exception.dart';
import 'package:handygram/src/common/log/log.dart';
import 'package:handygram/src/common/tdlib/providers/templates/events_provider.dart';

class ProxyProvider extends TdlibDataEventsProvider {
  static const String tag = "ProxyProvider";

  final List<td.Proxy> _proxies = [];
  List<td.Proxy> get proxies => _proxies;

  @override
  void updatesListener(td.TdObject update) {}

  @override
  Future<void> onTdlibReady() async {
    try {
      await getProxies();
    } catch (e, st) {
      l.e(tag, "Failed to get proxies on start: $e\n$st");
    }
  }

  Future<void> getProxies() async {
    final r = await box.invoke(const td.GetProxies());
    if (r is! td.Proxies) _throwError(r);
    _proxies.clear();
    _proxies.addAll(r.proxies);
    notifyListeners();
  }

  Future<void> enableProxy(int id) async {
    final r = await box.invoke(td.EnableProxy(proxyId: id));
    if (r is! td.Ok) _throwError(r);
    return getProxies();
  }

  Future<void> disableProxy() async {
    final r = await box.invoke(const td.DisableProxy());
    if (r is! td.Ok) _throwError(r);
    return getProxies();
  }

  Future<void> editProxy(
    int id, {
    String? server,
    int? port,
    bool? enable,
    td.ProxyType? type,
  }) async {
    final proxy = _proxies.firstWhere((e) => e.id == id);
    final r = await box.invoke(td.EditProxy(
      proxyId: id,
      server: server ?? proxy.server,
      port: port ?? proxy.port,
      enable: enable ?? proxy.isEnabled,
      type: type ?? proxy.type,
    ));
    if (r is! td.Proxy) return;
    return getProxies();
  }

  Future<void> addProxy(
    String server,
    int port,
    bool enable,
    td.ProxyType type,
  ) async {
    final r = await box.invoke(td.AddProxy(
      server: server,
      port: port,
      enable: enable,
      type: type,
    ));
    if (r is! td.Proxy) _throwError(r);
    return getProxies();
  }

  Future<void> removeProxy(int id) async {
    final r = await box.invoke(td.RemoveProxy(
      proxyId: id,
    ));
    if (r is! td.Ok) _throwError(r);
    return getProxies();
  }

  Future<Duration?> pingProxy(int id) async {
    final r = await box.invoke(td.PingProxy(
      proxyId: id,
    ));
    if (r is! td.Seconds) _throwError(r);
    return Duration(seconds: r.seconds.toInt());
  }

  Never _throwError(td.TdObject? obj) {
    if (obj is td.TdError) {
      throw TdlibCoreException(tag, "Got an error: ${obj.message}");
    } else {
      throw TdlibCoreException(
        tag,
        "Got an unexpected object type ${obj.runtimeType}\nObject: ${obj?.toJson()}",
      );
    }
  }
}

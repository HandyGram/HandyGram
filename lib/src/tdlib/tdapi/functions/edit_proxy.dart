part of '../tdapi.dart';

/// **EditProxy** *(editProxy)* - TDLib function
///
/// Edits an existing proxy server for network requests. Can be called before authorization.
///
/// * [proxyId]: Proxy identifier.
/// * [server]: Proxy server IP address.
/// * [port]: Proxy server port.
/// * [enable]: Pass true to immediately enable the proxy.
/// * [type]: Proxy type.
///
/// [Proxy] is returned on completion.
final class EditProxy extends TdFunction {
  
  /// **EditProxy** *(editProxy)* - TDLib function
  ///
  /// Edits an existing proxy server for network requests. Can be called before authorization.
  ///
  /// * [proxyId]: Proxy identifier.
  /// * [server]: Proxy server IP address.
  /// * [port]: Proxy server port.
  /// * [enable]: Pass true to immediately enable the proxy.
  /// * [type]: Proxy type.
  ///
  /// [Proxy] is returned on completion.
  const EditProxy({
    required this.proxyId,
    required this.server,
    required this.port,
    required this.enable,
    required this.type,
  });
  
  /// Proxy identifier
  final int proxyId;

  /// Proxy server IP address
  final String server;

  /// Proxy server port
  final int port;

  /// Pass true to immediately enable the proxy
  final bool enable;

  /// Proxy type
  final ProxyType type;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "proxy_id": proxyId,
      "server": server,
      "port": port,
      "enable": enable,
      "type": type.toJson(),
      "@extra": extra,
		};
	}

  
  EditProxy copyWith({
    int? proxyId,
    String? server,
    int? port,
    bool? enable,
    ProxyType? type,
  }) => EditProxy(
    proxyId: proxyId ?? this.proxyId,
    server: server ?? this.server,
    port: port ?? this.port,
    enable: enable ?? this.enable,
    type: type ?? this.type,
  );

  static const String objectType = 'editProxy';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

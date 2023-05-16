part of '../tdapi.dart';

/// **AddProxy** *(addProxy)* - TDLib function
///
/// Adds a proxy server for network requests. Can be called before authorization.
///
/// * [server]: Proxy server IP address.
/// * [port]: Proxy server port.
/// * [enable]: Pass true to immediately enable the proxy.
/// * [type]: Proxy type.
///
/// [Proxy] is returned on completion.
final class AddProxy extends TdFunction {
  
  /// **AddProxy** *(addProxy)* - TDLib function
  ///
  /// Adds a proxy server for network requests. Can be called before authorization.
  ///
  /// * [server]: Proxy server IP address.
  /// * [port]: Proxy server port.
  /// * [enable]: Pass true to immediately enable the proxy.
  /// * [type]: Proxy type.
  ///
  /// [Proxy] is returned on completion.
  const AddProxy({
    required this.server,
    required this.port,
    required this.enable,
    required this.type,
  });
  
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
      "server": server,
      "port": port,
      "enable": enable,
      "type": type.toJson(),
      "@extra": extra,
		};
	}

  
  AddProxy copyWith({
    String? server,
    int? port,
    bool? enable,
    ProxyType? type,
  }) => AddProxy(
    server: server ?? this.server,
    port: port ?? this.port,
    enable: enable ?? this.enable,
    type: type ?? this.type,
  );

  static const String objectType = 'addProxy';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

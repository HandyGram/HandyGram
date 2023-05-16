part of '../tdapi.dart';

/// **TestProxy** *(testProxy)* - TDLib function
///
/// Sends a simple network request to the Telegram servers via proxy; for testing only. Can be called before authorization.
///
/// * [server]: Proxy server IP address.
/// * [port]: Proxy server port.
/// * [type]: Proxy type.
/// * [dcId]: Identifier of a datacenter with which to test connection.
/// * [timeout]: The maximum overall timeout for the request.
///
/// [Ok] is returned on completion.
final class TestProxy extends TdFunction {
  
  /// **TestProxy** *(testProxy)* - TDLib function
  ///
  /// Sends a simple network request to the Telegram servers via proxy; for testing only. Can be called before authorization.
  ///
  /// * [server]: Proxy server IP address.
  /// * [port]: Proxy server port.
  /// * [type]: Proxy type.
  /// * [dcId]: Identifier of a datacenter with which to test connection.
  /// * [timeout]: The maximum overall timeout for the request.
  ///
  /// [Ok] is returned on completion.
  const TestProxy({
    required this.server,
    required this.port,
    required this.type,
    required this.dcId,
    required this.timeout,
  });
  
  /// Proxy server IP address
  final String server;

  /// Proxy server port
  final int port;

  /// Proxy type
  final ProxyType type;

  /// Identifier of a datacenter with which to test connection
  final int dcId;

  /// The maximum overall timeout for the request
  final double timeout;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "server": server,
      "port": port,
      "type": type.toJson(),
      "dc_id": dcId,
      "timeout": timeout,
      "@extra": extra,
		};
	}

  
  TestProxy copyWith({
    String? server,
    int? port,
    ProxyType? type,
    int? dcId,
    double? timeout,
  }) => TestProxy(
    server: server ?? this.server,
    port: port ?? this.port,
    type: type ?? this.type,
    dcId: dcId ?? this.dcId,
    timeout: timeout ?? this.timeout,
  );

  static const String objectType = 'testProxy';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

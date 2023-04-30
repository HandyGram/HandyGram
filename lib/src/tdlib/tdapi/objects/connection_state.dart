part of '../tdapi.dart';

/// **ConnectionState** *(connectionState)* - parent
  ///
  /// Describes the current state of the connection to Telegram servers.
class ConnectionState extends TdObject {
  
  /// **ConnectionState** *(connectionState)* - parent
  ///
  /// Describes the current state of the connection to Telegram servers.
  const ConnectionState();
  
  /// a ConnectionState return type can be :
  /// * [ConnectionStateWaitingForNetwork]
  /// * [ConnectionStateConnectingToProxy]
  /// * [ConnectionStateConnecting]
  /// * [ConnectionStateUpdating]
  /// * [ConnectionStateReady]
  factory ConnectionState.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case ConnectionStateWaitingForNetwork.constructor:
        return ConnectionStateWaitingForNetwork.fromJson(json);
      case ConnectionStateConnectingToProxy.constructor:
        return ConnectionStateConnectingToProxy.fromJson(json);
      case ConnectionStateConnecting.constructor:
        return ConnectionStateConnecting.fromJson(json);
      case ConnectionStateUpdating.constructor:
        return ConnectionStateUpdating.fromJson(json);
      case ConnectionStateReady.constructor:
        return ConnectionStateReady.fromJson(json);
      default:
        return const ConnectionState();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  ConnectionState copyWith() => const ConnectionState();

  static const String constructor = 'connectionState';
  
  @override
  String getConstructor() => constructor;
}


/// **ConnectionStateWaitingForNetwork** *(connectionStateWaitingForNetwork)* - child of ConnectionState
  ///
  /// Currently waiting for the network to become available. Use setNetworkType to change the available network type.
class ConnectionStateWaitingForNetwork extends ConnectionState {
  
  /// **ConnectionStateWaitingForNetwork** *(connectionStateWaitingForNetwork)* - child of ConnectionState
  ///
  /// Currently waiting for the network to become available. Use setNetworkType to change the available network type.
  const ConnectionStateWaitingForNetwork();
  
  /// Parse from a json
  factory ConnectionStateWaitingForNetwork.fromJson(Map<String, dynamic> json) => const ConnectionStateWaitingForNetwork();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  ConnectionStateWaitingForNetwork copyWith() => const ConnectionStateWaitingForNetwork();

  static const String constructor = 'connectionStateWaitingForNetwork';
  
  @override
  String getConstructor() => constructor;
}


/// **ConnectionStateConnectingToProxy** *(connectionStateConnectingToProxy)* - child of ConnectionState
  ///
  /// Currently establishing a connection with a proxy server.
class ConnectionStateConnectingToProxy extends ConnectionState {
  
  /// **ConnectionStateConnectingToProxy** *(connectionStateConnectingToProxy)* - child of ConnectionState
  ///
  /// Currently establishing a connection with a proxy server.
  const ConnectionStateConnectingToProxy();
  
  /// Parse from a json
  factory ConnectionStateConnectingToProxy.fromJson(Map<String, dynamic> json) => const ConnectionStateConnectingToProxy();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  ConnectionStateConnectingToProxy copyWith() => const ConnectionStateConnectingToProxy();

  static const String constructor = 'connectionStateConnectingToProxy';
  
  @override
  String getConstructor() => constructor;
}


/// **ConnectionStateConnecting** *(connectionStateConnecting)* - child of ConnectionState
  ///
  /// Currently establishing a connection to the Telegram servers.
class ConnectionStateConnecting extends ConnectionState {
  
  /// **ConnectionStateConnecting** *(connectionStateConnecting)* - child of ConnectionState
  ///
  /// Currently establishing a connection to the Telegram servers.
  const ConnectionStateConnecting();
  
  /// Parse from a json
  factory ConnectionStateConnecting.fromJson(Map<String, dynamic> json) => const ConnectionStateConnecting();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  ConnectionStateConnecting copyWith() => const ConnectionStateConnecting();

  static const String constructor = 'connectionStateConnecting';
  
  @override
  String getConstructor() => constructor;
}


/// **ConnectionStateUpdating** *(connectionStateUpdating)* - child of ConnectionState
  ///
  /// Downloading data received while the application was offline.
class ConnectionStateUpdating extends ConnectionState {
  
  /// **ConnectionStateUpdating** *(connectionStateUpdating)* - child of ConnectionState
  ///
  /// Downloading data received while the application was offline.
  const ConnectionStateUpdating();
  
  /// Parse from a json
  factory ConnectionStateUpdating.fromJson(Map<String, dynamic> json) => const ConnectionStateUpdating();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  ConnectionStateUpdating copyWith() => const ConnectionStateUpdating();

  static const String constructor = 'connectionStateUpdating';
  
  @override
  String getConstructor() => constructor;
}


/// **ConnectionStateReady** *(connectionStateReady)* - child of ConnectionState
  ///
  /// There is a working connection to the Telegram servers.
class ConnectionStateReady extends ConnectionState {
  
  /// **ConnectionStateReady** *(connectionStateReady)* - child of ConnectionState
  ///
  /// There is a working connection to the Telegram servers.
  const ConnectionStateReady();
  
  /// Parse from a json
  factory ConnectionStateReady.fromJson(Map<String, dynamic> json) => const ConnectionStateReady();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  ConnectionStateReady copyWith() => const ConnectionStateReady();

  static const String constructor = 'connectionStateReady';
  
  @override
  String getConstructor() => constructor;
}

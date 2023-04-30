part of '../tdapi.dart';

/// **NetworkType** *(networkType)* - parent
  ///
  /// Represents the type of a network.
class NetworkType extends TdObject {
  
  /// **NetworkType** *(networkType)* - parent
  ///
  /// Represents the type of a network.
  const NetworkType();
  
  /// a NetworkType return type can be :
  /// * [NetworkTypeNone]
  /// * [NetworkTypeMobile]
  /// * [NetworkTypeMobileRoaming]
  /// * [NetworkTypeWiFi]
  /// * [NetworkTypeOther]
  factory NetworkType.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case NetworkTypeNone.constructor:
        return NetworkTypeNone.fromJson(json);
      case NetworkTypeMobile.constructor:
        return NetworkTypeMobile.fromJson(json);
      case NetworkTypeMobileRoaming.constructor:
        return NetworkTypeMobileRoaming.fromJson(json);
      case NetworkTypeWiFi.constructor:
        return NetworkTypeWiFi.fromJson(json);
      case NetworkTypeOther.constructor:
        return NetworkTypeOther.fromJson(json);
      default:
        return const NetworkType();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  NetworkType copyWith() => const NetworkType();

  static const String constructor = 'networkType';
  
  @override
  String getConstructor() => constructor;
}


/// **NetworkTypeNone** *(networkTypeNone)* - child of NetworkType
  ///
  /// The network is not available.
class NetworkTypeNone extends NetworkType {
  
  /// **NetworkTypeNone** *(networkTypeNone)* - child of NetworkType
  ///
  /// The network is not available.
  const NetworkTypeNone();
  
  /// Parse from a json
  factory NetworkTypeNone.fromJson(Map<String, dynamic> json) => const NetworkTypeNone();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  NetworkTypeNone copyWith() => const NetworkTypeNone();

  static const String constructor = 'networkTypeNone';
  
  @override
  String getConstructor() => constructor;
}


/// **NetworkTypeMobile** *(networkTypeMobile)* - child of NetworkType
  ///
  /// A mobile network.
class NetworkTypeMobile extends NetworkType {
  
  /// **NetworkTypeMobile** *(networkTypeMobile)* - child of NetworkType
  ///
  /// A mobile network.
  const NetworkTypeMobile();
  
  /// Parse from a json
  factory NetworkTypeMobile.fromJson(Map<String, dynamic> json) => const NetworkTypeMobile();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  NetworkTypeMobile copyWith() => const NetworkTypeMobile();

  static const String constructor = 'networkTypeMobile';
  
  @override
  String getConstructor() => constructor;
}


/// **NetworkTypeMobileRoaming** *(networkTypeMobileRoaming)* - child of NetworkType
  ///
  /// A mobile roaming network.
class NetworkTypeMobileRoaming extends NetworkType {
  
  /// **NetworkTypeMobileRoaming** *(networkTypeMobileRoaming)* - child of NetworkType
  ///
  /// A mobile roaming network.
  const NetworkTypeMobileRoaming();
  
  /// Parse from a json
  factory NetworkTypeMobileRoaming.fromJson(Map<String, dynamic> json) => const NetworkTypeMobileRoaming();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  NetworkTypeMobileRoaming copyWith() => const NetworkTypeMobileRoaming();

  static const String constructor = 'networkTypeMobileRoaming';
  
  @override
  String getConstructor() => constructor;
}


/// **NetworkTypeWiFi** *(networkTypeWiFi)* - child of NetworkType
  ///
  /// A Wi-Fi network.
class NetworkTypeWiFi extends NetworkType {
  
  /// **NetworkTypeWiFi** *(networkTypeWiFi)* - child of NetworkType
  ///
  /// A Wi-Fi network.
  const NetworkTypeWiFi();
  
  /// Parse from a json
  factory NetworkTypeWiFi.fromJson(Map<String, dynamic> json) => const NetworkTypeWiFi();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  NetworkTypeWiFi copyWith() => const NetworkTypeWiFi();

  static const String constructor = 'networkTypeWiFi';
  
  @override
  String getConstructor() => constructor;
}


/// **NetworkTypeOther** *(networkTypeOther)* - child of NetworkType
  ///
  /// A different network type (e.g., Ethernet network).
class NetworkTypeOther extends NetworkType {
  
  /// **NetworkTypeOther** *(networkTypeOther)* - child of NetworkType
  ///
  /// A different network type (e.g., Ethernet network).
  const NetworkTypeOther();
  
  /// Parse from a json
  factory NetworkTypeOther.fromJson(Map<String, dynamic> json) => const NetworkTypeOther();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  NetworkTypeOther copyWith() => const NetworkTypeOther();

  static const String constructor = 'networkTypeOther';
  
  @override
  String getConstructor() => constructor;
}

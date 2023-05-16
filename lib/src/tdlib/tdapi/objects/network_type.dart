part of '../tdapi.dart';

/// **NetworkType** *(networkType)* - parent
///
/// Represents the type of a network.
sealed class NetworkType extends TdObject {
  
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
      case NetworkTypeNone.objectType:
        return NetworkTypeNone.fromJson(json);
      case NetworkTypeMobile.objectType:
        return NetworkTypeMobile.fromJson(json);
      case NetworkTypeMobileRoaming.objectType:
        return NetworkTypeMobileRoaming.fromJson(json);
      case NetworkTypeWiFi.objectType:
        return NetworkTypeWiFi.fromJson(json);
      case NetworkTypeOther.objectType:
        return NetworkTypeOther.fromJson(json);
      default:
        throw FormatException(
          "Unknown object ${json["@type"]} (expected child of NetworkType)",
          json,
        );
    }
  }
  
  @override
  Map<String, dynamic> toJson();

  
  NetworkType copyWith();

  static const String objectType = 'networkType';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **NetworkTypeNone** *(networkTypeNone)* - child of NetworkType
///
/// The network is not available.
final class NetworkTypeNone extends NetworkType {
  
  /// **NetworkTypeNone** *(networkTypeNone)* - child of NetworkType
  ///
  /// The network is not available.
  const NetworkTypeNone();
  
  /// Parse from a json
  factory NetworkTypeNone.fromJson(Map<String, dynamic> json) => const NetworkTypeNone();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  NetworkTypeNone copyWith() => const NetworkTypeNone();

  static const String objectType = 'networkTypeNone';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **NetworkTypeMobile** *(networkTypeMobile)* - child of NetworkType
///
/// A mobile network.
final class NetworkTypeMobile extends NetworkType {
  
  /// **NetworkTypeMobile** *(networkTypeMobile)* - child of NetworkType
  ///
  /// A mobile network.
  const NetworkTypeMobile();
  
  /// Parse from a json
  factory NetworkTypeMobile.fromJson(Map<String, dynamic> json) => const NetworkTypeMobile();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  NetworkTypeMobile copyWith() => const NetworkTypeMobile();

  static const String objectType = 'networkTypeMobile';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **NetworkTypeMobileRoaming** *(networkTypeMobileRoaming)* - child of NetworkType
///
/// A mobile roaming network.
final class NetworkTypeMobileRoaming extends NetworkType {
  
  /// **NetworkTypeMobileRoaming** *(networkTypeMobileRoaming)* - child of NetworkType
  ///
  /// A mobile roaming network.
  const NetworkTypeMobileRoaming();
  
  /// Parse from a json
  factory NetworkTypeMobileRoaming.fromJson(Map<String, dynamic> json) => const NetworkTypeMobileRoaming();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  NetworkTypeMobileRoaming copyWith() => const NetworkTypeMobileRoaming();

  static const String objectType = 'networkTypeMobileRoaming';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **NetworkTypeWiFi** *(networkTypeWiFi)* - child of NetworkType
///
/// A Wi-Fi network.
final class NetworkTypeWiFi extends NetworkType {
  
  /// **NetworkTypeWiFi** *(networkTypeWiFi)* - child of NetworkType
  ///
  /// A Wi-Fi network.
  const NetworkTypeWiFi();
  
  /// Parse from a json
  factory NetworkTypeWiFi.fromJson(Map<String, dynamic> json) => const NetworkTypeWiFi();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  NetworkTypeWiFi copyWith() => const NetworkTypeWiFi();

  static const String objectType = 'networkTypeWiFi';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **NetworkTypeOther** *(networkTypeOther)* - child of NetworkType
///
/// A different network type (e.g., Ethernet network).
final class NetworkTypeOther extends NetworkType {
  
  /// **NetworkTypeOther** *(networkTypeOther)* - child of NetworkType
  ///
  /// A different network type (e.g., Ethernet network).
  const NetworkTypeOther();
  
  /// Parse from a json
  factory NetworkTypeOther.fromJson(Map<String, dynamic> json) => const NetworkTypeOther();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  NetworkTypeOther copyWith() => const NetworkTypeOther();

  static const String objectType = 'networkTypeOther';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

part of '../tdapi.dart';

/// **DeviceToken** *(deviceToken)* - parent
///
/// Represents a data needed to subscribe for push notifications through registerDevice method.
sealed class DeviceToken extends TdObject {
  
  /// **DeviceToken** *(deviceToken)* - parent
  ///
  /// Represents a data needed to subscribe for push notifications through registerDevice method.
  const DeviceToken();
  
  /// a DeviceToken return type can be :
  /// * [DeviceTokenFirebaseCloudMessaging]
  /// * [DeviceTokenApplePush]
  /// * [DeviceTokenApplePushVoIP]
  /// * [DeviceTokenWindowsPush]
  /// * [DeviceTokenMicrosoftPush]
  /// * [DeviceTokenMicrosoftPushVoIP]
  /// * [DeviceTokenWebPush]
  /// * [DeviceTokenSimplePush]
  /// * [DeviceTokenUbuntuPush]
  /// * [DeviceTokenBlackBerryPush]
  /// * [DeviceTokenTizenPush]
  factory DeviceToken.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case DeviceTokenFirebaseCloudMessaging.objectType:
        return DeviceTokenFirebaseCloudMessaging.fromJson(json);
      case DeviceTokenApplePush.objectType:
        return DeviceTokenApplePush.fromJson(json);
      case DeviceTokenApplePushVoIP.objectType:
        return DeviceTokenApplePushVoIP.fromJson(json);
      case DeviceTokenWindowsPush.objectType:
        return DeviceTokenWindowsPush.fromJson(json);
      case DeviceTokenMicrosoftPush.objectType:
        return DeviceTokenMicrosoftPush.fromJson(json);
      case DeviceTokenMicrosoftPushVoIP.objectType:
        return DeviceTokenMicrosoftPushVoIP.fromJson(json);
      case DeviceTokenWebPush.objectType:
        return DeviceTokenWebPush.fromJson(json);
      case DeviceTokenSimplePush.objectType:
        return DeviceTokenSimplePush.fromJson(json);
      case DeviceTokenUbuntuPush.objectType:
        return DeviceTokenUbuntuPush.fromJson(json);
      case DeviceTokenBlackBerryPush.objectType:
        return DeviceTokenBlackBerryPush.fromJson(json);
      case DeviceTokenTizenPush.objectType:
        return DeviceTokenTizenPush.fromJson(json);
      default:
        throw FormatException(
          "Unknown object ${json["@type"]} (expected child of DeviceToken)",
          json,
        );
    }
  }
  
  @override
  Map<String, dynamic> toJson();

  
  DeviceToken copyWith();

  static const String objectType = 'deviceToken';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **DeviceTokenFirebaseCloudMessaging** *(deviceTokenFirebaseCloudMessaging)* - child of DeviceToken
///
/// A token for Firebase Cloud Messaging.
///
/// * [token]: Device registration token; may be empty to deregister a device.
/// * [encrypt]: True, if push notifications must be additionally encrypted.
final class DeviceTokenFirebaseCloudMessaging extends DeviceToken {
  
  /// **DeviceTokenFirebaseCloudMessaging** *(deviceTokenFirebaseCloudMessaging)* - child of DeviceToken
  ///
  /// A token for Firebase Cloud Messaging.
  ///
  /// * [token]: Device registration token; may be empty to deregister a device.
  /// * [encrypt]: True, if push notifications must be additionally encrypted.
  const DeviceTokenFirebaseCloudMessaging({
    required this.token,
    required this.encrypt,
  });
  
  /// Device registration token; may be empty to deregister a device 
  final String token;

  /// True, if push notifications must be additionally encrypted
  final bool encrypt;
  
  /// Parse from a json
  factory DeviceTokenFirebaseCloudMessaging.fromJson(Map<String, dynamic> json) => DeviceTokenFirebaseCloudMessaging(
    token: json['token'],
    encrypt: json['encrypt'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "token": token,
      "encrypt": encrypt,
		};
	}

  
  @override
  DeviceTokenFirebaseCloudMessaging copyWith({
    String? token,
    bool? encrypt,
  }) => DeviceTokenFirebaseCloudMessaging(
    token: token ?? this.token,
    encrypt: encrypt ?? this.encrypt,
  );

  static const String objectType = 'deviceTokenFirebaseCloudMessaging';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **DeviceTokenApplePush** *(deviceTokenApplePush)* - child of DeviceToken
///
/// A token for Apple Push Notification service.
///
/// * [deviceToken]: Device token; may be empty to deregister a device.
/// * [isAppSandbox]: True, if App Sandbox is enabled.
final class DeviceTokenApplePush extends DeviceToken {
  
  /// **DeviceTokenApplePush** *(deviceTokenApplePush)* - child of DeviceToken
  ///
  /// A token for Apple Push Notification service.
  ///
  /// * [deviceToken]: Device token; may be empty to deregister a device.
  /// * [isAppSandbox]: True, if App Sandbox is enabled.
  const DeviceTokenApplePush({
    required this.deviceToken,
    required this.isAppSandbox,
  });
  
  /// Device token; may be empty to deregister a device 
  final String deviceToken;

  /// True, if App Sandbox is enabled
  final bool isAppSandbox;
  
  /// Parse from a json
  factory DeviceTokenApplePush.fromJson(Map<String, dynamic> json) => DeviceTokenApplePush(
    deviceToken: json['device_token'],
    isAppSandbox: json['is_app_sandbox'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "device_token": deviceToken,
      "is_app_sandbox": isAppSandbox,
		};
	}

  
  @override
  DeviceTokenApplePush copyWith({
    String? deviceToken,
    bool? isAppSandbox,
  }) => DeviceTokenApplePush(
    deviceToken: deviceToken ?? this.deviceToken,
    isAppSandbox: isAppSandbox ?? this.isAppSandbox,
  );

  static const String objectType = 'deviceTokenApplePush';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **DeviceTokenApplePushVoIP** *(deviceTokenApplePushVoIP)* - child of DeviceToken
///
/// A token for Apple Push Notification service VoIP notifications.
///
/// * [deviceToken]: Device token; may be empty to deregister a device.
/// * [isAppSandbox]: True, if App Sandbox is enabled.
/// * [encrypt]: True, if push notifications must be additionally encrypted.
final class DeviceTokenApplePushVoIP extends DeviceToken {
  
  /// **DeviceTokenApplePushVoIP** *(deviceTokenApplePushVoIP)* - child of DeviceToken
  ///
  /// A token for Apple Push Notification service VoIP notifications.
  ///
  /// * [deviceToken]: Device token; may be empty to deregister a device.
  /// * [isAppSandbox]: True, if App Sandbox is enabled.
  /// * [encrypt]: True, if push notifications must be additionally encrypted.
  const DeviceTokenApplePushVoIP({
    required this.deviceToken,
    required this.isAppSandbox,
    required this.encrypt,
  });
  
  /// Device token; may be empty to deregister a device 
  final String deviceToken;

  /// True, if App Sandbox is enabled 
  final bool isAppSandbox;

  /// True, if push notifications must be additionally encrypted
  final bool encrypt;
  
  /// Parse from a json
  factory DeviceTokenApplePushVoIP.fromJson(Map<String, dynamic> json) => DeviceTokenApplePushVoIP(
    deviceToken: json['device_token'],
    isAppSandbox: json['is_app_sandbox'],
    encrypt: json['encrypt'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "device_token": deviceToken,
      "is_app_sandbox": isAppSandbox,
      "encrypt": encrypt,
		};
	}

  
  @override
  DeviceTokenApplePushVoIP copyWith({
    String? deviceToken,
    bool? isAppSandbox,
    bool? encrypt,
  }) => DeviceTokenApplePushVoIP(
    deviceToken: deviceToken ?? this.deviceToken,
    isAppSandbox: isAppSandbox ?? this.isAppSandbox,
    encrypt: encrypt ?? this.encrypt,
  );

  static const String objectType = 'deviceTokenApplePushVoIP';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **DeviceTokenWindowsPush** *(deviceTokenWindowsPush)* - child of DeviceToken
///
/// A token for Windows Push Notification Services.
///
/// * [accessToken]: The access token that will be used to send notifications; may be empty to deregister a device.
final class DeviceTokenWindowsPush extends DeviceToken {
  
  /// **DeviceTokenWindowsPush** *(deviceTokenWindowsPush)* - child of DeviceToken
  ///
  /// A token for Windows Push Notification Services.
  ///
  /// * [accessToken]: The access token that will be used to send notifications; may be empty to deregister a device.
  const DeviceTokenWindowsPush({
    required this.accessToken,
  });
  
  /// The access token that will be used to send notifications; may be empty to deregister a device
  final String accessToken;
  
  /// Parse from a json
  factory DeviceTokenWindowsPush.fromJson(Map<String, dynamic> json) => DeviceTokenWindowsPush(
    accessToken: json['access_token'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "access_token": accessToken,
		};
	}

  
  @override
  DeviceTokenWindowsPush copyWith({
    String? accessToken,
  }) => DeviceTokenWindowsPush(
    accessToken: accessToken ?? this.accessToken,
  );

  static const String objectType = 'deviceTokenWindowsPush';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **DeviceTokenMicrosoftPush** *(deviceTokenMicrosoftPush)* - child of DeviceToken
///
/// A token for Microsoft Push Notification Service.
///
/// * [channelUri]: Push notification channel URI; may be empty to deregister a device.
final class DeviceTokenMicrosoftPush extends DeviceToken {
  
  /// **DeviceTokenMicrosoftPush** *(deviceTokenMicrosoftPush)* - child of DeviceToken
  ///
  /// A token for Microsoft Push Notification Service.
  ///
  /// * [channelUri]: Push notification channel URI; may be empty to deregister a device.
  const DeviceTokenMicrosoftPush({
    required this.channelUri,
  });
  
  /// Push notification channel URI; may be empty to deregister a device
  final String channelUri;
  
  /// Parse from a json
  factory DeviceTokenMicrosoftPush.fromJson(Map<String, dynamic> json) => DeviceTokenMicrosoftPush(
    channelUri: json['channel_uri'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "channel_uri": channelUri,
		};
	}

  
  @override
  DeviceTokenMicrosoftPush copyWith({
    String? channelUri,
  }) => DeviceTokenMicrosoftPush(
    channelUri: channelUri ?? this.channelUri,
  );

  static const String objectType = 'deviceTokenMicrosoftPush';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **DeviceTokenMicrosoftPushVoIP** *(deviceTokenMicrosoftPushVoIP)* - child of DeviceToken
///
/// A token for Microsoft Push Notification Service VoIP channel.
///
/// * [channelUri]: Push notification channel URI; may be empty to deregister a device.
final class DeviceTokenMicrosoftPushVoIP extends DeviceToken {
  
  /// **DeviceTokenMicrosoftPushVoIP** *(deviceTokenMicrosoftPushVoIP)* - child of DeviceToken
  ///
  /// A token for Microsoft Push Notification Service VoIP channel.
  ///
  /// * [channelUri]: Push notification channel URI; may be empty to deregister a device.
  const DeviceTokenMicrosoftPushVoIP({
    required this.channelUri,
  });
  
  /// Push notification channel URI; may be empty to deregister a device
  final String channelUri;
  
  /// Parse from a json
  factory DeviceTokenMicrosoftPushVoIP.fromJson(Map<String, dynamic> json) => DeviceTokenMicrosoftPushVoIP(
    channelUri: json['channel_uri'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "channel_uri": channelUri,
		};
	}

  
  @override
  DeviceTokenMicrosoftPushVoIP copyWith({
    String? channelUri,
  }) => DeviceTokenMicrosoftPushVoIP(
    channelUri: channelUri ?? this.channelUri,
  );

  static const String objectType = 'deviceTokenMicrosoftPushVoIP';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **DeviceTokenWebPush** *(deviceTokenWebPush)* - child of DeviceToken
///
/// A token for web Push API.
///
/// * [endpoint]: Absolute URL exposed by the push service where the application server can send push messages; may be empty to deregister a device.
/// * [p256dhBase64url]: Base64url-encoded P-256 elliptic curve Diffie-Hellman public key.
/// * [authBase64url]: Base64url-encoded authentication secret.
final class DeviceTokenWebPush extends DeviceToken {
  
  /// **DeviceTokenWebPush** *(deviceTokenWebPush)* - child of DeviceToken
  ///
  /// A token for web Push API.
  ///
  /// * [endpoint]: Absolute URL exposed by the push service where the application server can send push messages; may be empty to deregister a device.
  /// * [p256dhBase64url]: Base64url-encoded P-256 elliptic curve Diffie-Hellman public key.
  /// * [authBase64url]: Base64url-encoded authentication secret.
  const DeviceTokenWebPush({
    required this.endpoint,
    required this.p256dhBase64url,
    required this.authBase64url,
  });
  
  /// Absolute URL exposed by the push service where the application server can send push messages; may be empty to deregister a device
  final String endpoint;

  /// Base64url-encoded P-256 elliptic curve Diffie-Hellman public key
  final String p256dhBase64url;

  /// Base64url-encoded authentication secret
  final String authBase64url;
  
  /// Parse from a json
  factory DeviceTokenWebPush.fromJson(Map<String, dynamic> json) => DeviceTokenWebPush(
    endpoint: json['endpoint'],
    p256dhBase64url: json['p256dh_base64url'],
    authBase64url: json['auth_base64url'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "endpoint": endpoint,
      "p256dh_base64url": p256dhBase64url,
      "auth_base64url": authBase64url,
		};
	}

  
  @override
  DeviceTokenWebPush copyWith({
    String? endpoint,
    String? p256dhBase64url,
    String? authBase64url,
  }) => DeviceTokenWebPush(
    endpoint: endpoint ?? this.endpoint,
    p256dhBase64url: p256dhBase64url ?? this.p256dhBase64url,
    authBase64url: authBase64url ?? this.authBase64url,
  );

  static const String objectType = 'deviceTokenWebPush';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **DeviceTokenSimplePush** *(deviceTokenSimplePush)* - child of DeviceToken
///
/// A token for Simple Push API for Firefox OS.
///
/// * [endpoint]: Absolute URL exposed by the push service where the application server can send push messages; may be empty to deregister a device.
final class DeviceTokenSimplePush extends DeviceToken {
  
  /// **DeviceTokenSimplePush** *(deviceTokenSimplePush)* - child of DeviceToken
  ///
  /// A token for Simple Push API for Firefox OS.
  ///
  /// * [endpoint]: Absolute URL exposed by the push service where the application server can send push messages; may be empty to deregister a device.
  const DeviceTokenSimplePush({
    required this.endpoint,
  });
  
  /// Absolute URL exposed by the push service where the application server can send push messages; may be empty to deregister a device
  final String endpoint;
  
  /// Parse from a json
  factory DeviceTokenSimplePush.fromJson(Map<String, dynamic> json) => DeviceTokenSimplePush(
    endpoint: json['endpoint'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "endpoint": endpoint,
		};
	}

  
  @override
  DeviceTokenSimplePush copyWith({
    String? endpoint,
  }) => DeviceTokenSimplePush(
    endpoint: endpoint ?? this.endpoint,
  );

  static const String objectType = 'deviceTokenSimplePush';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **DeviceTokenUbuntuPush** *(deviceTokenUbuntuPush)* - child of DeviceToken
///
/// A token for Ubuntu Push Client service.
///
/// * [token]: Token; may be empty to deregister a device.
final class DeviceTokenUbuntuPush extends DeviceToken {
  
  /// **DeviceTokenUbuntuPush** *(deviceTokenUbuntuPush)* - child of DeviceToken
  ///
  /// A token for Ubuntu Push Client service.
  ///
  /// * [token]: Token; may be empty to deregister a device.
  const DeviceTokenUbuntuPush({
    required this.token,
  });
  
  /// Token; may be empty to deregister a device
  final String token;
  
  /// Parse from a json
  factory DeviceTokenUbuntuPush.fromJson(Map<String, dynamic> json) => DeviceTokenUbuntuPush(
    token: json['token'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "token": token,
		};
	}

  
  @override
  DeviceTokenUbuntuPush copyWith({
    String? token,
  }) => DeviceTokenUbuntuPush(
    token: token ?? this.token,
  );

  static const String objectType = 'deviceTokenUbuntuPush';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **DeviceTokenBlackBerryPush** *(deviceTokenBlackBerryPush)* - child of DeviceToken
///
/// A token for BlackBerry Push Service.
///
/// * [token]: Token; may be empty to deregister a device.
final class DeviceTokenBlackBerryPush extends DeviceToken {
  
  /// **DeviceTokenBlackBerryPush** *(deviceTokenBlackBerryPush)* - child of DeviceToken
  ///
  /// A token for BlackBerry Push Service.
  ///
  /// * [token]: Token; may be empty to deregister a device.
  const DeviceTokenBlackBerryPush({
    required this.token,
  });
  
  /// Token; may be empty to deregister a device
  final String token;
  
  /// Parse from a json
  factory DeviceTokenBlackBerryPush.fromJson(Map<String, dynamic> json) => DeviceTokenBlackBerryPush(
    token: json['token'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "token": token,
		};
	}

  
  @override
  DeviceTokenBlackBerryPush copyWith({
    String? token,
  }) => DeviceTokenBlackBerryPush(
    token: token ?? this.token,
  );

  static const String objectType = 'deviceTokenBlackBerryPush';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **DeviceTokenTizenPush** *(deviceTokenTizenPush)* - child of DeviceToken
///
/// A token for Tizen Push Service.
///
/// * [regId]: Push service registration identifier; may be empty to deregister a device.
final class DeviceTokenTizenPush extends DeviceToken {
  
  /// **DeviceTokenTizenPush** *(deviceTokenTizenPush)* - child of DeviceToken
  ///
  /// A token for Tizen Push Service.
  ///
  /// * [regId]: Push service registration identifier; may be empty to deregister a device.
  const DeviceTokenTizenPush({
    required this.regId,
  });
  
  /// Push service registration identifier; may be empty to deregister a device
  final String regId;
  
  /// Parse from a json
  factory DeviceTokenTizenPush.fromJson(Map<String, dynamic> json) => DeviceTokenTizenPush(
    regId: json['reg_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "reg_id": regId,
		};
	}

  
  @override
  DeviceTokenTizenPush copyWith({
    String? regId,
  }) => DeviceTokenTizenPush(
    regId: regId ?? this.regId,
  );

  static const String objectType = 'deviceTokenTizenPush';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

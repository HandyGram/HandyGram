part of '../tdapi.dart';

/// **SessionType** *(sessionType)* - parent
  ///
  /// Represents the type of a session.
class SessionType extends TdObject {
  
  /// **SessionType** *(sessionType)* - parent
  ///
  /// Represents the type of a session.
  const SessionType();
  
  /// a SessionType return type can be :
  /// * [SessionTypeAndroid]
  /// * [SessionTypeApple]
  /// * [SessionTypeBrave]
  /// * [SessionTypeChrome]
  /// * [SessionTypeEdge]
  /// * [SessionTypeFirefox]
  /// * [SessionTypeIpad]
  /// * [SessionTypeIphone]
  /// * [SessionTypeLinux]
  /// * [SessionTypeMac]
  /// * [SessionTypeOpera]
  /// * [SessionTypeSafari]
  /// * [SessionTypeUbuntu]
  /// * [SessionTypeUnknown]
  /// * [SessionTypeVivaldi]
  /// * [SessionTypeWindows]
  /// * [SessionTypeXbox]
  factory SessionType.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case SessionTypeAndroid.constructor:
        return SessionTypeAndroid.fromJson(json);
      case SessionTypeApple.constructor:
        return SessionTypeApple.fromJson(json);
      case SessionTypeBrave.constructor:
        return SessionTypeBrave.fromJson(json);
      case SessionTypeChrome.constructor:
        return SessionTypeChrome.fromJson(json);
      case SessionTypeEdge.constructor:
        return SessionTypeEdge.fromJson(json);
      case SessionTypeFirefox.constructor:
        return SessionTypeFirefox.fromJson(json);
      case SessionTypeIpad.constructor:
        return SessionTypeIpad.fromJson(json);
      case SessionTypeIphone.constructor:
        return SessionTypeIphone.fromJson(json);
      case SessionTypeLinux.constructor:
        return SessionTypeLinux.fromJson(json);
      case SessionTypeMac.constructor:
        return SessionTypeMac.fromJson(json);
      case SessionTypeOpera.constructor:
        return SessionTypeOpera.fromJson(json);
      case SessionTypeSafari.constructor:
        return SessionTypeSafari.fromJson(json);
      case SessionTypeUbuntu.constructor:
        return SessionTypeUbuntu.fromJson(json);
      case SessionTypeUnknown.constructor:
        return SessionTypeUnknown.fromJson(json);
      case SessionTypeVivaldi.constructor:
        return SessionTypeVivaldi.fromJson(json);
      case SessionTypeWindows.constructor:
        return SessionTypeWindows.fromJson(json);
      case SessionTypeXbox.constructor:
        return SessionTypeXbox.fromJson(json);
      default:
        return const SessionType();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  SessionType copyWith() => const SessionType();

  static const String constructor = 'sessionType';
  
  @override
  String getConstructor() => constructor;
}


/// **SessionTypeAndroid** *(sessionTypeAndroid)* - child of SessionType
  ///
  /// The session is running on an Android device.
class SessionTypeAndroid extends SessionType {
  
  /// **SessionTypeAndroid** *(sessionTypeAndroid)* - child of SessionType
  ///
  /// The session is running on an Android device.
  const SessionTypeAndroid();
  
  /// Parse from a json
  factory SessionTypeAndroid.fromJson(Map<String, dynamic> json) => const SessionTypeAndroid();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  SessionTypeAndroid copyWith() => const SessionTypeAndroid();

  static const String constructor = 'sessionTypeAndroid';
  
  @override
  String getConstructor() => constructor;
}


/// **SessionTypeApple** *(sessionTypeApple)* - child of SessionType
  ///
  /// The session is running on a generic Apple device.
class SessionTypeApple extends SessionType {
  
  /// **SessionTypeApple** *(sessionTypeApple)* - child of SessionType
  ///
  /// The session is running on a generic Apple device.
  const SessionTypeApple();
  
  /// Parse from a json
  factory SessionTypeApple.fromJson(Map<String, dynamic> json) => const SessionTypeApple();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  SessionTypeApple copyWith() => const SessionTypeApple();

  static const String constructor = 'sessionTypeApple';
  
  @override
  String getConstructor() => constructor;
}


/// **SessionTypeBrave** *(sessionTypeBrave)* - child of SessionType
  ///
  /// The session is running on the Brave browser.
class SessionTypeBrave extends SessionType {
  
  /// **SessionTypeBrave** *(sessionTypeBrave)* - child of SessionType
  ///
  /// The session is running on the Brave browser.
  const SessionTypeBrave();
  
  /// Parse from a json
  factory SessionTypeBrave.fromJson(Map<String, dynamic> json) => const SessionTypeBrave();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  SessionTypeBrave copyWith() => const SessionTypeBrave();

  static const String constructor = 'sessionTypeBrave';
  
  @override
  String getConstructor() => constructor;
}


/// **SessionTypeChrome** *(sessionTypeChrome)* - child of SessionType
  ///
  /// The session is running on the Chrome browser.
class SessionTypeChrome extends SessionType {
  
  /// **SessionTypeChrome** *(sessionTypeChrome)* - child of SessionType
  ///
  /// The session is running on the Chrome browser.
  const SessionTypeChrome();
  
  /// Parse from a json
  factory SessionTypeChrome.fromJson(Map<String, dynamic> json) => const SessionTypeChrome();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  SessionTypeChrome copyWith() => const SessionTypeChrome();

  static const String constructor = 'sessionTypeChrome';
  
  @override
  String getConstructor() => constructor;
}


/// **SessionTypeEdge** *(sessionTypeEdge)* - child of SessionType
  ///
  /// The session is running on the Edge browser.
class SessionTypeEdge extends SessionType {
  
  /// **SessionTypeEdge** *(sessionTypeEdge)* - child of SessionType
  ///
  /// The session is running on the Edge browser.
  const SessionTypeEdge();
  
  /// Parse from a json
  factory SessionTypeEdge.fromJson(Map<String, dynamic> json) => const SessionTypeEdge();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  SessionTypeEdge copyWith() => const SessionTypeEdge();

  static const String constructor = 'sessionTypeEdge';
  
  @override
  String getConstructor() => constructor;
}


/// **SessionTypeFirefox** *(sessionTypeFirefox)* - child of SessionType
  ///
  /// The session is running on the Firefox browser.
class SessionTypeFirefox extends SessionType {
  
  /// **SessionTypeFirefox** *(sessionTypeFirefox)* - child of SessionType
  ///
  /// The session is running on the Firefox browser.
  const SessionTypeFirefox();
  
  /// Parse from a json
  factory SessionTypeFirefox.fromJson(Map<String, dynamic> json) => const SessionTypeFirefox();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  SessionTypeFirefox copyWith() => const SessionTypeFirefox();

  static const String constructor = 'sessionTypeFirefox';
  
  @override
  String getConstructor() => constructor;
}


/// **SessionTypeIpad** *(sessionTypeIpad)* - child of SessionType
  ///
  /// The session is running on an iPad device.
class SessionTypeIpad extends SessionType {
  
  /// **SessionTypeIpad** *(sessionTypeIpad)* - child of SessionType
  ///
  /// The session is running on an iPad device.
  const SessionTypeIpad();
  
  /// Parse from a json
  factory SessionTypeIpad.fromJson(Map<String, dynamic> json) => const SessionTypeIpad();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  SessionTypeIpad copyWith() => const SessionTypeIpad();

  static const String constructor = 'sessionTypeIpad';
  
  @override
  String getConstructor() => constructor;
}


/// **SessionTypeIphone** *(sessionTypeIphone)* - child of SessionType
  ///
  /// The session is running on an iPhone device.
class SessionTypeIphone extends SessionType {
  
  /// **SessionTypeIphone** *(sessionTypeIphone)* - child of SessionType
  ///
  /// The session is running on an iPhone device.
  const SessionTypeIphone();
  
  /// Parse from a json
  factory SessionTypeIphone.fromJson(Map<String, dynamic> json) => const SessionTypeIphone();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  SessionTypeIphone copyWith() => const SessionTypeIphone();

  static const String constructor = 'sessionTypeIphone';
  
  @override
  String getConstructor() => constructor;
}


/// **SessionTypeLinux** *(sessionTypeLinux)* - child of SessionType
  ///
  /// The session is running on a Linux device.
class SessionTypeLinux extends SessionType {
  
  /// **SessionTypeLinux** *(sessionTypeLinux)* - child of SessionType
  ///
  /// The session is running on a Linux device.
  const SessionTypeLinux();
  
  /// Parse from a json
  factory SessionTypeLinux.fromJson(Map<String, dynamic> json) => const SessionTypeLinux();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  SessionTypeLinux copyWith() => const SessionTypeLinux();

  static const String constructor = 'sessionTypeLinux';
  
  @override
  String getConstructor() => constructor;
}


/// **SessionTypeMac** *(sessionTypeMac)* - child of SessionType
  ///
  /// The session is running on a Mac device.
class SessionTypeMac extends SessionType {
  
  /// **SessionTypeMac** *(sessionTypeMac)* - child of SessionType
  ///
  /// The session is running on a Mac device.
  const SessionTypeMac();
  
  /// Parse from a json
  factory SessionTypeMac.fromJson(Map<String, dynamic> json) => const SessionTypeMac();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  SessionTypeMac copyWith() => const SessionTypeMac();

  static const String constructor = 'sessionTypeMac';
  
  @override
  String getConstructor() => constructor;
}


/// **SessionTypeOpera** *(sessionTypeOpera)* - child of SessionType
  ///
  /// The session is running on the Opera browser.
class SessionTypeOpera extends SessionType {
  
  /// **SessionTypeOpera** *(sessionTypeOpera)* - child of SessionType
  ///
  /// The session is running on the Opera browser.
  const SessionTypeOpera();
  
  /// Parse from a json
  factory SessionTypeOpera.fromJson(Map<String, dynamic> json) => const SessionTypeOpera();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  SessionTypeOpera copyWith() => const SessionTypeOpera();

  static const String constructor = 'sessionTypeOpera';
  
  @override
  String getConstructor() => constructor;
}


/// **SessionTypeSafari** *(sessionTypeSafari)* - child of SessionType
  ///
  /// The session is running on the Safari browser.
class SessionTypeSafari extends SessionType {
  
  /// **SessionTypeSafari** *(sessionTypeSafari)* - child of SessionType
  ///
  /// The session is running on the Safari browser.
  const SessionTypeSafari();
  
  /// Parse from a json
  factory SessionTypeSafari.fromJson(Map<String, dynamic> json) => const SessionTypeSafari();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  SessionTypeSafari copyWith() => const SessionTypeSafari();

  static const String constructor = 'sessionTypeSafari';
  
  @override
  String getConstructor() => constructor;
}


/// **SessionTypeUbuntu** *(sessionTypeUbuntu)* - child of SessionType
  ///
  /// The session is running on an Ubuntu device.
class SessionTypeUbuntu extends SessionType {
  
  /// **SessionTypeUbuntu** *(sessionTypeUbuntu)* - child of SessionType
  ///
  /// The session is running on an Ubuntu device.
  const SessionTypeUbuntu();
  
  /// Parse from a json
  factory SessionTypeUbuntu.fromJson(Map<String, dynamic> json) => const SessionTypeUbuntu();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  SessionTypeUbuntu copyWith() => const SessionTypeUbuntu();

  static const String constructor = 'sessionTypeUbuntu';
  
  @override
  String getConstructor() => constructor;
}


/// **SessionTypeUnknown** *(sessionTypeUnknown)* - child of SessionType
  ///
  /// The session is running on an unknown type of device.
class SessionTypeUnknown extends SessionType {
  
  /// **SessionTypeUnknown** *(sessionTypeUnknown)* - child of SessionType
  ///
  /// The session is running on an unknown type of device.
  const SessionTypeUnknown();
  
  /// Parse from a json
  factory SessionTypeUnknown.fromJson(Map<String, dynamic> json) => const SessionTypeUnknown();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  SessionTypeUnknown copyWith() => const SessionTypeUnknown();

  static const String constructor = 'sessionTypeUnknown';
  
  @override
  String getConstructor() => constructor;
}


/// **SessionTypeVivaldi** *(sessionTypeVivaldi)* - child of SessionType
  ///
  /// The session is running on the Vivaldi browser.
class SessionTypeVivaldi extends SessionType {
  
  /// **SessionTypeVivaldi** *(sessionTypeVivaldi)* - child of SessionType
  ///
  /// The session is running on the Vivaldi browser.
  const SessionTypeVivaldi();
  
  /// Parse from a json
  factory SessionTypeVivaldi.fromJson(Map<String, dynamic> json) => const SessionTypeVivaldi();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  SessionTypeVivaldi copyWith() => const SessionTypeVivaldi();

  static const String constructor = 'sessionTypeVivaldi';
  
  @override
  String getConstructor() => constructor;
}


/// **SessionTypeWindows** *(sessionTypeWindows)* - child of SessionType
  ///
  /// The session is running on a Windows device.
class SessionTypeWindows extends SessionType {
  
  /// **SessionTypeWindows** *(sessionTypeWindows)* - child of SessionType
  ///
  /// The session is running on a Windows device.
  const SessionTypeWindows();
  
  /// Parse from a json
  factory SessionTypeWindows.fromJson(Map<String, dynamic> json) => const SessionTypeWindows();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  SessionTypeWindows copyWith() => const SessionTypeWindows();

  static const String constructor = 'sessionTypeWindows';
  
  @override
  String getConstructor() => constructor;
}


/// **SessionTypeXbox** *(sessionTypeXbox)* - child of SessionType
  ///
  /// The session is running on an Xbox console.
class SessionTypeXbox extends SessionType {
  
  /// **SessionTypeXbox** *(sessionTypeXbox)* - child of SessionType
  ///
  /// The session is running on an Xbox console.
  const SessionTypeXbox();
  
  /// Parse from a json
  factory SessionTypeXbox.fromJson(Map<String, dynamic> json) => const SessionTypeXbox();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  SessionTypeXbox copyWith() => const SessionTypeXbox();

  static const String constructor = 'sessionTypeXbox';
  
  @override
  String getConstructor() => constructor;
}

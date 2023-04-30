part of '../tdapi.dart';

/// **ChatReportReason** *(chatReportReason)* - parent
  ///
  /// Describes the reason why a chat is reported.
class ChatReportReason extends TdObject {
  
  /// **ChatReportReason** *(chatReportReason)* - parent
  ///
  /// Describes the reason why a chat is reported.
  const ChatReportReason();
  
  /// a ChatReportReason return type can be :
  /// * [ChatReportReasonSpam]
  /// * [ChatReportReasonViolence]
  /// * [ChatReportReasonPornography]
  /// * [ChatReportReasonChildAbuse]
  /// * [ChatReportReasonCopyright]
  /// * [ChatReportReasonUnrelatedLocation]
  /// * [ChatReportReasonFake]
  /// * [ChatReportReasonIllegalDrugs]
  /// * [ChatReportReasonPersonalDetails]
  /// * [ChatReportReasonCustom]
  factory ChatReportReason.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case ChatReportReasonSpam.constructor:
        return ChatReportReasonSpam.fromJson(json);
      case ChatReportReasonViolence.constructor:
        return ChatReportReasonViolence.fromJson(json);
      case ChatReportReasonPornography.constructor:
        return ChatReportReasonPornography.fromJson(json);
      case ChatReportReasonChildAbuse.constructor:
        return ChatReportReasonChildAbuse.fromJson(json);
      case ChatReportReasonCopyright.constructor:
        return ChatReportReasonCopyright.fromJson(json);
      case ChatReportReasonUnrelatedLocation.constructor:
        return ChatReportReasonUnrelatedLocation.fromJson(json);
      case ChatReportReasonFake.constructor:
        return ChatReportReasonFake.fromJson(json);
      case ChatReportReasonIllegalDrugs.constructor:
        return ChatReportReasonIllegalDrugs.fromJson(json);
      case ChatReportReasonPersonalDetails.constructor:
        return ChatReportReasonPersonalDetails.fromJson(json);
      case ChatReportReasonCustom.constructor:
        return ChatReportReasonCustom.fromJson(json);
      default:
        return const ChatReportReason();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  ChatReportReason copyWith() => const ChatReportReason();

  static const String constructor = 'chatReportReason';
  
  @override
  String getConstructor() => constructor;
}


/// **ChatReportReasonSpam** *(chatReportReasonSpam)* - child of ChatReportReason
  ///
  /// The chat contains spam messages.
class ChatReportReasonSpam extends ChatReportReason {
  
  /// **ChatReportReasonSpam** *(chatReportReasonSpam)* - child of ChatReportReason
  ///
  /// The chat contains spam messages.
  const ChatReportReasonSpam();
  
  /// Parse from a json
  factory ChatReportReasonSpam.fromJson(Map<String, dynamic> json) => const ChatReportReasonSpam();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  ChatReportReasonSpam copyWith() => const ChatReportReasonSpam();

  static const String constructor = 'chatReportReasonSpam';
  
  @override
  String getConstructor() => constructor;
}


/// **ChatReportReasonViolence** *(chatReportReasonViolence)* - child of ChatReportReason
  ///
  /// The chat promotes violence.
class ChatReportReasonViolence extends ChatReportReason {
  
  /// **ChatReportReasonViolence** *(chatReportReasonViolence)* - child of ChatReportReason
  ///
  /// The chat promotes violence.
  const ChatReportReasonViolence();
  
  /// Parse from a json
  factory ChatReportReasonViolence.fromJson(Map<String, dynamic> json) => const ChatReportReasonViolence();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  ChatReportReasonViolence copyWith() => const ChatReportReasonViolence();

  static const String constructor = 'chatReportReasonViolence';
  
  @override
  String getConstructor() => constructor;
}


/// **ChatReportReasonPornography** *(chatReportReasonPornography)* - child of ChatReportReason
  ///
  /// The chat contains pornographic messages.
class ChatReportReasonPornography extends ChatReportReason {
  
  /// **ChatReportReasonPornography** *(chatReportReasonPornography)* - child of ChatReportReason
  ///
  /// The chat contains pornographic messages.
  const ChatReportReasonPornography();
  
  /// Parse from a json
  factory ChatReportReasonPornography.fromJson(Map<String, dynamic> json) => const ChatReportReasonPornography();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  ChatReportReasonPornography copyWith() => const ChatReportReasonPornography();

  static const String constructor = 'chatReportReasonPornography';
  
  @override
  String getConstructor() => constructor;
}


/// **ChatReportReasonChildAbuse** *(chatReportReasonChildAbuse)* - child of ChatReportReason
  ///
  /// The chat has child abuse related content.
class ChatReportReasonChildAbuse extends ChatReportReason {
  
  /// **ChatReportReasonChildAbuse** *(chatReportReasonChildAbuse)* - child of ChatReportReason
  ///
  /// The chat has child abuse related content.
  const ChatReportReasonChildAbuse();
  
  /// Parse from a json
  factory ChatReportReasonChildAbuse.fromJson(Map<String, dynamic> json) => const ChatReportReasonChildAbuse();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  ChatReportReasonChildAbuse copyWith() => const ChatReportReasonChildAbuse();

  static const String constructor = 'chatReportReasonChildAbuse';
  
  @override
  String getConstructor() => constructor;
}


/// **ChatReportReasonCopyright** *(chatReportReasonCopyright)* - child of ChatReportReason
  ///
  /// The chat contains copyrighted content.
class ChatReportReasonCopyright extends ChatReportReason {
  
  /// **ChatReportReasonCopyright** *(chatReportReasonCopyright)* - child of ChatReportReason
  ///
  /// The chat contains copyrighted content.
  const ChatReportReasonCopyright();
  
  /// Parse from a json
  factory ChatReportReasonCopyright.fromJson(Map<String, dynamic> json) => const ChatReportReasonCopyright();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  ChatReportReasonCopyright copyWith() => const ChatReportReasonCopyright();

  static const String constructor = 'chatReportReasonCopyright';
  
  @override
  String getConstructor() => constructor;
}


/// **ChatReportReasonUnrelatedLocation** *(chatReportReasonUnrelatedLocation)* - child of ChatReportReason
  ///
  /// The location-based chat is unrelated to its stated location.
class ChatReportReasonUnrelatedLocation extends ChatReportReason {
  
  /// **ChatReportReasonUnrelatedLocation** *(chatReportReasonUnrelatedLocation)* - child of ChatReportReason
  ///
  /// The location-based chat is unrelated to its stated location.
  const ChatReportReasonUnrelatedLocation();
  
  /// Parse from a json
  factory ChatReportReasonUnrelatedLocation.fromJson(Map<String, dynamic> json) => const ChatReportReasonUnrelatedLocation();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  ChatReportReasonUnrelatedLocation copyWith() => const ChatReportReasonUnrelatedLocation();

  static const String constructor = 'chatReportReasonUnrelatedLocation';
  
  @override
  String getConstructor() => constructor;
}


/// **ChatReportReasonFake** *(chatReportReasonFake)* - child of ChatReportReason
  ///
  /// The chat represents a fake account.
class ChatReportReasonFake extends ChatReportReason {
  
  /// **ChatReportReasonFake** *(chatReportReasonFake)* - child of ChatReportReason
  ///
  /// The chat represents a fake account.
  const ChatReportReasonFake();
  
  /// Parse from a json
  factory ChatReportReasonFake.fromJson(Map<String, dynamic> json) => const ChatReportReasonFake();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  ChatReportReasonFake copyWith() => const ChatReportReasonFake();

  static const String constructor = 'chatReportReasonFake';
  
  @override
  String getConstructor() => constructor;
}


/// **ChatReportReasonIllegalDrugs** *(chatReportReasonIllegalDrugs)* - child of ChatReportReason
  ///
  /// The chat has illegal drugs related content.
class ChatReportReasonIllegalDrugs extends ChatReportReason {
  
  /// **ChatReportReasonIllegalDrugs** *(chatReportReasonIllegalDrugs)* - child of ChatReportReason
  ///
  /// The chat has illegal drugs related content.
  const ChatReportReasonIllegalDrugs();
  
  /// Parse from a json
  factory ChatReportReasonIllegalDrugs.fromJson(Map<String, dynamic> json) => const ChatReportReasonIllegalDrugs();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  ChatReportReasonIllegalDrugs copyWith() => const ChatReportReasonIllegalDrugs();

  static const String constructor = 'chatReportReasonIllegalDrugs';
  
  @override
  String getConstructor() => constructor;
}


/// **ChatReportReasonPersonalDetails** *(chatReportReasonPersonalDetails)* - child of ChatReportReason
  ///
  /// The chat contains messages with personal details.
class ChatReportReasonPersonalDetails extends ChatReportReason {
  
  /// **ChatReportReasonPersonalDetails** *(chatReportReasonPersonalDetails)* - child of ChatReportReason
  ///
  /// The chat contains messages with personal details.
  const ChatReportReasonPersonalDetails();
  
  /// Parse from a json
  factory ChatReportReasonPersonalDetails.fromJson(Map<String, dynamic> json) => const ChatReportReasonPersonalDetails();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  ChatReportReasonPersonalDetails copyWith() => const ChatReportReasonPersonalDetails();

  static const String constructor = 'chatReportReasonPersonalDetails';
  
  @override
  String getConstructor() => constructor;
}


/// **ChatReportReasonCustom** *(chatReportReasonCustom)* - child of ChatReportReason
  ///
  /// A custom reason provided by the user.
class ChatReportReasonCustom extends ChatReportReason {
  
  /// **ChatReportReasonCustom** *(chatReportReasonCustom)* - child of ChatReportReason
  ///
  /// A custom reason provided by the user.
  const ChatReportReasonCustom();
  
  /// Parse from a json
  factory ChatReportReasonCustom.fromJson(Map<String, dynamic> json) => const ChatReportReasonCustom();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  ChatReportReasonCustom copyWith() => const ChatReportReasonCustom();

  static const String constructor = 'chatReportReasonCustom';
  
  @override
  String getConstructor() => constructor;
}

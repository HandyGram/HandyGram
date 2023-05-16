part of '../tdapi.dart';

/// **ChatReportReason** *(chatReportReason)* - parent
///
/// Describes the reason why a chat is reported.
sealed class ChatReportReason extends TdObject {
  
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
      case ChatReportReasonSpam.objectType:
        return ChatReportReasonSpam.fromJson(json);
      case ChatReportReasonViolence.objectType:
        return ChatReportReasonViolence.fromJson(json);
      case ChatReportReasonPornography.objectType:
        return ChatReportReasonPornography.fromJson(json);
      case ChatReportReasonChildAbuse.objectType:
        return ChatReportReasonChildAbuse.fromJson(json);
      case ChatReportReasonCopyright.objectType:
        return ChatReportReasonCopyright.fromJson(json);
      case ChatReportReasonUnrelatedLocation.objectType:
        return ChatReportReasonUnrelatedLocation.fromJson(json);
      case ChatReportReasonFake.objectType:
        return ChatReportReasonFake.fromJson(json);
      case ChatReportReasonIllegalDrugs.objectType:
        return ChatReportReasonIllegalDrugs.fromJson(json);
      case ChatReportReasonPersonalDetails.objectType:
        return ChatReportReasonPersonalDetails.fromJson(json);
      case ChatReportReasonCustom.objectType:
        return ChatReportReasonCustom.fromJson(json);
      default:
        throw FormatException(
          "Unknown object ${json["@type"]} (expected child of ChatReportReason)",
          json,
        );
    }
  }
  
  @override
  Map<String, dynamic> toJson();

  
  ChatReportReason copyWith();

  static const String objectType = 'chatReportReason';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **ChatReportReasonSpam** *(chatReportReasonSpam)* - child of ChatReportReason
///
/// The chat contains spam messages.
final class ChatReportReasonSpam extends ChatReportReason {
  
  /// **ChatReportReasonSpam** *(chatReportReasonSpam)* - child of ChatReportReason
  ///
  /// The chat contains spam messages.
  const ChatReportReasonSpam();
  
  /// Parse from a json
  factory ChatReportReasonSpam.fromJson(Map<String, dynamic> json) => const ChatReportReasonSpam();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  ChatReportReasonSpam copyWith() => const ChatReportReasonSpam();

  static const String objectType = 'chatReportReasonSpam';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **ChatReportReasonViolence** *(chatReportReasonViolence)* - child of ChatReportReason
///
/// The chat promotes violence.
final class ChatReportReasonViolence extends ChatReportReason {
  
  /// **ChatReportReasonViolence** *(chatReportReasonViolence)* - child of ChatReportReason
  ///
  /// The chat promotes violence.
  const ChatReportReasonViolence();
  
  /// Parse from a json
  factory ChatReportReasonViolence.fromJson(Map<String, dynamic> json) => const ChatReportReasonViolence();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  ChatReportReasonViolence copyWith() => const ChatReportReasonViolence();

  static const String objectType = 'chatReportReasonViolence';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **ChatReportReasonPornography** *(chatReportReasonPornography)* - child of ChatReportReason
///
/// The chat contains pornographic messages.
final class ChatReportReasonPornography extends ChatReportReason {
  
  /// **ChatReportReasonPornography** *(chatReportReasonPornography)* - child of ChatReportReason
  ///
  /// The chat contains pornographic messages.
  const ChatReportReasonPornography();
  
  /// Parse from a json
  factory ChatReportReasonPornography.fromJson(Map<String, dynamic> json) => const ChatReportReasonPornography();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  ChatReportReasonPornography copyWith() => const ChatReportReasonPornography();

  static const String objectType = 'chatReportReasonPornography';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **ChatReportReasonChildAbuse** *(chatReportReasonChildAbuse)* - child of ChatReportReason
///
/// The chat has child abuse related content.
final class ChatReportReasonChildAbuse extends ChatReportReason {
  
  /// **ChatReportReasonChildAbuse** *(chatReportReasonChildAbuse)* - child of ChatReportReason
  ///
  /// The chat has child abuse related content.
  const ChatReportReasonChildAbuse();
  
  /// Parse from a json
  factory ChatReportReasonChildAbuse.fromJson(Map<String, dynamic> json) => const ChatReportReasonChildAbuse();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  ChatReportReasonChildAbuse copyWith() => const ChatReportReasonChildAbuse();

  static const String objectType = 'chatReportReasonChildAbuse';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **ChatReportReasonCopyright** *(chatReportReasonCopyright)* - child of ChatReportReason
///
/// The chat contains copyrighted content.
final class ChatReportReasonCopyright extends ChatReportReason {
  
  /// **ChatReportReasonCopyright** *(chatReportReasonCopyright)* - child of ChatReportReason
  ///
  /// The chat contains copyrighted content.
  const ChatReportReasonCopyright();
  
  /// Parse from a json
  factory ChatReportReasonCopyright.fromJson(Map<String, dynamic> json) => const ChatReportReasonCopyright();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  ChatReportReasonCopyright copyWith() => const ChatReportReasonCopyright();

  static const String objectType = 'chatReportReasonCopyright';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **ChatReportReasonUnrelatedLocation** *(chatReportReasonUnrelatedLocation)* - child of ChatReportReason
///
/// The location-based chat is unrelated to its stated location.
final class ChatReportReasonUnrelatedLocation extends ChatReportReason {
  
  /// **ChatReportReasonUnrelatedLocation** *(chatReportReasonUnrelatedLocation)* - child of ChatReportReason
  ///
  /// The location-based chat is unrelated to its stated location.
  const ChatReportReasonUnrelatedLocation();
  
  /// Parse from a json
  factory ChatReportReasonUnrelatedLocation.fromJson(Map<String, dynamic> json) => const ChatReportReasonUnrelatedLocation();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  ChatReportReasonUnrelatedLocation copyWith() => const ChatReportReasonUnrelatedLocation();

  static const String objectType = 'chatReportReasonUnrelatedLocation';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **ChatReportReasonFake** *(chatReportReasonFake)* - child of ChatReportReason
///
/// The chat represents a fake account.
final class ChatReportReasonFake extends ChatReportReason {
  
  /// **ChatReportReasonFake** *(chatReportReasonFake)* - child of ChatReportReason
  ///
  /// The chat represents a fake account.
  const ChatReportReasonFake();
  
  /// Parse from a json
  factory ChatReportReasonFake.fromJson(Map<String, dynamic> json) => const ChatReportReasonFake();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  ChatReportReasonFake copyWith() => const ChatReportReasonFake();

  static const String objectType = 'chatReportReasonFake';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **ChatReportReasonIllegalDrugs** *(chatReportReasonIllegalDrugs)* - child of ChatReportReason
///
/// The chat has illegal drugs related content.
final class ChatReportReasonIllegalDrugs extends ChatReportReason {
  
  /// **ChatReportReasonIllegalDrugs** *(chatReportReasonIllegalDrugs)* - child of ChatReportReason
  ///
  /// The chat has illegal drugs related content.
  const ChatReportReasonIllegalDrugs();
  
  /// Parse from a json
  factory ChatReportReasonIllegalDrugs.fromJson(Map<String, dynamic> json) => const ChatReportReasonIllegalDrugs();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  ChatReportReasonIllegalDrugs copyWith() => const ChatReportReasonIllegalDrugs();

  static const String objectType = 'chatReportReasonIllegalDrugs';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **ChatReportReasonPersonalDetails** *(chatReportReasonPersonalDetails)* - child of ChatReportReason
///
/// The chat contains messages with personal details.
final class ChatReportReasonPersonalDetails extends ChatReportReason {
  
  /// **ChatReportReasonPersonalDetails** *(chatReportReasonPersonalDetails)* - child of ChatReportReason
  ///
  /// The chat contains messages with personal details.
  const ChatReportReasonPersonalDetails();
  
  /// Parse from a json
  factory ChatReportReasonPersonalDetails.fromJson(Map<String, dynamic> json) => const ChatReportReasonPersonalDetails();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  ChatReportReasonPersonalDetails copyWith() => const ChatReportReasonPersonalDetails();

  static const String objectType = 'chatReportReasonPersonalDetails';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **ChatReportReasonCustom** *(chatReportReasonCustom)* - child of ChatReportReason
///
/// A custom reason provided by the user.
final class ChatReportReasonCustom extends ChatReportReason {
  
  /// **ChatReportReasonCustom** *(chatReportReasonCustom)* - child of ChatReportReason
  ///
  /// A custom reason provided by the user.
  const ChatReportReasonCustom();
  
  /// Parse from a json
  factory ChatReportReasonCustom.fromJson(Map<String, dynamic> json) => const ChatReportReasonCustom();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  ChatReportReasonCustom copyWith() => const ChatReportReasonCustom();

  static const String objectType = 'chatReportReasonCustom';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

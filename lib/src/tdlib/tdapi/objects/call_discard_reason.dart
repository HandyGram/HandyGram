part of '../tdapi.dart';

/// **CallDiscardReason** *(callDiscardReason)* - parent
  ///
  /// Describes the reason why a call was discarded.
class CallDiscardReason extends TdObject {
  
  /// **CallDiscardReason** *(callDiscardReason)* - parent
  ///
  /// Describes the reason why a call was discarded.
  const CallDiscardReason();
  
  /// a CallDiscardReason return type can be :
  /// * [CallDiscardReasonEmpty]
  /// * [CallDiscardReasonMissed]
  /// * [CallDiscardReasonDeclined]
  /// * [CallDiscardReasonDisconnected]
  /// * [CallDiscardReasonHungUp]
  factory CallDiscardReason.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case CallDiscardReasonEmpty.constructor:
        return CallDiscardReasonEmpty.fromJson(json);
      case CallDiscardReasonMissed.constructor:
        return CallDiscardReasonMissed.fromJson(json);
      case CallDiscardReasonDeclined.constructor:
        return CallDiscardReasonDeclined.fromJson(json);
      case CallDiscardReasonDisconnected.constructor:
        return CallDiscardReasonDisconnected.fromJson(json);
      case CallDiscardReasonHungUp.constructor:
        return CallDiscardReasonHungUp.fromJson(json);
      default:
        return const CallDiscardReason();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  CallDiscardReason copyWith() => const CallDiscardReason();

  static const String constructor = 'callDiscardReason';
  
  @override
  String getConstructor() => constructor;
}


/// **CallDiscardReasonEmpty** *(callDiscardReasonEmpty)* - child of CallDiscardReason
  ///
  /// The call wasn't discarded, or the reason is unknown.
class CallDiscardReasonEmpty extends CallDiscardReason {
  
  /// **CallDiscardReasonEmpty** *(callDiscardReasonEmpty)* - child of CallDiscardReason
  ///
  /// The call wasn't discarded, or the reason is unknown.
  const CallDiscardReasonEmpty();
  
  /// Parse from a json
  factory CallDiscardReasonEmpty.fromJson(Map<String, dynamic> json) => const CallDiscardReasonEmpty();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  CallDiscardReasonEmpty copyWith() => const CallDiscardReasonEmpty();

  static const String constructor = 'callDiscardReasonEmpty';
  
  @override
  String getConstructor() => constructor;
}


/// **CallDiscardReasonMissed** *(callDiscardReasonMissed)* - child of CallDiscardReason
  ///
  /// The call was ended before the conversation started. It was canceled by the caller or missed by the other party.
class CallDiscardReasonMissed extends CallDiscardReason {
  
  /// **CallDiscardReasonMissed** *(callDiscardReasonMissed)* - child of CallDiscardReason
  ///
  /// The call was ended before the conversation started. It was canceled by the caller or missed by the other party.
  const CallDiscardReasonMissed();
  
  /// Parse from a json
  factory CallDiscardReasonMissed.fromJson(Map<String, dynamic> json) => const CallDiscardReasonMissed();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  CallDiscardReasonMissed copyWith() => const CallDiscardReasonMissed();

  static const String constructor = 'callDiscardReasonMissed';
  
  @override
  String getConstructor() => constructor;
}


/// **CallDiscardReasonDeclined** *(callDiscardReasonDeclined)* - child of CallDiscardReason
  ///
  /// The call was ended before the conversation started. It was declined by the other party.
class CallDiscardReasonDeclined extends CallDiscardReason {
  
  /// **CallDiscardReasonDeclined** *(callDiscardReasonDeclined)* - child of CallDiscardReason
  ///
  /// The call was ended before the conversation started. It was declined by the other party.
  const CallDiscardReasonDeclined();
  
  /// Parse from a json
  factory CallDiscardReasonDeclined.fromJson(Map<String, dynamic> json) => const CallDiscardReasonDeclined();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  CallDiscardReasonDeclined copyWith() => const CallDiscardReasonDeclined();

  static const String constructor = 'callDiscardReasonDeclined';
  
  @override
  String getConstructor() => constructor;
}


/// **CallDiscardReasonDisconnected** *(callDiscardReasonDisconnected)* - child of CallDiscardReason
  ///
  /// The call was ended during the conversation because the users were disconnected.
class CallDiscardReasonDisconnected extends CallDiscardReason {
  
  /// **CallDiscardReasonDisconnected** *(callDiscardReasonDisconnected)* - child of CallDiscardReason
  ///
  /// The call was ended during the conversation because the users were disconnected.
  const CallDiscardReasonDisconnected();
  
  /// Parse from a json
  factory CallDiscardReasonDisconnected.fromJson(Map<String, dynamic> json) => const CallDiscardReasonDisconnected();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  CallDiscardReasonDisconnected copyWith() => const CallDiscardReasonDisconnected();

  static const String constructor = 'callDiscardReasonDisconnected';
  
  @override
  String getConstructor() => constructor;
}


/// **CallDiscardReasonHungUp** *(callDiscardReasonHungUp)* - child of CallDiscardReason
  ///
  /// The call was ended because one of the parties hung up.
class CallDiscardReasonHungUp extends CallDiscardReason {
  
  /// **CallDiscardReasonHungUp** *(callDiscardReasonHungUp)* - child of CallDiscardReason
  ///
  /// The call was ended because one of the parties hung up.
  const CallDiscardReasonHungUp();
  
  /// Parse from a json
  factory CallDiscardReasonHungUp.fromJson(Map<String, dynamic> json) => const CallDiscardReasonHungUp();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  CallDiscardReasonHungUp copyWith() => const CallDiscardReasonHungUp();

  static const String constructor = 'callDiscardReasonHungUp';
  
  @override
  String getConstructor() => constructor;
}

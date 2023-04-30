part of '../tdapi.dart';

/// **CallProblem** *(callProblem)* - parent
  ///
  /// Describes the exact type of a problem with a call.
class CallProblem extends TdObject {
  
  /// **CallProblem** *(callProblem)* - parent
  ///
  /// Describes the exact type of a problem with a call.
  const CallProblem();
  
  /// a CallProblem return type can be :
  /// * [CallProblemEcho]
  /// * [CallProblemNoise]
  /// * [CallProblemInterruptions]
  /// * [CallProblemDistortedSpeech]
  /// * [CallProblemSilentLocal]
  /// * [CallProblemSilentRemote]
  /// * [CallProblemDropped]
  /// * [CallProblemDistortedVideo]
  /// * [CallProblemPixelatedVideo]
  factory CallProblem.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case CallProblemEcho.constructor:
        return CallProblemEcho.fromJson(json);
      case CallProblemNoise.constructor:
        return CallProblemNoise.fromJson(json);
      case CallProblemInterruptions.constructor:
        return CallProblemInterruptions.fromJson(json);
      case CallProblemDistortedSpeech.constructor:
        return CallProblemDistortedSpeech.fromJson(json);
      case CallProblemSilentLocal.constructor:
        return CallProblemSilentLocal.fromJson(json);
      case CallProblemSilentRemote.constructor:
        return CallProblemSilentRemote.fromJson(json);
      case CallProblemDropped.constructor:
        return CallProblemDropped.fromJson(json);
      case CallProblemDistortedVideo.constructor:
        return CallProblemDistortedVideo.fromJson(json);
      case CallProblemPixelatedVideo.constructor:
        return CallProblemPixelatedVideo.fromJson(json);
      default:
        return const CallProblem();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  CallProblem copyWith() => const CallProblem();

  static const String constructor = 'callProblem';
  
  @override
  String getConstructor() => constructor;
}


/// **CallProblemEcho** *(callProblemEcho)* - child of CallProblem
  ///
  /// The user heard their own voice.
class CallProblemEcho extends CallProblem {
  
  /// **CallProblemEcho** *(callProblemEcho)* - child of CallProblem
  ///
  /// The user heard their own voice.
  const CallProblemEcho();
  
  /// Parse from a json
  factory CallProblemEcho.fromJson(Map<String, dynamic> json) => const CallProblemEcho();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  CallProblemEcho copyWith() => const CallProblemEcho();

  static const String constructor = 'callProblemEcho';
  
  @override
  String getConstructor() => constructor;
}


/// **CallProblemNoise** *(callProblemNoise)* - child of CallProblem
  ///
  /// The user heard background noise.
class CallProblemNoise extends CallProblem {
  
  /// **CallProblemNoise** *(callProblemNoise)* - child of CallProblem
  ///
  /// The user heard background noise.
  const CallProblemNoise();
  
  /// Parse from a json
  factory CallProblemNoise.fromJson(Map<String, dynamic> json) => const CallProblemNoise();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  CallProblemNoise copyWith() => const CallProblemNoise();

  static const String constructor = 'callProblemNoise';
  
  @override
  String getConstructor() => constructor;
}


/// **CallProblemInterruptions** *(callProblemInterruptions)* - child of CallProblem
  ///
  /// The other side kept disappearing.
class CallProblemInterruptions extends CallProblem {
  
  /// **CallProblemInterruptions** *(callProblemInterruptions)* - child of CallProblem
  ///
  /// The other side kept disappearing.
  const CallProblemInterruptions();
  
  /// Parse from a json
  factory CallProblemInterruptions.fromJson(Map<String, dynamic> json) => const CallProblemInterruptions();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  CallProblemInterruptions copyWith() => const CallProblemInterruptions();

  static const String constructor = 'callProblemInterruptions';
  
  @override
  String getConstructor() => constructor;
}


/// **CallProblemDistortedSpeech** *(callProblemDistortedSpeech)* - child of CallProblem
  ///
  /// The speech was distorted.
class CallProblemDistortedSpeech extends CallProblem {
  
  /// **CallProblemDistortedSpeech** *(callProblemDistortedSpeech)* - child of CallProblem
  ///
  /// The speech was distorted.
  const CallProblemDistortedSpeech();
  
  /// Parse from a json
  factory CallProblemDistortedSpeech.fromJson(Map<String, dynamic> json) => const CallProblemDistortedSpeech();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  CallProblemDistortedSpeech copyWith() => const CallProblemDistortedSpeech();

  static const String constructor = 'callProblemDistortedSpeech';
  
  @override
  String getConstructor() => constructor;
}


/// **CallProblemSilentLocal** *(callProblemSilentLocal)* - child of CallProblem
  ///
  /// The user couldn't hear the other side.
class CallProblemSilentLocal extends CallProblem {
  
  /// **CallProblemSilentLocal** *(callProblemSilentLocal)* - child of CallProblem
  ///
  /// The user couldn't hear the other side.
  const CallProblemSilentLocal();
  
  /// Parse from a json
  factory CallProblemSilentLocal.fromJson(Map<String, dynamic> json) => const CallProblemSilentLocal();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  CallProblemSilentLocal copyWith() => const CallProblemSilentLocal();

  static const String constructor = 'callProblemSilentLocal';
  
  @override
  String getConstructor() => constructor;
}


/// **CallProblemSilentRemote** *(callProblemSilentRemote)* - child of CallProblem
  ///
  /// The other side couldn't hear the user.
class CallProblemSilentRemote extends CallProblem {
  
  /// **CallProblemSilentRemote** *(callProblemSilentRemote)* - child of CallProblem
  ///
  /// The other side couldn't hear the user.
  const CallProblemSilentRemote();
  
  /// Parse from a json
  factory CallProblemSilentRemote.fromJson(Map<String, dynamic> json) => const CallProblemSilentRemote();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  CallProblemSilentRemote copyWith() => const CallProblemSilentRemote();

  static const String constructor = 'callProblemSilentRemote';
  
  @override
  String getConstructor() => constructor;
}


/// **CallProblemDropped** *(callProblemDropped)* - child of CallProblem
  ///
  /// The call ended unexpectedly.
class CallProblemDropped extends CallProblem {
  
  /// **CallProblemDropped** *(callProblemDropped)* - child of CallProblem
  ///
  /// The call ended unexpectedly.
  const CallProblemDropped();
  
  /// Parse from a json
  factory CallProblemDropped.fromJson(Map<String, dynamic> json) => const CallProblemDropped();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  CallProblemDropped copyWith() => const CallProblemDropped();

  static const String constructor = 'callProblemDropped';
  
  @override
  String getConstructor() => constructor;
}


/// **CallProblemDistortedVideo** *(callProblemDistortedVideo)* - child of CallProblem
  ///
  /// The video was distorted.
class CallProblemDistortedVideo extends CallProblem {
  
  /// **CallProblemDistortedVideo** *(callProblemDistortedVideo)* - child of CallProblem
  ///
  /// The video was distorted.
  const CallProblemDistortedVideo();
  
  /// Parse from a json
  factory CallProblemDistortedVideo.fromJson(Map<String, dynamic> json) => const CallProblemDistortedVideo();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  CallProblemDistortedVideo copyWith() => const CallProblemDistortedVideo();

  static const String constructor = 'callProblemDistortedVideo';
  
  @override
  String getConstructor() => constructor;
}


/// **CallProblemPixelatedVideo** *(callProblemPixelatedVideo)* - child of CallProblem
  ///
  /// The video was pixelated.
class CallProblemPixelatedVideo extends CallProblem {
  
  /// **CallProblemPixelatedVideo** *(callProblemPixelatedVideo)* - child of CallProblem
  ///
  /// The video was pixelated.
  const CallProblemPixelatedVideo();
  
  /// Parse from a json
  factory CallProblemPixelatedVideo.fromJson(Map<String, dynamic> json) => const CallProblemPixelatedVideo();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  CallProblemPixelatedVideo copyWith() => const CallProblemPixelatedVideo();

  static const String constructor = 'callProblemPixelatedVideo';
  
  @override
  String getConstructor() => constructor;
}

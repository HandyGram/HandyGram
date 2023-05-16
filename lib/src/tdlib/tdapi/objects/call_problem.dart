part of '../tdapi.dart';

/// **CallProblem** *(callProblem)* - parent
///
/// Describes the exact type of a problem with a call.
sealed class CallProblem extends TdObject {
  
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
      case CallProblemEcho.objectType:
        return CallProblemEcho.fromJson(json);
      case CallProblemNoise.objectType:
        return CallProblemNoise.fromJson(json);
      case CallProblemInterruptions.objectType:
        return CallProblemInterruptions.fromJson(json);
      case CallProblemDistortedSpeech.objectType:
        return CallProblemDistortedSpeech.fromJson(json);
      case CallProblemSilentLocal.objectType:
        return CallProblemSilentLocal.fromJson(json);
      case CallProblemSilentRemote.objectType:
        return CallProblemSilentRemote.fromJson(json);
      case CallProblemDropped.objectType:
        return CallProblemDropped.fromJson(json);
      case CallProblemDistortedVideo.objectType:
        return CallProblemDistortedVideo.fromJson(json);
      case CallProblemPixelatedVideo.objectType:
        return CallProblemPixelatedVideo.fromJson(json);
      default:
        throw FormatException(
          "Unknown object ${json["@type"]} (expected child of CallProblem)",
          json,
        );
    }
  }
  
  @override
  Map<String, dynamic> toJson();

  
  CallProblem copyWith();

  static const String objectType = 'callProblem';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **CallProblemEcho** *(callProblemEcho)* - child of CallProblem
///
/// The user heard their own voice.
final class CallProblemEcho extends CallProblem {
  
  /// **CallProblemEcho** *(callProblemEcho)* - child of CallProblem
  ///
  /// The user heard their own voice.
  const CallProblemEcho();
  
  /// Parse from a json
  factory CallProblemEcho.fromJson(Map<String, dynamic> json) => const CallProblemEcho();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  CallProblemEcho copyWith() => const CallProblemEcho();

  static const String objectType = 'callProblemEcho';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **CallProblemNoise** *(callProblemNoise)* - child of CallProblem
///
/// The user heard background noise.
final class CallProblemNoise extends CallProblem {
  
  /// **CallProblemNoise** *(callProblemNoise)* - child of CallProblem
  ///
  /// The user heard background noise.
  const CallProblemNoise();
  
  /// Parse from a json
  factory CallProblemNoise.fromJson(Map<String, dynamic> json) => const CallProblemNoise();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  CallProblemNoise copyWith() => const CallProblemNoise();

  static const String objectType = 'callProblemNoise';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **CallProblemInterruptions** *(callProblemInterruptions)* - child of CallProblem
///
/// The other side kept disappearing.
final class CallProblemInterruptions extends CallProblem {
  
  /// **CallProblemInterruptions** *(callProblemInterruptions)* - child of CallProblem
  ///
  /// The other side kept disappearing.
  const CallProblemInterruptions();
  
  /// Parse from a json
  factory CallProblemInterruptions.fromJson(Map<String, dynamic> json) => const CallProblemInterruptions();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  CallProblemInterruptions copyWith() => const CallProblemInterruptions();

  static const String objectType = 'callProblemInterruptions';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **CallProblemDistortedSpeech** *(callProblemDistortedSpeech)* - child of CallProblem
///
/// The speech was distorted.
final class CallProblemDistortedSpeech extends CallProblem {
  
  /// **CallProblemDistortedSpeech** *(callProblemDistortedSpeech)* - child of CallProblem
  ///
  /// The speech was distorted.
  const CallProblemDistortedSpeech();
  
  /// Parse from a json
  factory CallProblemDistortedSpeech.fromJson(Map<String, dynamic> json) => const CallProblemDistortedSpeech();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  CallProblemDistortedSpeech copyWith() => const CallProblemDistortedSpeech();

  static const String objectType = 'callProblemDistortedSpeech';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **CallProblemSilentLocal** *(callProblemSilentLocal)* - child of CallProblem
///
/// The user couldn't hear the other side.
final class CallProblemSilentLocal extends CallProblem {
  
  /// **CallProblemSilentLocal** *(callProblemSilentLocal)* - child of CallProblem
  ///
  /// The user couldn't hear the other side.
  const CallProblemSilentLocal();
  
  /// Parse from a json
  factory CallProblemSilentLocal.fromJson(Map<String, dynamic> json) => const CallProblemSilentLocal();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  CallProblemSilentLocal copyWith() => const CallProblemSilentLocal();

  static const String objectType = 'callProblemSilentLocal';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **CallProblemSilentRemote** *(callProblemSilentRemote)* - child of CallProblem
///
/// The other side couldn't hear the user.
final class CallProblemSilentRemote extends CallProblem {
  
  /// **CallProblemSilentRemote** *(callProblemSilentRemote)* - child of CallProblem
  ///
  /// The other side couldn't hear the user.
  const CallProblemSilentRemote();
  
  /// Parse from a json
  factory CallProblemSilentRemote.fromJson(Map<String, dynamic> json) => const CallProblemSilentRemote();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  CallProblemSilentRemote copyWith() => const CallProblemSilentRemote();

  static const String objectType = 'callProblemSilentRemote';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **CallProblemDropped** *(callProblemDropped)* - child of CallProblem
///
/// The call ended unexpectedly.
final class CallProblemDropped extends CallProblem {
  
  /// **CallProblemDropped** *(callProblemDropped)* - child of CallProblem
  ///
  /// The call ended unexpectedly.
  const CallProblemDropped();
  
  /// Parse from a json
  factory CallProblemDropped.fromJson(Map<String, dynamic> json) => const CallProblemDropped();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  CallProblemDropped copyWith() => const CallProblemDropped();

  static const String objectType = 'callProblemDropped';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **CallProblemDistortedVideo** *(callProblemDistortedVideo)* - child of CallProblem
///
/// The video was distorted.
final class CallProblemDistortedVideo extends CallProblem {
  
  /// **CallProblemDistortedVideo** *(callProblemDistortedVideo)* - child of CallProblem
  ///
  /// The video was distorted.
  const CallProblemDistortedVideo();
  
  /// Parse from a json
  factory CallProblemDistortedVideo.fromJson(Map<String, dynamic> json) => const CallProblemDistortedVideo();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  CallProblemDistortedVideo copyWith() => const CallProblemDistortedVideo();

  static const String objectType = 'callProblemDistortedVideo';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **CallProblemPixelatedVideo** *(callProblemPixelatedVideo)* - child of CallProblem
///
/// The video was pixelated.
final class CallProblemPixelatedVideo extends CallProblem {
  
  /// **CallProblemPixelatedVideo** *(callProblemPixelatedVideo)* - child of CallProblem
  ///
  /// The video was pixelated.
  const CallProblemPixelatedVideo();
  
  /// Parse from a json
  factory CallProblemPixelatedVideo.fromJson(Map<String, dynamic> json) => const CallProblemPixelatedVideo();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  CallProblemPixelatedVideo copyWith() => const CallProblemPixelatedVideo();

  static const String objectType = 'callProblemPixelatedVideo';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

part of '../tdapi.dart';

/// **MaskPoint** *(maskPoint)* - parent
///
/// Part of the face, relative to which a mask is placed.
sealed class MaskPoint extends TdObject {
  
  /// **MaskPoint** *(maskPoint)* - parent
  ///
  /// Part of the face, relative to which a mask is placed.
  const MaskPoint();
  
  /// a MaskPoint return type can be :
  /// * [MaskPointForehead]
  /// * [MaskPointEyes]
  /// * [MaskPointMouth]
  /// * [MaskPointChin]
  factory MaskPoint.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case MaskPointForehead.objectType:
        return MaskPointForehead.fromJson(json);
      case MaskPointEyes.objectType:
        return MaskPointEyes.fromJson(json);
      case MaskPointMouth.objectType:
        return MaskPointMouth.fromJson(json);
      case MaskPointChin.objectType:
        return MaskPointChin.fromJson(json);
      default:
        throw FormatException(
          "Unknown object ${json["@type"]} (expected child of MaskPoint)",
          json,
        );
    }
  }
  
  @override
  Map<String, dynamic> toJson();

  
  MaskPoint copyWith();

  static const String objectType = 'maskPoint';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **MaskPointForehead** *(maskPointForehead)* - child of MaskPoint
///
/// The mask is placed relatively to the forehead.
final class MaskPointForehead extends MaskPoint {
  
  /// **MaskPointForehead** *(maskPointForehead)* - child of MaskPoint
  ///
  /// The mask is placed relatively to the forehead.
  const MaskPointForehead();
  
  /// Parse from a json
  factory MaskPointForehead.fromJson(Map<String, dynamic> json) => const MaskPointForehead();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  MaskPointForehead copyWith() => const MaskPointForehead();

  static const String objectType = 'maskPointForehead';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **MaskPointEyes** *(maskPointEyes)* - child of MaskPoint
///
/// The mask is placed relatively to the eyes.
final class MaskPointEyes extends MaskPoint {
  
  /// **MaskPointEyes** *(maskPointEyes)* - child of MaskPoint
  ///
  /// The mask is placed relatively to the eyes.
  const MaskPointEyes();
  
  /// Parse from a json
  factory MaskPointEyes.fromJson(Map<String, dynamic> json) => const MaskPointEyes();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  MaskPointEyes copyWith() => const MaskPointEyes();

  static const String objectType = 'maskPointEyes';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **MaskPointMouth** *(maskPointMouth)* - child of MaskPoint
///
/// The mask is placed relatively to the mouth.
final class MaskPointMouth extends MaskPoint {
  
  /// **MaskPointMouth** *(maskPointMouth)* - child of MaskPoint
  ///
  /// The mask is placed relatively to the mouth.
  const MaskPointMouth();
  
  /// Parse from a json
  factory MaskPointMouth.fromJson(Map<String, dynamic> json) => const MaskPointMouth();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  MaskPointMouth copyWith() => const MaskPointMouth();

  static const String objectType = 'maskPointMouth';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **MaskPointChin** *(maskPointChin)* - child of MaskPoint
///
/// The mask is placed relatively to the chin.
final class MaskPointChin extends MaskPoint {
  
  /// **MaskPointChin** *(maskPointChin)* - child of MaskPoint
  ///
  /// The mask is placed relatively to the chin.
  const MaskPointChin();
  
  /// Parse from a json
  factory MaskPointChin.fromJson(Map<String, dynamic> json) => const MaskPointChin();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  MaskPointChin copyWith() => const MaskPointChin();

  static const String objectType = 'maskPointChin';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

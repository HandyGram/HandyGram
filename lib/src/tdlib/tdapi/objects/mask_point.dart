part of '../tdapi.dart';

/// **MaskPoint** *(maskPoint)* - parent
  ///
  /// Part of the face, relative to which a mask is placed.
class MaskPoint extends TdObject {
  
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
      case MaskPointForehead.constructor:
        return MaskPointForehead.fromJson(json);
      case MaskPointEyes.constructor:
        return MaskPointEyes.fromJson(json);
      case MaskPointMouth.constructor:
        return MaskPointMouth.fromJson(json);
      case MaskPointChin.constructor:
        return MaskPointChin.fromJson(json);
      default:
        return const MaskPoint();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  MaskPoint copyWith() => const MaskPoint();

  static const String constructor = 'maskPoint';
  
  @override
  String getConstructor() => constructor;
}


/// **MaskPointForehead** *(maskPointForehead)* - child of MaskPoint
  ///
  /// The mask is placed relatively to the forehead.
class MaskPointForehead extends MaskPoint {
  
  /// **MaskPointForehead** *(maskPointForehead)* - child of MaskPoint
  ///
  /// The mask is placed relatively to the forehead.
  const MaskPointForehead();
  
  /// Parse from a json
  factory MaskPointForehead.fromJson(Map<String, dynamic> json) => const MaskPointForehead();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  MaskPointForehead copyWith() => const MaskPointForehead();

  static const String constructor = 'maskPointForehead';
  
  @override
  String getConstructor() => constructor;
}


/// **MaskPointEyes** *(maskPointEyes)* - child of MaskPoint
  ///
  /// The mask is placed relatively to the eyes.
class MaskPointEyes extends MaskPoint {
  
  /// **MaskPointEyes** *(maskPointEyes)* - child of MaskPoint
  ///
  /// The mask is placed relatively to the eyes.
  const MaskPointEyes();
  
  /// Parse from a json
  factory MaskPointEyes.fromJson(Map<String, dynamic> json) => const MaskPointEyes();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  MaskPointEyes copyWith() => const MaskPointEyes();

  static const String constructor = 'maskPointEyes';
  
  @override
  String getConstructor() => constructor;
}


/// **MaskPointMouth** *(maskPointMouth)* - child of MaskPoint
  ///
  /// The mask is placed relatively to the mouth.
class MaskPointMouth extends MaskPoint {
  
  /// **MaskPointMouth** *(maskPointMouth)* - child of MaskPoint
  ///
  /// The mask is placed relatively to the mouth.
  const MaskPointMouth();
  
  /// Parse from a json
  factory MaskPointMouth.fromJson(Map<String, dynamic> json) => const MaskPointMouth();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  MaskPointMouth copyWith() => const MaskPointMouth();

  static const String constructor = 'maskPointMouth';
  
  @override
  String getConstructor() => constructor;
}


/// **MaskPointChin** *(maskPointChin)* - child of MaskPoint
  ///
  /// The mask is placed relatively to the chin.
class MaskPointChin extends MaskPoint {
  
  /// **MaskPointChin** *(maskPointChin)* - child of MaskPoint
  ///
  /// The mask is placed relatively to the chin.
  const MaskPointChin();
  
  /// Parse from a json
  factory MaskPointChin.fromJson(Map<String, dynamic> json) => const MaskPointChin();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  MaskPointChin copyWith() => const MaskPointChin();

  static const String constructor = 'maskPointChin';
  
  @override
  String getConstructor() => constructor;
}

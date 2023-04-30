part of '../tdapi.dart';

/// **GroupCallVideoQuality** *(groupCallVideoQuality)* - parent
  ///
  /// Describes the quality of a group call video.
class GroupCallVideoQuality extends TdObject {
  
  /// **GroupCallVideoQuality** *(groupCallVideoQuality)* - parent
  ///
  /// Describes the quality of a group call video.
  const GroupCallVideoQuality();
  
  /// a GroupCallVideoQuality return type can be :
  /// * [GroupCallVideoQualityThumbnail]
  /// * [GroupCallVideoQualityMedium]
  /// * [GroupCallVideoQualityFull]
  factory GroupCallVideoQuality.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case GroupCallVideoQualityThumbnail.constructor:
        return GroupCallVideoQualityThumbnail.fromJson(json);
      case GroupCallVideoQualityMedium.constructor:
        return GroupCallVideoQualityMedium.fromJson(json);
      case GroupCallVideoQualityFull.constructor:
        return GroupCallVideoQualityFull.fromJson(json);
      default:
        return const GroupCallVideoQuality();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  GroupCallVideoQuality copyWith() => const GroupCallVideoQuality();

  static const String constructor = 'groupCallVideoQuality';
  
  @override
  String getConstructor() => constructor;
}


/// **GroupCallVideoQualityThumbnail** *(groupCallVideoQualityThumbnail)* - child of GroupCallVideoQuality
  ///
  /// The worst available video quality.
class GroupCallVideoQualityThumbnail extends GroupCallVideoQuality {
  
  /// **GroupCallVideoQualityThumbnail** *(groupCallVideoQualityThumbnail)* - child of GroupCallVideoQuality
  ///
  /// The worst available video quality.
  const GroupCallVideoQualityThumbnail();
  
  /// Parse from a json
  factory GroupCallVideoQualityThumbnail.fromJson(Map<String, dynamic> json) => const GroupCallVideoQualityThumbnail();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  GroupCallVideoQualityThumbnail copyWith() => const GroupCallVideoQualityThumbnail();

  static const String constructor = 'groupCallVideoQualityThumbnail';
  
  @override
  String getConstructor() => constructor;
}


/// **GroupCallVideoQualityMedium** *(groupCallVideoQualityMedium)* - child of GroupCallVideoQuality
  ///
  /// The medium video quality.
class GroupCallVideoQualityMedium extends GroupCallVideoQuality {
  
  /// **GroupCallVideoQualityMedium** *(groupCallVideoQualityMedium)* - child of GroupCallVideoQuality
  ///
  /// The medium video quality.
  const GroupCallVideoQualityMedium();
  
  /// Parse from a json
  factory GroupCallVideoQualityMedium.fromJson(Map<String, dynamic> json) => const GroupCallVideoQualityMedium();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  GroupCallVideoQualityMedium copyWith() => const GroupCallVideoQualityMedium();

  static const String constructor = 'groupCallVideoQualityMedium';
  
  @override
  String getConstructor() => constructor;
}


/// **GroupCallVideoQualityFull** *(groupCallVideoQualityFull)* - child of GroupCallVideoQuality
  ///
  /// The best available video quality.
class GroupCallVideoQualityFull extends GroupCallVideoQuality {
  
  /// **GroupCallVideoQualityFull** *(groupCallVideoQualityFull)* - child of GroupCallVideoQuality
  ///
  /// The best available video quality.
  const GroupCallVideoQualityFull();
  
  /// Parse from a json
  factory GroupCallVideoQualityFull.fromJson(Map<String, dynamic> json) => const GroupCallVideoQualityFull();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  GroupCallVideoQualityFull copyWith() => const GroupCallVideoQualityFull();

  static const String constructor = 'groupCallVideoQualityFull';
  
  @override
  String getConstructor() => constructor;
}

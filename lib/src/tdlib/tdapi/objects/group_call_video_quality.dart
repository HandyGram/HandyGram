part of '../tdapi.dart';

/// **GroupCallVideoQuality** *(groupCallVideoQuality)* - parent
///
/// Describes the quality of a group call video.
sealed class GroupCallVideoQuality extends TdObject {
  
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
      case GroupCallVideoQualityThumbnail.objectType:
        return GroupCallVideoQualityThumbnail.fromJson(json);
      case GroupCallVideoQualityMedium.objectType:
        return GroupCallVideoQualityMedium.fromJson(json);
      case GroupCallVideoQualityFull.objectType:
        return GroupCallVideoQualityFull.fromJson(json);
      default:
        throw FormatException(
          "Unknown object ${json["@type"]} (expected child of GroupCallVideoQuality)",
          json,
        );
    }
  }
  
  @override
  Map<String, dynamic> toJson();

  
  GroupCallVideoQuality copyWith();

  static const String objectType = 'groupCallVideoQuality';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **GroupCallVideoQualityThumbnail** *(groupCallVideoQualityThumbnail)* - child of GroupCallVideoQuality
///
/// The worst available video quality.
final class GroupCallVideoQualityThumbnail extends GroupCallVideoQuality {
  
  /// **GroupCallVideoQualityThumbnail** *(groupCallVideoQualityThumbnail)* - child of GroupCallVideoQuality
  ///
  /// The worst available video quality.
  const GroupCallVideoQualityThumbnail();
  
  /// Parse from a json
  factory GroupCallVideoQualityThumbnail.fromJson(Map<String, dynamic> json) => const GroupCallVideoQualityThumbnail();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  GroupCallVideoQualityThumbnail copyWith() => const GroupCallVideoQualityThumbnail();

  static const String objectType = 'groupCallVideoQualityThumbnail';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **GroupCallVideoQualityMedium** *(groupCallVideoQualityMedium)* - child of GroupCallVideoQuality
///
/// The medium video quality.
final class GroupCallVideoQualityMedium extends GroupCallVideoQuality {
  
  /// **GroupCallVideoQualityMedium** *(groupCallVideoQualityMedium)* - child of GroupCallVideoQuality
  ///
  /// The medium video quality.
  const GroupCallVideoQualityMedium();
  
  /// Parse from a json
  factory GroupCallVideoQualityMedium.fromJson(Map<String, dynamic> json) => const GroupCallVideoQualityMedium();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  GroupCallVideoQualityMedium copyWith() => const GroupCallVideoQualityMedium();

  static const String objectType = 'groupCallVideoQualityMedium';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **GroupCallVideoQualityFull** *(groupCallVideoQualityFull)* - child of GroupCallVideoQuality
///
/// The best available video quality.
final class GroupCallVideoQualityFull extends GroupCallVideoQuality {
  
  /// **GroupCallVideoQualityFull** *(groupCallVideoQualityFull)* - child of GroupCallVideoQuality
  ///
  /// The best available video quality.
  const GroupCallVideoQualityFull();
  
  /// Parse from a json
  factory GroupCallVideoQualityFull.fromJson(Map<String, dynamic> json) => const GroupCallVideoQualityFull();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  GroupCallVideoQualityFull copyWith() => const GroupCallVideoQualityFull();

  static const String objectType = 'groupCallVideoQualityFull';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

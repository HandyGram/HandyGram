part of '../tdapi.dart';

/// **PremiumSource** *(premiumSource)* - parent
///
/// Describes a source from which the Premium features screen is opened.
sealed class PremiumSource extends TdObject {
  
  /// **PremiumSource** *(premiumSource)* - parent
  ///
  /// Describes a source from which the Premium features screen is opened.
  const PremiumSource();
  
  /// a PremiumSource return type can be :
  /// * [PremiumSourceLimitExceeded]
  /// * [PremiumSourceFeature]
  /// * [PremiumSourceLink]
  /// * [PremiumSourceSettings]
  factory PremiumSource.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case PremiumSourceLimitExceeded.objectType:
        return PremiumSourceLimitExceeded.fromJson(json);
      case PremiumSourceFeature.objectType:
        return PremiumSourceFeature.fromJson(json);
      case PremiumSourceLink.objectType:
        return PremiumSourceLink.fromJson(json);
      case PremiumSourceSettings.objectType:
        return PremiumSourceSettings.fromJson(json);
      default:
        throw FormatException(
          "Unknown object ${json["@type"]} (expected child of PremiumSource)",
          json,
        );
    }
  }
  
  @override
  Map<String, dynamic> toJson();

  
  PremiumSource copyWith();

  static const String objectType = 'premiumSource';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **PremiumSourceLimitExceeded** *(premiumSourceLimitExceeded)* - child of PremiumSource
///
/// A limit was exceeded.
///
/// * [limitType]: Type of the exceeded limit.
final class PremiumSourceLimitExceeded extends PremiumSource {
  
  /// **PremiumSourceLimitExceeded** *(premiumSourceLimitExceeded)* - child of PremiumSource
  ///
  /// A limit was exceeded.
  ///
  /// * [limitType]: Type of the exceeded limit.
  const PremiumSourceLimitExceeded({
    required this.limitType,
  });
  
  /// Type of the exceeded limit
  final PremiumLimitType limitType;
  
  /// Parse from a json
  factory PremiumSourceLimitExceeded.fromJson(Map<String, dynamic> json) => PremiumSourceLimitExceeded(
    limitType: PremiumLimitType.fromJson(json['limit_type']),
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "limit_type": limitType.toJson(),
		};
	}

  
  @override
  PremiumSourceLimitExceeded copyWith({
    PremiumLimitType? limitType,
  }) => PremiumSourceLimitExceeded(
    limitType: limitType ?? this.limitType,
  );

  static const String objectType = 'premiumSourceLimitExceeded';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **PremiumSourceFeature** *(premiumSourceFeature)* - child of PremiumSource
///
/// A user tried to use a Premium feature.
///
/// * [feature]: The used feature.
final class PremiumSourceFeature extends PremiumSource {
  
  /// **PremiumSourceFeature** *(premiumSourceFeature)* - child of PremiumSource
  ///
  /// A user tried to use a Premium feature.
  ///
  /// * [feature]: The used feature.
  const PremiumSourceFeature({
    required this.feature,
  });
  
  /// The used feature
  final PremiumFeature feature;
  
  /// Parse from a json
  factory PremiumSourceFeature.fromJson(Map<String, dynamic> json) => PremiumSourceFeature(
    feature: PremiumFeature.fromJson(json['feature']),
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "feature": feature.toJson(),
		};
	}

  
  @override
  PremiumSourceFeature copyWith({
    PremiumFeature? feature,
  }) => PremiumSourceFeature(
    feature: feature ?? this.feature,
  );

  static const String objectType = 'premiumSourceFeature';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **PremiumSourceLink** *(premiumSourceLink)* - child of PremiumSource
///
/// A user opened an internal link of the type internalLinkTypePremiumFeatures.
///
/// * [referrer]: The referrer from the link.
final class PremiumSourceLink extends PremiumSource {
  
  /// **PremiumSourceLink** *(premiumSourceLink)* - child of PremiumSource
  ///
  /// A user opened an internal link of the type internalLinkTypePremiumFeatures.
  ///
  /// * [referrer]: The referrer from the link.
  const PremiumSourceLink({
    required this.referrer,
  });
  
  /// The referrer from the link
  final String referrer;
  
  /// Parse from a json
  factory PremiumSourceLink.fromJson(Map<String, dynamic> json) => PremiumSourceLink(
    referrer: json['referrer'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "referrer": referrer,
		};
	}

  
  @override
  PremiumSourceLink copyWith({
    String? referrer,
  }) => PremiumSourceLink(
    referrer: referrer ?? this.referrer,
  );

  static const String objectType = 'premiumSourceLink';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **PremiumSourceSettings** *(premiumSourceSettings)* - child of PremiumSource
///
/// A user opened the Premium features screen from settings.
final class PremiumSourceSettings extends PremiumSource {
  
  /// **PremiumSourceSettings** *(premiumSourceSettings)* - child of PremiumSource
  ///
  /// A user opened the Premium features screen from settings.
  const PremiumSourceSettings();
  
  /// Parse from a json
  factory PremiumSourceSettings.fromJson(Map<String, dynamic> json) => const PremiumSourceSettings();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  PremiumSourceSettings copyWith() => const PremiumSourceSettings();

  static const String objectType = 'premiumSourceSettings';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

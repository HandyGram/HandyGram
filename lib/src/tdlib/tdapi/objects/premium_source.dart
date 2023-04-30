part of '../tdapi.dart';

/// **PremiumSource** *(premiumSource)* - parent
  ///
  /// Describes a source from which the Premium features screen is opened.
class PremiumSource extends TdObject {
  
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
      case PremiumSourceLimitExceeded.constructor:
        return PremiumSourceLimitExceeded.fromJson(json);
      case PremiumSourceFeature.constructor:
        return PremiumSourceFeature.fromJson(json);
      case PremiumSourceLink.constructor:
        return PremiumSourceLink.fromJson(json);
      case PremiumSourceSettings.constructor:
        return PremiumSourceSettings.fromJson(json);
      default:
        return const PremiumSource();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  PremiumSource copyWith() => const PremiumSource();

  static const String constructor = 'premiumSource';
  
  @override
  String getConstructor() => constructor;
}


/// **PremiumSourceLimitExceeded** *(premiumSourceLimitExceeded)* - child of PremiumSource
  ///
  /// A limit was exceeded.
  ///
  /// * [limitType]: Type of the exceeded limit.
class PremiumSourceLimitExceeded extends PremiumSource {
  
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
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "limit_type": limitType.toJson(),
    };
  }
  
  @override
  PremiumSourceLimitExceeded copyWith({
    PremiumLimitType? limitType,
  }) => PremiumSourceLimitExceeded(
    limitType: limitType ?? this.limitType,
  );

  static const String constructor = 'premiumSourceLimitExceeded';
  
  @override
  String getConstructor() => constructor;
}


/// **PremiumSourceFeature** *(premiumSourceFeature)* - child of PremiumSource
  ///
  /// A user tried to use a Premium feature.
  ///
  /// * [feature]: The used feature.
class PremiumSourceFeature extends PremiumSource {
  
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
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "feature": feature.toJson(),
    };
  }
  
  @override
  PremiumSourceFeature copyWith({
    PremiumFeature? feature,
  }) => PremiumSourceFeature(
    feature: feature ?? this.feature,
  );

  static const String constructor = 'premiumSourceFeature';
  
  @override
  String getConstructor() => constructor;
}


/// **PremiumSourceLink** *(premiumSourceLink)* - child of PremiumSource
  ///
  /// A user opened an internal link of the type internalLinkTypePremiumFeatures.
  ///
  /// * [referrer]: The referrer from the link.
class PremiumSourceLink extends PremiumSource {
  
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
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "referrer": referrer,
    };
  }
  
  @override
  PremiumSourceLink copyWith({
    String? referrer,
  }) => PremiumSourceLink(
    referrer: referrer ?? this.referrer,
  );

  static const String constructor = 'premiumSourceLink';
  
  @override
  String getConstructor() => constructor;
}


/// **PremiumSourceSettings** *(premiumSourceSettings)* - child of PremiumSource
  ///
  /// A user opened the Premium features screen from settings.
class PremiumSourceSettings extends PremiumSource {
  
  /// **PremiumSourceSettings** *(premiumSourceSettings)* - child of PremiumSource
  ///
  /// A user opened the Premium features screen from settings.
  const PremiumSourceSettings();
  
  /// Parse from a json
  factory PremiumSourceSettings.fromJson(Map<String, dynamic> json) => const PremiumSourceSettings();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  PremiumSourceSettings copyWith() => const PremiumSourceSettings();

  static const String constructor = 'premiumSourceSettings';
  
  @override
  String getConstructor() => constructor;
}

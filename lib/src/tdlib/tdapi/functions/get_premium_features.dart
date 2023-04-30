part of '../tdapi.dart';

/// **GetPremiumFeatures** *(getPremiumFeatures)* - TDLib function
  ///
  /// Returns information about features, available to Premium users.
  ///
  /// * [source]: Source of the request; pass null if the method is called from some non-standard source *(optional)*.
  ///
  /// [PremiumFeatures] is returned on completion.
class GetPremiumFeatures extends TdFunction {
  
  /// **GetPremiumFeatures** *(getPremiumFeatures)* - TDLib function
  ///
  /// Returns information about features, available to Premium users.
  ///
  /// * [source]: Source of the request; pass null if the method is called from some non-standard source *(optional)*.
  ///
  /// [PremiumFeatures] is returned on completion.
  const GetPremiumFeatures({
    this.source,
  });
  
  /// Source of the request; pass null if the method is called from some non-standard source
  final PremiumSource? source;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "source": source?.toJson(),
      "@extra": extra,
    };
  }
  
  GetPremiumFeatures copyWith({
    PremiumSource? source,
  }) => GetPremiumFeatures(
    source: source ?? this.source,
  );

  static const String constructor = 'getPremiumFeatures';
  
  @override
  String getConstructor() => constructor;
}

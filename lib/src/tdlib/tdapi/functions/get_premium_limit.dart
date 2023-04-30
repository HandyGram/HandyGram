part of '../tdapi.dart';

/// **GetPremiumLimit** *(getPremiumLimit)* - TDLib function
  ///
  /// Returns information about a limit, increased for Premium users. Returns a 404 error if the limit is unknown.
  ///
  /// * [limitType]: Type of the limit.
  ///
  /// [PremiumLimit] is returned on completion.
class GetPremiumLimit extends TdFunction {
  
  /// **GetPremiumLimit** *(getPremiumLimit)* - TDLib function
  ///
  /// Returns information about a limit, increased for Premium users. Returns a 404 error if the limit is unknown.
  ///
  /// * [limitType]: Type of the limit.
  ///
  /// [PremiumLimit] is returned on completion.
  const GetPremiumLimit({
    required this.limitType,
  });
  
  /// Type of the limit
  final PremiumLimitType limitType;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "limit_type": limitType.toJson(),
      "@extra": extra,
    };
  }
  
  GetPremiumLimit copyWith({
    PremiumLimitType? limitType,
  }) => GetPremiumLimit(
    limitType: limitType ?? this.limitType,
  );

  static const String constructor = 'getPremiumLimit';
  
  @override
  String getConstructor() => constructor;
}

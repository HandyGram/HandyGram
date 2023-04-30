part of '../tdapi.dart';

/// **GetRecentlyVisitedTMeUrls** *(getRecentlyVisitedTMeUrls)* - TDLib function
  ///
  /// Returns t.me URLs recently visited by a newly registered user.
  ///
  /// * [referrer]: Google Play referrer to identify the user.
  ///
  /// [TMeUrls] is returned on completion.
class GetRecentlyVisitedTMeUrls extends TdFunction {
  
  /// **GetRecentlyVisitedTMeUrls** *(getRecentlyVisitedTMeUrls)* - TDLib function
  ///
  /// Returns t.me URLs recently visited by a newly registered user.
  ///
  /// * [referrer]: Google Play referrer to identify the user.
  ///
  /// [TMeUrls] is returned on completion.
  const GetRecentlyVisitedTMeUrls({
    required this.referrer,
  });
  
  /// Google Play referrer to identify the user
  final String referrer;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "referrer": referrer,
      "@extra": extra,
    };
  }
  
  GetRecentlyVisitedTMeUrls copyWith({
    String? referrer,
  }) => GetRecentlyVisitedTMeUrls(
    referrer: referrer ?? this.referrer,
  );

  static const String constructor = 'getRecentlyVisitedTMeUrls';
  
  @override
  String getConstructor() => constructor;
}

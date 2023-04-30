part of '../tdapi.dart';

/// **GetRecommendedChatFilters** *(getRecommendedChatFilters)* - TDLib function
  ///
  /// Returns recommended chat filters for the current user.
  ///
  /// [RecommendedChatFilters] is returned on completion.
class GetRecommendedChatFilters extends TdFunction {
  
  /// **GetRecommendedChatFilters** *(getRecommendedChatFilters)* - TDLib function
  ///
  /// Returns recommended chat filters for the current user.
  ///
  /// [RecommendedChatFilters] is returned on completion.
  const GetRecommendedChatFilters();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "@extra": extra,
    };
  }
  
  GetRecommendedChatFilters copyWith() => const GetRecommendedChatFilters();

  static const String constructor = 'getRecommendedChatFilters';
  
  @override
  String getConstructor() => constructor;
}

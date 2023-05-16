part of '../tdapi.dart';

/// **GetRecommendedChatFilters** *(getRecommendedChatFilters)* - TDLib function
///
/// Returns recommended chat filters for the current user.
///
/// [RecommendedChatFilters] is returned on completion.
final class GetRecommendedChatFilters extends TdFunction {
  
  /// **GetRecommendedChatFilters** *(getRecommendedChatFilters)* - TDLib function
  ///
  /// Returns recommended chat filters for the current user.
  ///
  /// [RecommendedChatFilters] is returned on completion.
  const GetRecommendedChatFilters();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "@extra": extra,
		};
	}

  
  GetRecommendedChatFilters copyWith() => const GetRecommendedChatFilters();

  static const String objectType = 'getRecommendedChatFilters';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

part of '../tdapi.dart';

/// **GetSavedAnimations** *(getSavedAnimations)* - TDLib function
///
/// Returns saved animations.
///
/// [Animations] is returned on completion.
final class GetSavedAnimations extends TdFunction {
  
  /// **GetSavedAnimations** *(getSavedAnimations)* - TDLib function
  ///
  /// Returns saved animations.
  ///
  /// [Animations] is returned on completion.
  const GetSavedAnimations();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "@extra": extra,
		};
	}

  
  GetSavedAnimations copyWith() => const GetSavedAnimations();

  static const String objectType = 'getSavedAnimations';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

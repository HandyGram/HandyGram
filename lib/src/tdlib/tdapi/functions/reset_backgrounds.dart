part of '../tdapi.dart';

/// **ResetBackgrounds** *(resetBackgrounds)* - TDLib function
///
/// Resets list of installed backgrounds to its default value.
///
/// [Ok] is returned on completion.
final class ResetBackgrounds extends TdFunction {
  
  /// **ResetBackgrounds** *(resetBackgrounds)* - TDLib function
  ///
  /// Resets list of installed backgrounds to its default value.
  ///
  /// [Ok] is returned on completion.
  const ResetBackgrounds();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "@extra": extra,
		};
	}

  
  ResetBackgrounds copyWith() => const ResetBackgrounds();

  static const String objectType = 'resetBackgrounds';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

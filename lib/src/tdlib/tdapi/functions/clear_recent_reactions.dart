part of '../tdapi.dart';

/// **ClearRecentReactions** *(clearRecentReactions)* - TDLib function
///
/// Clears the list of recently used reactions.
///
/// [Ok] is returned on completion.
final class ClearRecentReactions extends TdFunction {
  
  /// **ClearRecentReactions** *(clearRecentReactions)* - TDLib function
  ///
  /// Clears the list of recently used reactions.
  ///
  /// [Ok] is returned on completion.
  const ClearRecentReactions();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "@extra": extra,
		};
	}

  
  ClearRecentReactions copyWith() => const ClearRecentReactions();

  static const String objectType = 'clearRecentReactions';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

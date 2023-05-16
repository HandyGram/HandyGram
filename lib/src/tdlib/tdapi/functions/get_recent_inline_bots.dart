part of '../tdapi.dart';

/// **GetRecentInlineBots** *(getRecentInlineBots)* - TDLib function
///
/// Returns up to 20 recently used inline bots in the order of their last usage.
///
/// [Users] is returned on completion.
final class GetRecentInlineBots extends TdFunction {
  
  /// **GetRecentInlineBots** *(getRecentInlineBots)* - TDLib function
  ///
  /// Returns up to 20 recently used inline bots in the order of their last usage.
  ///
  /// [Users] is returned on completion.
  const GetRecentInlineBots();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "@extra": extra,
		};
	}

  
  GetRecentInlineBots copyWith() => const GetRecentInlineBots();

  static const String objectType = 'getRecentInlineBots';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

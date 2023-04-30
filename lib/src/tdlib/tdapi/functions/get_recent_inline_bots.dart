part of '../tdapi.dart';

/// **GetRecentInlineBots** *(getRecentInlineBots)* - TDLib function
  ///
  /// Returns up to 20 recently used inline bots in the order of their last usage.
  ///
  /// [Users] is returned on completion.
class GetRecentInlineBots extends TdFunction {
  
  /// **GetRecentInlineBots** *(getRecentInlineBots)* - TDLib function
  ///
  /// Returns up to 20 recently used inline bots in the order of their last usage.
  ///
  /// [Users] is returned on completion.
  const GetRecentInlineBots();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "@extra": extra,
    };
  }
  
  GetRecentInlineBots copyWith() => const GetRecentInlineBots();

  static const String constructor = 'getRecentInlineBots';
  
  @override
  String getConstructor() => constructor;
}

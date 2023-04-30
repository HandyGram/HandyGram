part of '../tdapi.dart';

/// **ClearRecentReactions** *(clearRecentReactions)* - TDLib function
  ///
  /// Clears the list of recently used reactions.
  ///
  /// [Ok] is returned on completion.
class ClearRecentReactions extends TdFunction {
  
  /// **ClearRecentReactions** *(clearRecentReactions)* - TDLib function
  ///
  /// Clears the list of recently used reactions.
  ///
  /// [Ok] is returned on completion.
  const ClearRecentReactions();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "@extra": extra,
    };
  }
  
  ClearRecentReactions copyWith() => const ClearRecentReactions();

  static const String constructor = 'clearRecentReactions';
  
  @override
  String getConstructor() => constructor;
}

part of '../tdapi.dart';

/// **ClearRecentlyFoundChats** *(clearRecentlyFoundChats)* - TDLib function
  ///
  /// Clears the list of recently found chats.
  ///
  /// [Ok] is returned on completion.
class ClearRecentlyFoundChats extends TdFunction {
  
  /// **ClearRecentlyFoundChats** *(clearRecentlyFoundChats)* - TDLib function
  ///
  /// Clears the list of recently found chats.
  ///
  /// [Ok] is returned on completion.
  const ClearRecentlyFoundChats();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "@extra": extra,
    };
  }
  
  ClearRecentlyFoundChats copyWith() => const ClearRecentlyFoundChats();

  static const String constructor = 'clearRecentlyFoundChats';
  
  @override
  String getConstructor() => constructor;
}

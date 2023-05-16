part of '../tdapi.dart';

/// **ClearRecentlyFoundChats** *(clearRecentlyFoundChats)* - TDLib function
///
/// Clears the list of recently found chats.
///
/// [Ok] is returned on completion.
final class ClearRecentlyFoundChats extends TdFunction {
  
  /// **ClearRecentlyFoundChats** *(clearRecentlyFoundChats)* - TDLib function
  ///
  /// Clears the list of recently found chats.
  ///
  /// [Ok] is returned on completion.
  const ClearRecentlyFoundChats();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "@extra": extra,
		};
	}

  
  ClearRecentlyFoundChats copyWith() => const ClearRecentlyFoundChats();

  static const String objectType = 'clearRecentlyFoundChats';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

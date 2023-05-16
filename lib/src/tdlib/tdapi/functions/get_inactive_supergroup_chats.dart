part of '../tdapi.dart';

/// **GetInactiveSupergroupChats** *(getInactiveSupergroupChats)* - TDLib function
///
/// Returns a list of recently inactive supergroups and channels. Can be used when user reaches limit on the number of joined supergroups and channels and receives CHANNELS_TOO_MUCH error. Also, the limit can be increased with Telegram Premium.
///
/// [Chats] is returned on completion.
final class GetInactiveSupergroupChats extends TdFunction {
  
  /// **GetInactiveSupergroupChats** *(getInactiveSupergroupChats)* - TDLib function
  ///
  /// Returns a list of recently inactive supergroups and channels. Can be used when user reaches limit on the number of joined supergroups and channels and receives CHANNELS_TOO_MUCH error. Also, the limit can be increased with Telegram Premium.
  ///
  /// [Chats] is returned on completion.
  const GetInactiveSupergroupChats();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "@extra": extra,
		};
	}

  
  GetInactiveSupergroupChats copyWith() => const GetInactiveSupergroupChats();

  static const String objectType = 'getInactiveSupergroupChats';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

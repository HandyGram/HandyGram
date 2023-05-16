part of '../tdapi.dart';

/// **GetCreatedPublicChats** *(getCreatedPublicChats)* - TDLib function
///
/// Returns a list of public chats of the specified type, owned by the user.
///
/// * [type]: Type of the public chats to return.
///
/// [Chats] is returned on completion.
final class GetCreatedPublicChats extends TdFunction {
  
  /// **GetCreatedPublicChats** *(getCreatedPublicChats)* - TDLib function
  ///
  /// Returns a list of public chats of the specified type, owned by the user.
  ///
  /// * [type]: Type of the public chats to return.
  ///
  /// [Chats] is returned on completion.
  const GetCreatedPublicChats({
    required this.type,
  });
  
  /// Type of the public chats to return
  final PublicChatType type;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "type": type.toJson(),
      "@extra": extra,
		};
	}

  
  GetCreatedPublicChats copyWith({
    PublicChatType? type,
  }) => GetCreatedPublicChats(
    type: type ?? this.type,
  );

  static const String objectType = 'getCreatedPublicChats';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

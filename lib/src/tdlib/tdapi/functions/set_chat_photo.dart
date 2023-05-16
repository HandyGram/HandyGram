part of '../tdapi.dart';

/// **SetChatPhoto** *(setChatPhoto)* - TDLib function
///
/// Changes the photo of a chat. Supported only for basic groups, supergroups and channels. Requires can_change_info administrator right.
///
/// * [chatId]: Chat identifier.
/// * [photo]: New chat photo; pass null to delete the chat photo *(optional)*.
///
/// [Ok] is returned on completion.
final class SetChatPhoto extends TdFunction {
  
  /// **SetChatPhoto** *(setChatPhoto)* - TDLib function
  ///
  /// Changes the photo of a chat. Supported only for basic groups, supergroups and channels. Requires can_change_info administrator right.
  ///
  /// * [chatId]: Chat identifier.
  /// * [photo]: New chat photo; pass null to delete the chat photo *(optional)*.
  ///
  /// [Ok] is returned on completion.
  const SetChatPhoto({
    required this.chatId,
    this.photo,
  });
  
  /// Chat identifier
  final int chatId;

  /// New chat photo; pass null to delete the chat photo
  final InputChatPhoto? photo;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "chat_id": chatId,
      "photo": photo?.toJson(),
      "@extra": extra,
		};
	}

  
  SetChatPhoto copyWith({
    int? chatId,
    InputChatPhoto? photo,
  }) => SetChatPhoto(
    chatId: chatId ?? this.chatId,
    photo: photo ?? this.photo,
  );

  static const String objectType = 'setChatPhoto';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

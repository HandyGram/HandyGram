part of '../tdapi.dart';

/// **SetChatTitle** *(setChatTitle)* - TDLib function
///
/// Changes the chat title. Supported only for basic groups, supergroups and channels. Requires can_change_info administrator right.
///
/// * [chatId]: Chat identifier.
/// * [title]: New title of the chat; 1-128 characters.
///
/// [Ok] is returned on completion.
final class SetChatTitle extends TdFunction {
  
  /// **SetChatTitle** *(setChatTitle)* - TDLib function
  ///
  /// Changes the chat title. Supported only for basic groups, supergroups and channels. Requires can_change_info administrator right.
  ///
  /// * [chatId]: Chat identifier.
  /// * [title]: New title of the chat; 1-128 characters.
  ///
  /// [Ok] is returned on completion.
  const SetChatTitle({
    required this.chatId,
    required this.title,
  });
  
  /// Chat identifier
  final int chatId;

  /// New title of the chat; 1-128 characters
  final String title;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "chat_id": chatId,
      "title": title,
      "@extra": extra,
		};
	}

  
  SetChatTitle copyWith({
    int? chatId,
    String? title,
  }) => SetChatTitle(
    chatId: chatId ?? this.chatId,
    title: title ?? this.title,
  );

  static const String objectType = 'setChatTitle';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

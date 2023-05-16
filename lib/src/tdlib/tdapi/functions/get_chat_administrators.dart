part of '../tdapi.dart';

/// **GetChatAdministrators** *(getChatAdministrators)* - TDLib function
///
/// Returns a list of administrators of the chat with their custom titles.
///
/// * [chatId]: Chat identifier.
///
/// [ChatAdministrators] is returned on completion.
final class GetChatAdministrators extends TdFunction {
  
  /// **GetChatAdministrators** *(getChatAdministrators)* - TDLib function
  ///
  /// Returns a list of administrators of the chat with their custom titles.
  ///
  /// * [chatId]: Chat identifier.
  ///
  /// [ChatAdministrators] is returned on completion.
  const GetChatAdministrators({
    required this.chatId,
  });
  
  /// Chat identifier
  final int chatId;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "chat_id": chatId,
      "@extra": extra,
		};
	}

  
  GetChatAdministrators copyWith({
    int? chatId,
  }) => GetChatAdministrators(
    chatId: chatId ?? this.chatId,
  );

  static const String objectType = 'getChatAdministrators';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

part of '../tdapi.dart';

/// **ReadAllChatMentions** *(readAllChatMentions)* - TDLib function
///
/// Marks all mentions in a chat as read.
///
/// * [chatId]: Chat identifier.
///
/// [Ok] is returned on completion.
final class ReadAllChatMentions extends TdFunction {
  
  /// **ReadAllChatMentions** *(readAllChatMentions)* - TDLib function
  ///
  /// Marks all mentions in a chat as read.
  ///
  /// * [chatId]: Chat identifier.
  ///
  /// [Ok] is returned on completion.
  const ReadAllChatMentions({
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

  
  ReadAllChatMentions copyWith({
    int? chatId,
  }) => ReadAllChatMentions(
    chatId: chatId ?? this.chatId,
  );

  static const String objectType = 'readAllChatMentions';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

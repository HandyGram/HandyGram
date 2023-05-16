part of '../tdapi.dart';

/// **ReadAllChatReactions** *(readAllChatReactions)* - TDLib function
///
/// Marks all reactions in a chat or a forum topic as read.
///
/// * [chatId]: Chat identifier.
///
/// [Ok] is returned on completion.
final class ReadAllChatReactions extends TdFunction {
  
  /// **ReadAllChatReactions** *(readAllChatReactions)* - TDLib function
  ///
  /// Marks all reactions in a chat or a forum topic as read.
  ///
  /// * [chatId]: Chat identifier.
  ///
  /// [Ok] is returned on completion.
  const ReadAllChatReactions({
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

  
  ReadAllChatReactions copyWith({
    int? chatId,
  }) => ReadAllChatReactions(
    chatId: chatId ?? this.chatId,
  );

  static const String objectType = 'readAllChatReactions';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

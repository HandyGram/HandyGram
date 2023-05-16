part of '../tdapi.dart';

/// **DeleteChatMessagesByDate** *(deleteChatMessagesByDate)* - TDLib function
///
/// Deletes all messages between the specified dates in a chat. Supported only for private chats and basic groups. Messages sent in the last 30 seconds will not be deleted.
///
/// * [chatId]: Chat identifier.
/// * [minDate]: The minimum date of the messages to delete.
/// * [maxDate]: The maximum date of the messages to delete.
/// * [revoke]: Pass true to delete chat messages for all users; private chats only.
///
/// [Ok] is returned on completion.
final class DeleteChatMessagesByDate extends TdFunction {
  
  /// **DeleteChatMessagesByDate** *(deleteChatMessagesByDate)* - TDLib function
  ///
  /// Deletes all messages between the specified dates in a chat. Supported only for private chats and basic groups. Messages sent in the last 30 seconds will not be deleted.
  ///
  /// * [chatId]: Chat identifier.
  /// * [minDate]: The minimum date of the messages to delete.
  /// * [maxDate]: The maximum date of the messages to delete.
  /// * [revoke]: Pass true to delete chat messages for all users; private chats only.
  ///
  /// [Ok] is returned on completion.
  const DeleteChatMessagesByDate({
    required this.chatId,
    required this.minDate,
    required this.maxDate,
    required this.revoke,
  });
  
  /// Chat identifier
  final int chatId;

  /// The minimum date of the messages to delete
  final int minDate;

  /// The maximum date of the messages to delete
  final int maxDate;

  /// Pass true to delete chat messages for all users; private chats only
  final bool revoke;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "chat_id": chatId,
      "min_date": minDate,
      "max_date": maxDate,
      "revoke": revoke,
      "@extra": extra,
		};
	}

  
  DeleteChatMessagesByDate copyWith({
    int? chatId,
    int? minDate,
    int? maxDate,
    bool? revoke,
  }) => DeleteChatMessagesByDate(
    chatId: chatId ?? this.chatId,
    minDate: minDate ?? this.minDate,
    maxDate: maxDate ?? this.maxDate,
    revoke: revoke ?? this.revoke,
  );

  static const String objectType = 'deleteChatMessagesByDate';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

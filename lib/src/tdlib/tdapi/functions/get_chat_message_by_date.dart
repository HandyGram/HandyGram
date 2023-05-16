part of '../tdapi.dart';

/// **GetChatMessageByDate** *(getChatMessageByDate)* - TDLib function
///
/// Returns the last message sent in a chat no later than the specified date.
///
/// * [chatId]: Chat identifier.
/// * [date]: Point in time (Unix timestamp) relative to which to search for messages.
///
/// [Message] is returned on completion.
final class GetChatMessageByDate extends TdFunction {
  
  /// **GetChatMessageByDate** *(getChatMessageByDate)* - TDLib function
  ///
  /// Returns the last message sent in a chat no later than the specified date.
  ///
  /// * [chatId]: Chat identifier.
  /// * [date]: Point in time (Unix timestamp) relative to which to search for messages.
  ///
  /// [Message] is returned on completion.
  const GetChatMessageByDate({
    required this.chatId,
    required this.date,
  });
  
  /// Chat identifier 
  final int chatId;

  /// Point in time (Unix timestamp) relative to which to search for messages
  final int date;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "chat_id": chatId,
      "date": date,
      "@extra": extra,
		};
	}

  
  GetChatMessageByDate copyWith({
    int? chatId,
    int? date,
  }) => GetChatMessageByDate(
    chatId: chatId ?? this.chatId,
    date: date ?? this.date,
  );

  static const String objectType = 'getChatMessageByDate';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

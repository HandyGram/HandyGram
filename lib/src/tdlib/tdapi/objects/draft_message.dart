part of '../tdapi.dart';

/// **DraftMessage** *(draftMessage)* - basic class
///
/// Contains information about a message draft.
///
/// * [replyToMessageId]: Identifier of the replied message; 0 if none.
/// * [date]: Point in time (Unix timestamp) when the draft was created.
/// * [inputMessageText]: Content of the message draft; must be of the type inputMessageText.
final class DraftMessage extends TdObject {
  
  /// **DraftMessage** *(draftMessage)* - basic class
  ///
  /// Contains information about a message draft.
  ///
  /// * [replyToMessageId]: Identifier of the replied message; 0 if none.
  /// * [date]: Point in time (Unix timestamp) when the draft was created.
  /// * [inputMessageText]: Content of the message draft; must be of the type inputMessageText.
  const DraftMessage({
    required this.replyToMessageId,
    required this.date,
    required this.inputMessageText,
  });
  
  /// Identifier of the replied message; 0 if none
  final int replyToMessageId;

  /// Point in time (Unix timestamp) when the draft was created
  final int date;

  /// Content of the message draft; must be of the type inputMessageText
  final InputMessageContent inputMessageText;
  
  /// Parse from a json
  factory DraftMessage.fromJson(Map<String, dynamic> json) => DraftMessage(
    replyToMessageId: json['reply_to_message_id'] ?? 0,
    date: json['date'],
    inputMessageText: InputMessageContent.fromJson(json['input_message_text']),
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "reply_to_message_id": replyToMessageId,
      "date": date,
      "input_message_text": inputMessageText.toJson(),
		};
	}

  
  DraftMessage copyWith({
    int? replyToMessageId,
    int? date,
    InputMessageContent? inputMessageText,
  }) => DraftMessage(
    replyToMessageId: replyToMessageId ?? this.replyToMessageId,
    date: date ?? this.date,
    inputMessageText: inputMessageText ?? this.inputMessageText,
  );

  static const String objectType = 'draftMessage';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

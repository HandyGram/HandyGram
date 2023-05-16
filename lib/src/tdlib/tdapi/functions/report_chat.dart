part of '../tdapi.dart';

/// **ReportChat** *(reportChat)* - TDLib function
///
/// Reports a chat to the Telegram moderators. A chat can be reported only from the chat action bar, or if chat.can_be_reported.
///
/// * [chatId]: Chat identifier.
/// * [messageIds]: Identifiers of reported messages; may be empty to report the whole chat.
/// * [reason]: The reason for reporting the chat.
/// * [text]: Additional report details; 0-1024 characters.
///
/// [Ok] is returned on completion.
final class ReportChat extends TdFunction {
  
  /// **ReportChat** *(reportChat)* - TDLib function
  ///
  /// Reports a chat to the Telegram moderators. A chat can be reported only from the chat action bar, or if chat.can_be_reported.
  ///
  /// * [chatId]: Chat identifier.
  /// * [messageIds]: Identifiers of reported messages; may be empty to report the whole chat.
  /// * [reason]: The reason for reporting the chat.
  /// * [text]: Additional report details; 0-1024 characters.
  ///
  /// [Ok] is returned on completion.
  const ReportChat({
    required this.chatId,
    required this.messageIds,
    required this.reason,
    required this.text,
  });
  
  /// Chat identifier
  final int chatId;

  /// Identifiers of reported messages; may be empty to report the whole chat
  final List<int> messageIds;

  /// The reason for reporting the chat
  final ChatReportReason reason;

  /// Additional report details; 0-1024 characters
  final String text;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "chat_id": chatId,
      "message_ids": messageIds.map((i) => i).toList(),
      "reason": reason.toJson(),
      "text": text,
      "@extra": extra,
		};
	}

  
  ReportChat copyWith({
    int? chatId,
    List<int>? messageIds,
    ChatReportReason? reason,
    String? text,
  }) => ReportChat(
    chatId: chatId ?? this.chatId,
    messageIds: messageIds ?? this.messageIds,
    reason: reason ?? this.reason,
    text: text ?? this.text,
  );

  static const String objectType = 'reportChat';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

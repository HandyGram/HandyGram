part of '../tdapi.dart';

/// **ReportChatPhoto** *(reportChatPhoto)* - TDLib function
///
/// Reports a chat photo to the Telegram moderators. A chat photo can be reported only if chat.can_be_reported.
///
/// * [chatId]: Chat identifier.
/// * [fileId]: Identifier of the photo to report. Only full photos from chatPhoto can be reported.
/// * [reason]: The reason for reporting the chat photo.
/// * [text]: Additional report details; 0-1024 characters.
///
/// [Ok] is returned on completion.
final class ReportChatPhoto extends TdFunction {
  
  /// **ReportChatPhoto** *(reportChatPhoto)* - TDLib function
  ///
  /// Reports a chat photo to the Telegram moderators. A chat photo can be reported only if chat.can_be_reported.
  ///
  /// * [chatId]: Chat identifier.
  /// * [fileId]: Identifier of the photo to report. Only full photos from chatPhoto can be reported.
  /// * [reason]: The reason for reporting the chat photo.
  /// * [text]: Additional report details; 0-1024 characters.
  ///
  /// [Ok] is returned on completion.
  const ReportChatPhoto({
    required this.chatId,
    required this.fileId,
    required this.reason,
    required this.text,
  });
  
  /// Chat identifier
  final int chatId;

  /// Identifier of the photo to report. Only full photos from chatPhoto can be reported
  final int fileId;

  /// The reason for reporting the chat photo
  final ChatReportReason reason;

  /// Additional report details; 0-1024 characters
  final String text;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "chat_id": chatId,
      "file_id": fileId,
      "reason": reason.toJson(),
      "text": text,
      "@extra": extra,
		};
	}

  
  ReportChatPhoto copyWith({
    int? chatId,
    int? fileId,
    ChatReportReason? reason,
    String? text,
  }) => ReportChatPhoto(
    chatId: chatId ?? this.chatId,
    fileId: fileId ?? this.fileId,
    reason: reason ?? this.reason,
    text: text ?? this.text,
  );

  static const String objectType = 'reportChatPhoto';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

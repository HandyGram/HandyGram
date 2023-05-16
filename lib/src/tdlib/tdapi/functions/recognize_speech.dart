part of '../tdapi.dart';

/// **RecognizeSpeech** *(recognizeSpeech)* - TDLib function
///
/// Recognizes speech in a video note or a voice note message. The message must be successfully sent and must not be scheduled. May return an error with a message "MSG_VOICE_TOO_LONG" if media duration is too big to be recognized.
///
/// * [chatId]: Identifier of the chat to which the message belongs.
/// * [messageId]: Identifier of the message.
///
/// [Ok] is returned on completion.
final class RecognizeSpeech extends TdFunction {
  
  /// **RecognizeSpeech** *(recognizeSpeech)* - TDLib function
  ///
  /// Recognizes speech in a video note or a voice note message. The message must be successfully sent and must not be scheduled. May return an error with a message "MSG_VOICE_TOO_LONG" if media duration is too big to be recognized.
  ///
  /// * [chatId]: Identifier of the chat to which the message belongs.
  /// * [messageId]: Identifier of the message.
  ///
  /// [Ok] is returned on completion.
  const RecognizeSpeech({
    required this.chatId,
    required this.messageId,
  });
  
  /// Identifier of the chat to which the message belongs
  final int chatId;

  /// Identifier of the message
  final int messageId;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "chat_id": chatId,
      "message_id": messageId,
      "@extra": extra,
		};
	}

  
  RecognizeSpeech copyWith({
    int? chatId,
    int? messageId,
  }) => RecognizeSpeech(
    chatId: chatId ?? this.chatId,
    messageId: messageId ?? this.messageId,
  );

  static const String objectType = 'recognizeSpeech';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

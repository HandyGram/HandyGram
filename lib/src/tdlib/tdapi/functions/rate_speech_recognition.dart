part of '../tdapi.dart';

/// **RateSpeechRecognition** *(rateSpeechRecognition)* - TDLib function
///
/// Rates recognized speech in a video note or a voice note message.
///
/// * [chatId]: Identifier of the chat to which the message belongs.
/// * [messageId]: Identifier of the message.
/// * [isGood]: Pass true if the speech recognition is good.
///
/// [Ok] is returned on completion.
final class RateSpeechRecognition extends TdFunction {
  
  /// **RateSpeechRecognition** *(rateSpeechRecognition)* - TDLib function
  ///
  /// Rates recognized speech in a video note or a voice note message.
  ///
  /// * [chatId]: Identifier of the chat to which the message belongs.
  /// * [messageId]: Identifier of the message.
  /// * [isGood]: Pass true if the speech recognition is good.
  ///
  /// [Ok] is returned on completion.
  const RateSpeechRecognition({
    required this.chatId,
    required this.messageId,
    required this.isGood,
  });
  
  /// Identifier of the chat to which the message belongs 
  final int chatId;

  /// Identifier of the message 
  final int messageId;

  /// Pass true if the speech recognition is good
  final bool isGood;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "chat_id": chatId,
      "message_id": messageId,
      "is_good": isGood,
      "@extra": extra,
		};
	}

  
  RateSpeechRecognition copyWith({
    int? chatId,
    int? messageId,
    bool? isGood,
  }) => RateSpeechRecognition(
    chatId: chatId ?? this.chatId,
    messageId: messageId ?? this.messageId,
    isGood: isGood ?? this.isGood,
  );

  static const String objectType = 'rateSpeechRecognition';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

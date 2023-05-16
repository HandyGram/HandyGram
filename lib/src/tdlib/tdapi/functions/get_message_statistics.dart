part of '../tdapi.dart';

/// **GetMessageStatistics** *(getMessageStatistics)* - TDLib function
///
/// Returns detailed statistics about a message. Can be used only if message.can_get_statistics == true.
///
/// * [chatId]: Chat identifier.
/// * [messageId]: Message identifier.
/// * [isDark]: Pass true if a dark theme is used by the application.
///
/// [MessageStatistics] is returned on completion.
final class GetMessageStatistics extends TdFunction {
  
  /// **GetMessageStatistics** *(getMessageStatistics)* - TDLib function
  ///
  /// Returns detailed statistics about a message. Can be used only if message.can_get_statistics == true.
  ///
  /// * [chatId]: Chat identifier.
  /// * [messageId]: Message identifier.
  /// * [isDark]: Pass true if a dark theme is used by the application.
  ///
  /// [MessageStatistics] is returned on completion.
  const GetMessageStatistics({
    required this.chatId,
    required this.messageId,
    required this.isDark,
  });
  
  /// Chat identifier 
  final int chatId;

  /// Message identifier 
  final int messageId;

  /// Pass true if a dark theme is used by the application
  final bool isDark;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "chat_id": chatId,
      "message_id": messageId,
      "is_dark": isDark,
      "@extra": extra,
		};
	}

  
  GetMessageStatistics copyWith({
    int? chatId,
    int? messageId,
    bool? isDark,
  }) => GetMessageStatistics(
    chatId: chatId ?? this.chatId,
    messageId: messageId ?? this.messageId,
    isDark: isDark ?? this.isDark,
  );

  static const String objectType = 'getMessageStatistics';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

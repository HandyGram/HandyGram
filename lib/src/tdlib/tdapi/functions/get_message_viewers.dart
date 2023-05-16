part of '../tdapi.dart';

/// **GetMessageViewers** *(getMessageViewers)* - TDLib function
///
/// Returns viewers of a recent outgoing message in a basic group or a supergroup chat. For video notes and voice notes only users, opened content of the message, are returned. The method can be called if message.can_get_viewers == true.
///
/// * [chatId]: Chat identifier.
/// * [messageId]: Identifier of the message.
///
/// [Users] is returned on completion.
final class GetMessageViewers extends TdFunction {
  
  /// **GetMessageViewers** *(getMessageViewers)* - TDLib function
  ///
  /// Returns viewers of a recent outgoing message in a basic group or a supergroup chat. For video notes and voice notes only users, opened content of the message, are returned. The method can be called if message.can_get_viewers == true.
  ///
  /// * [chatId]: Chat identifier.
  /// * [messageId]: Identifier of the message.
  ///
  /// [Users] is returned on completion.
  const GetMessageViewers({
    required this.chatId,
    required this.messageId,
  });
  
  /// Chat identifier
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

  
  GetMessageViewers copyWith({
    int? chatId,
    int? messageId,
  }) => GetMessageViewers(
    chatId: chatId ?? this.chatId,
    messageId: messageId ?? this.messageId,
  );

  static const String objectType = 'getMessageViewers';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

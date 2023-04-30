part of '../tdapi.dart';

/// **SetChatSlowModeDelay** *(setChatSlowModeDelay)* - TDLib function
  ///
  /// Changes the slow mode delay of a chat. Available only for supergroups; requires can_restrict_members rights.
  ///
  /// * [chatId]: Chat identifier.
  /// * [slowModeDelay]: New slow mode delay for the chat, in seconds; must be one of 0, 10, 30, 60, 300, 900, 3600.
  ///
  /// [Ok] is returned on completion.
class SetChatSlowModeDelay extends TdFunction {
  
  /// **SetChatSlowModeDelay** *(setChatSlowModeDelay)* - TDLib function
  ///
  /// Changes the slow mode delay of a chat. Available only for supergroups; requires can_restrict_members rights.
  ///
  /// * [chatId]: Chat identifier.
  /// * [slowModeDelay]: New slow mode delay for the chat, in seconds; must be one of 0, 10, 30, 60, 300, 900, 3600.
  ///
  /// [Ok] is returned on completion.
  const SetChatSlowModeDelay({
    required this.chatId,
    required this.slowModeDelay,
  });
  
  /// Chat identifier 
  final int chatId;

  /// New slow mode delay for the chat, in seconds; must be one of 0, 10, 30, 60, 300, 900, 3600
  final int slowModeDelay;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "chat_id": chatId,
      "slow_mode_delay": slowModeDelay,
      "@extra": extra,
    };
  }
  
  SetChatSlowModeDelay copyWith({
    int? chatId,
    int? slowModeDelay,
  }) => SetChatSlowModeDelay(
    chatId: chatId ?? this.chatId,
    slowModeDelay: slowModeDelay ?? this.slowModeDelay,
  );

  static const String constructor = 'setChatSlowModeDelay';
  
  @override
  String getConstructor() => constructor;
}

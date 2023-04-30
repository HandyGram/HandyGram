part of '../tdapi.dart';

/// **ToggleChatDefaultDisableNotification** *(toggleChatDefaultDisableNotification)* - TDLib function
  ///
  /// Changes the value of the default disable_notification parameter, used when a message is sent to a chat.
  ///
  /// * [chatId]: Chat identifier.
  /// * [defaultDisableNotification]: New value of default_disable_notification.
  ///
  /// [Ok] is returned on completion.
class ToggleChatDefaultDisableNotification extends TdFunction {
  
  /// **ToggleChatDefaultDisableNotification** *(toggleChatDefaultDisableNotification)* - TDLib function
  ///
  /// Changes the value of the default disable_notification parameter, used when a message is sent to a chat.
  ///
  /// * [chatId]: Chat identifier.
  /// * [defaultDisableNotification]: New value of default_disable_notification.
  ///
  /// [Ok] is returned on completion.
  const ToggleChatDefaultDisableNotification({
    required this.chatId,
    required this.defaultDisableNotification,
  });
  
  /// Chat identifier 
  final int chatId;

  /// New value of default_disable_notification
  final bool defaultDisableNotification;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "chat_id": chatId,
      "default_disable_notification": defaultDisableNotification,
      "@extra": extra,
    };
  }
  
  ToggleChatDefaultDisableNotification copyWith({
    int? chatId,
    bool? defaultDisableNotification,
  }) => ToggleChatDefaultDisableNotification(
    chatId: chatId ?? this.chatId,
    defaultDisableNotification: defaultDisableNotification ?? this.defaultDisableNotification,
  );

  static const String constructor = 'toggleChatDefaultDisableNotification';
  
  @override
  String getConstructor() => constructor;
}

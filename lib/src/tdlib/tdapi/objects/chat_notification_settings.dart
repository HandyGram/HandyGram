part of '../tdapi.dart';

/// **ChatNotificationSettings** *(chatNotificationSettings)* - basic class
  ///
  /// Contains information about notification settings for a chat or a froum topic.
  ///
  /// * [useDefaultMuteFor]: If true, mute_for is ignored and the value for the relevant type of chat or the forum chat is used instead.
  /// * [muteFor]: Time left before notifications will be unmuted, in seconds.
  /// * [useDefaultSound]: If true, the value for the relevant type of chat or the forum chat is used instead of sound_id.
  /// * [soundId]: Identifier of the notification sound to be played; 0 if sound is disabled.
  /// * [useDefaultShowPreview]: If true, show_preview is ignored and the value for the relevant type of chat or the forum chat is used instead.
  /// * [showPreview]: True, if message content must be displayed in notifications.
  /// * [useDefaultDisablePinnedMessageNotifications]: If true, disable_pinned_message_notifications is ignored and the value for the relevant type of chat or the forum chat is used instead.
  /// * [disablePinnedMessageNotifications]: If true, notifications for incoming pinned messages will be created as for an ordinary unread message.
  /// * [useDefaultDisableMentionNotifications]: If true, disable_mention_notifications is ignored and the value for the relevant type of chat or the forum chat is used instead.
  /// * [disableMentionNotifications]: If true, notifications for messages with mentions will be created as for an ordinary unread message.
class ChatNotificationSettings extends TdObject {
  
  /// **ChatNotificationSettings** *(chatNotificationSettings)* - basic class
  ///
  /// Contains information about notification settings for a chat or a froum topic.
  ///
  /// * [useDefaultMuteFor]: If true, mute_for is ignored and the value for the relevant type of chat or the forum chat is used instead.
  /// * [muteFor]: Time left before notifications will be unmuted, in seconds.
  /// * [useDefaultSound]: If true, the value for the relevant type of chat or the forum chat is used instead of sound_id.
  /// * [soundId]: Identifier of the notification sound to be played; 0 if sound is disabled.
  /// * [useDefaultShowPreview]: If true, show_preview is ignored and the value for the relevant type of chat or the forum chat is used instead.
  /// * [showPreview]: True, if message content must be displayed in notifications.
  /// * [useDefaultDisablePinnedMessageNotifications]: If true, disable_pinned_message_notifications is ignored and the value for the relevant type of chat or the forum chat is used instead.
  /// * [disablePinnedMessageNotifications]: If true, notifications for incoming pinned messages will be created as for an ordinary unread message.
  /// * [useDefaultDisableMentionNotifications]: If true, disable_mention_notifications is ignored and the value for the relevant type of chat or the forum chat is used instead.
  /// * [disableMentionNotifications]: If true, notifications for messages with mentions will be created as for an ordinary unread message.
  const ChatNotificationSettings({
    required this.useDefaultMuteFor,
    required this.muteFor,
    required this.useDefaultSound,
    required this.soundId,
    required this.useDefaultShowPreview,
    required this.showPreview,
    required this.useDefaultDisablePinnedMessageNotifications,
    required this.disablePinnedMessageNotifications,
    required this.useDefaultDisableMentionNotifications,
    required this.disableMentionNotifications,
  });
  
  /// If true, mute_for is ignored and the value for the relevant type of chat or the forum chat is used instead
  final bool useDefaultMuteFor;

  /// Time left before notifications will be unmuted, in seconds
  final int muteFor;

  /// If true, the value for the relevant type of chat or the forum chat is used instead of sound_id
  final bool useDefaultSound;

  /// Identifier of the notification sound to be played; 0 if sound is disabled
  final int soundId;

  /// If true, show_preview is ignored and the value for the relevant type of chat or the forum chat is used instead
  final bool useDefaultShowPreview;

  /// True, if message content must be displayed in notifications
  final bool showPreview;

  /// If true, disable_pinned_message_notifications is ignored and the value for the relevant type of chat or the forum chat is used instead
  final bool useDefaultDisablePinnedMessageNotifications;

  /// If true, notifications for incoming pinned messages will be created as for an ordinary unread message
  final bool disablePinnedMessageNotifications;

  /// If true, disable_mention_notifications is ignored and the value for the relevant type of chat or the forum chat is used instead
  final bool useDefaultDisableMentionNotifications;

  /// If true, notifications for messages with mentions will be created as for an ordinary unread message
  final bool disableMentionNotifications;
  
  /// Parse from a json
  factory ChatNotificationSettings.fromJson(Map<String, dynamic> json) => ChatNotificationSettings(
    useDefaultMuteFor: json['use_default_mute_for'],
    muteFor: json['mute_for'],
    useDefaultSound: json['use_default_sound'],
    soundId: int.parse(json['sound_id']),
    useDefaultShowPreview: json['use_default_show_preview'],
    showPreview: json['show_preview'],
    useDefaultDisablePinnedMessageNotifications: json['use_default_disable_pinned_message_notifications'],
    disablePinnedMessageNotifications: json['disable_pinned_message_notifications'],
    useDefaultDisableMentionNotifications: json['use_default_disable_mention_notifications'],
    disableMentionNotifications: json['disable_mention_notifications'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "use_default_mute_for": useDefaultMuteFor,
      "mute_for": muteFor,
      "use_default_sound": useDefaultSound,
      "sound_id": soundId,
      "use_default_show_preview": useDefaultShowPreview,
      "show_preview": showPreview,
      "use_default_disable_pinned_message_notifications": useDefaultDisablePinnedMessageNotifications,
      "disable_pinned_message_notifications": disablePinnedMessageNotifications,
      "use_default_disable_mention_notifications": useDefaultDisableMentionNotifications,
      "disable_mention_notifications": disableMentionNotifications,
    };
  }
  
  ChatNotificationSettings copyWith({
    bool? useDefaultMuteFor,
    int? muteFor,
    bool? useDefaultSound,
    int? soundId,
    bool? useDefaultShowPreview,
    bool? showPreview,
    bool? useDefaultDisablePinnedMessageNotifications,
    bool? disablePinnedMessageNotifications,
    bool? useDefaultDisableMentionNotifications,
    bool? disableMentionNotifications,
  }) => ChatNotificationSettings(
    useDefaultMuteFor: useDefaultMuteFor ?? this.useDefaultMuteFor,
    muteFor: muteFor ?? this.muteFor,
    useDefaultSound: useDefaultSound ?? this.useDefaultSound,
    soundId: soundId ?? this.soundId,
    useDefaultShowPreview: useDefaultShowPreview ?? this.useDefaultShowPreview,
    showPreview: showPreview ?? this.showPreview,
    useDefaultDisablePinnedMessageNotifications: useDefaultDisablePinnedMessageNotifications ?? this.useDefaultDisablePinnedMessageNotifications,
    disablePinnedMessageNotifications: disablePinnedMessageNotifications ?? this.disablePinnedMessageNotifications,
    useDefaultDisableMentionNotifications: useDefaultDisableMentionNotifications ?? this.useDefaultDisableMentionNotifications,
    disableMentionNotifications: disableMentionNotifications ?? this.disableMentionNotifications,
  );

  static const String constructor = 'chatNotificationSettings';
  
  @override
  String getConstructor() => constructor;
}

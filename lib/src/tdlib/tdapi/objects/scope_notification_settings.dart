part of '../tdapi.dart';

/// **ScopeNotificationSettings** *(scopeNotificationSettings)* - basic class
///
/// Contains information about notification settings for several chats.
///
/// * [muteFor]: Time left before notifications will be unmuted, in seconds.
/// * [soundId]: Identifier of the notification sound to be played; 0 if sound is disabled.
/// * [showPreview]: True, if message content must be displayed in notifications.
/// * [disablePinnedMessageNotifications]: True, if notifications for incoming pinned messages will be created as for an ordinary unread message.
/// * [disableMentionNotifications]: True, if notifications for messages with mentions will be created as for an ordinary unread message.
final class ScopeNotificationSettings extends TdObject {
  
  /// **ScopeNotificationSettings** *(scopeNotificationSettings)* - basic class
  ///
  /// Contains information about notification settings for several chats.
  ///
  /// * [muteFor]: Time left before notifications will be unmuted, in seconds.
  /// * [soundId]: Identifier of the notification sound to be played; 0 if sound is disabled.
  /// * [showPreview]: True, if message content must be displayed in notifications.
  /// * [disablePinnedMessageNotifications]: True, if notifications for incoming pinned messages will be created as for an ordinary unread message.
  /// * [disableMentionNotifications]: True, if notifications for messages with mentions will be created as for an ordinary unread message.
  const ScopeNotificationSettings({
    required this.muteFor,
    required this.soundId,
    required this.showPreview,
    required this.disablePinnedMessageNotifications,
    required this.disableMentionNotifications,
    this.extra,
    this.clientId,
  });
  
  /// Time left before notifications will be unmuted, in seconds
  final int muteFor;

  /// Identifier of the notification sound to be played; 0 if sound is disabled
  final int soundId;

  /// True, if message content must be displayed in notifications
  final bool showPreview;

  /// True, if notifications for incoming pinned messages will be created as for an ordinary unread message
  final bool disablePinnedMessageNotifications;

  /// True, if notifications for messages with mentions will be created as for an ordinary unread message
  final bool disableMentionNotifications;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory ScopeNotificationSettings.fromJson(Map<String, dynamic> json) => ScopeNotificationSettings(
    muteFor: json['mute_for'],
    soundId: int.parse(json['sound_id']),
    showPreview: json['show_preview'],
    disablePinnedMessageNotifications: json['disable_pinned_message_notifications'],
    disableMentionNotifications: json['disable_mention_notifications'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "mute_for": muteFor,
      "sound_id": soundId,
      "show_preview": showPreview,
      "disable_pinned_message_notifications": disablePinnedMessageNotifications,
      "disable_mention_notifications": disableMentionNotifications,
		};
	}

  
  ScopeNotificationSettings copyWith({
    int? muteFor,
    int? soundId,
    bool? showPreview,
    bool? disablePinnedMessageNotifications,
    bool? disableMentionNotifications,
    dynamic extra,
    int? clientId,
  }) => ScopeNotificationSettings(
    muteFor: muteFor ?? this.muteFor,
    soundId: soundId ?? this.soundId,
    showPreview: showPreview ?? this.showPreview,
    disablePinnedMessageNotifications: disablePinnedMessageNotifications ?? this.disablePinnedMessageNotifications,
    disableMentionNotifications: disableMentionNotifications ?? this.disableMentionNotifications,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'scopeNotificationSettings';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

part of '../tdapi.dart';

/// **AttachmentMenuBot** *(attachmentMenuBot)* - basic class
///
/// Represents a bot, which can be added to attachment menu.
///
/// * [botUserId]: User identifier of the bot added to attachment menu.
/// * [supportsSelfChat]: True, if the bot supports opening from attachment menu in the chat with the bot.
/// * [supportsUserChats]: True, if the bot supports opening from attachment menu in private chats with ordinary users.
/// * [supportsBotChats]: True, if the bot supports opening from attachment menu in private chats with other bots.
/// * [supportsGroupChats]: True, if the bot supports opening from attachment menu in basic group and supergroup chats.
/// * [supportsChannelChats]: True, if the bot supports opening from attachment menu in channel chats.
/// * [supportsSettings]: True, if the bot supports "settings_button_pressed" event.
/// * [requestWriteAccess]: True, if the user needs to be requested to give the permission to the bot to send them messages.
/// * [name]: Name for the bot in attachment menu.
/// * [nameColor]: Color to highlight selected name of the bot if appropriate; may be null *(optional)*.
/// * [defaultIcon]: Default attachment menu icon for the bot in SVG format; may be null *(optional)*.
/// * [iosStaticIcon]: Attachment menu icon for the bot in SVG format for the official iOS app; may be null *(optional)*.
/// * [iosAnimatedIcon]: Attachment menu icon for the bot in TGS format for the official iOS app; may be null *(optional)*.
/// * [androidIcon]: Attachment menu icon for the bot in TGS format for the official Android app; may be null *(optional)*.
/// * [macosIcon]: Attachment menu icon for the bot in TGS format for the official native macOS app; may be null *(optional)*.
/// * [iconColor]: Color to highlight selected icon of the bot if appropriate; may be null *(optional)*.
/// * [webAppPlaceholder]: Default placeholder for opened Web Apps in SVG format; may be null *(optional)*.
final class AttachmentMenuBot extends TdObject {
  
  /// **AttachmentMenuBot** *(attachmentMenuBot)* - basic class
  ///
  /// Represents a bot, which can be added to attachment menu.
  ///
  /// * [botUserId]: User identifier of the bot added to attachment menu.
  /// * [supportsSelfChat]: True, if the bot supports opening from attachment menu in the chat with the bot.
  /// * [supportsUserChats]: True, if the bot supports opening from attachment menu in private chats with ordinary users.
  /// * [supportsBotChats]: True, if the bot supports opening from attachment menu in private chats with other bots.
  /// * [supportsGroupChats]: True, if the bot supports opening from attachment menu in basic group and supergroup chats.
  /// * [supportsChannelChats]: True, if the bot supports opening from attachment menu in channel chats.
  /// * [supportsSettings]: True, if the bot supports "settings_button_pressed" event.
  /// * [requestWriteAccess]: True, if the user needs to be requested to give the permission to the bot to send them messages.
  /// * [name]: Name for the bot in attachment menu.
  /// * [nameColor]: Color to highlight selected name of the bot if appropriate; may be null *(optional)*.
  /// * [defaultIcon]: Default attachment menu icon for the bot in SVG format; may be null *(optional)*.
  /// * [iosStaticIcon]: Attachment menu icon for the bot in SVG format for the official iOS app; may be null *(optional)*.
  /// * [iosAnimatedIcon]: Attachment menu icon for the bot in TGS format for the official iOS app; may be null *(optional)*.
  /// * [androidIcon]: Attachment menu icon for the bot in TGS format for the official Android app; may be null *(optional)*.
  /// * [macosIcon]: Attachment menu icon for the bot in TGS format for the official native macOS app; may be null *(optional)*.
  /// * [iconColor]: Color to highlight selected icon of the bot if appropriate; may be null *(optional)*.
  /// * [webAppPlaceholder]: Default placeholder for opened Web Apps in SVG format; may be null *(optional)*.
  const AttachmentMenuBot({
    required this.botUserId,
    required this.supportsSelfChat,
    required this.supportsUserChats,
    required this.supportsBotChats,
    required this.supportsGroupChats,
    required this.supportsChannelChats,
    required this.supportsSettings,
    required this.requestWriteAccess,
    required this.name,
    this.nameColor,
    this.defaultIcon,
    this.iosStaticIcon,
    this.iosAnimatedIcon,
    this.androidIcon,
    this.macosIcon,
    this.iconColor,
    this.webAppPlaceholder,
    this.extra,
    this.clientId,
  });
  
  /// User identifier of the bot added to attachment menu
  final int botUserId;

  /// True, if the bot supports opening from attachment menu in the chat with the bot
  final bool supportsSelfChat;

  /// True, if the bot supports opening from attachment menu in private chats with ordinary users
  final bool supportsUserChats;

  /// True, if the bot supports opening from attachment menu in private chats with other bots
  final bool supportsBotChats;

  /// True, if the bot supports opening from attachment menu in basic group and supergroup chats
  final bool supportsGroupChats;

  /// True, if the bot supports opening from attachment menu in channel chats
  final bool supportsChannelChats;

  /// True, if the bot supports "settings_button_pressed" event
  final bool supportsSettings;

  /// True, if the user needs to be requested to give the permission to the bot to send them messages
  final bool requestWriteAccess;

  /// Name for the bot in attachment menu
  final String name;

  /// Color to highlight selected name of the bot if appropriate; may be null
  final AttachmentMenuBotColor? nameColor;

  /// Default attachment menu icon for the bot in SVG format; may be null
  final File? defaultIcon;

  /// Attachment menu icon for the bot in SVG format for the official iOS app; may be null
  final File? iosStaticIcon;

  /// Attachment menu icon for the bot in TGS format for the official iOS app; may be null
  final File? iosAnimatedIcon;

  /// Attachment menu icon for the bot in TGS format for the official Android app; may be null
  final File? androidIcon;

  /// Attachment menu icon for the bot in TGS format for the official native macOS app; may be null
  final File? macosIcon;

  /// Color to highlight selected icon of the bot if appropriate; may be null
  final AttachmentMenuBotColor? iconColor;

  /// Default placeholder for opened Web Apps in SVG format; may be null
  final File? webAppPlaceholder;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory AttachmentMenuBot.fromJson(Map<String, dynamic> json) => AttachmentMenuBot(
    botUserId: json['bot_user_id'],
    supportsSelfChat: json['supports_self_chat'],
    supportsUserChats: json['supports_user_chats'],
    supportsBotChats: json['supports_bot_chats'],
    supportsGroupChats: json['supports_group_chats'],
    supportsChannelChats: json['supports_channel_chats'],
    supportsSettings: json['supports_settings'],
    requestWriteAccess: json['request_write_access'],
    name: json['name'],
    nameColor: json['name_color'] == null ? null : AttachmentMenuBotColor.fromJson(json['name_color']),
    defaultIcon: json['default_icon'] == null ? null : File.fromJson(json['default_icon']),
    iosStaticIcon: json['ios_static_icon'] == null ? null : File.fromJson(json['ios_static_icon']),
    iosAnimatedIcon: json['ios_animated_icon'] == null ? null : File.fromJson(json['ios_animated_icon']),
    androidIcon: json['android_icon'] == null ? null : File.fromJson(json['android_icon']),
    macosIcon: json['macos_icon'] == null ? null : File.fromJson(json['macos_icon']),
    iconColor: json['icon_color'] == null ? null : AttachmentMenuBotColor.fromJson(json['icon_color']),
    webAppPlaceholder: json['web_app_placeholder'] == null ? null : File.fromJson(json['web_app_placeholder']),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "bot_user_id": botUserId,
      "supports_self_chat": supportsSelfChat,
      "supports_user_chats": supportsUserChats,
      "supports_bot_chats": supportsBotChats,
      "supports_group_chats": supportsGroupChats,
      "supports_channel_chats": supportsChannelChats,
      "supports_settings": supportsSettings,
      "request_write_access": requestWriteAccess,
      "name": name,
      "name_color": nameColor?.toJson(),
      "default_icon": defaultIcon?.toJson(),
      "ios_static_icon": iosStaticIcon?.toJson(),
      "ios_animated_icon": iosAnimatedIcon?.toJson(),
      "android_icon": androidIcon?.toJson(),
      "macos_icon": macosIcon?.toJson(),
      "icon_color": iconColor?.toJson(),
      "web_app_placeholder": webAppPlaceholder?.toJson(),
		};
	}

  
  AttachmentMenuBot copyWith({
    int? botUserId,
    bool? supportsSelfChat,
    bool? supportsUserChats,
    bool? supportsBotChats,
    bool? supportsGroupChats,
    bool? supportsChannelChats,
    bool? supportsSettings,
    bool? requestWriteAccess,
    String? name,
    AttachmentMenuBotColor? nameColor,
    File? defaultIcon,
    File? iosStaticIcon,
    File? iosAnimatedIcon,
    File? androidIcon,
    File? macosIcon,
    AttachmentMenuBotColor? iconColor,
    File? webAppPlaceholder,
    dynamic extra,
    int? clientId,
  }) => AttachmentMenuBot(
    botUserId: botUserId ?? this.botUserId,
    supportsSelfChat: supportsSelfChat ?? this.supportsSelfChat,
    supportsUserChats: supportsUserChats ?? this.supportsUserChats,
    supportsBotChats: supportsBotChats ?? this.supportsBotChats,
    supportsGroupChats: supportsGroupChats ?? this.supportsGroupChats,
    supportsChannelChats: supportsChannelChats ?? this.supportsChannelChats,
    supportsSettings: supportsSettings ?? this.supportsSettings,
    requestWriteAccess: requestWriteAccess ?? this.requestWriteAccess,
    name: name ?? this.name,
    nameColor: nameColor ?? this.nameColor,
    defaultIcon: defaultIcon ?? this.defaultIcon,
    iosStaticIcon: iosStaticIcon ?? this.iosStaticIcon,
    iosAnimatedIcon: iosAnimatedIcon ?? this.iosAnimatedIcon,
    androidIcon: androidIcon ?? this.androidIcon,
    macosIcon: macosIcon ?? this.macosIcon,
    iconColor: iconColor ?? this.iconColor,
    webAppPlaceholder: webAppPlaceholder ?? this.webAppPlaceholder,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'attachmentMenuBot';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

part of '../tdapi.dart';

/// **BotInfo** *(botInfo)* - basic class
  ///
  /// Contains information about a bot.
  ///
  /// * [shareText]: The text that is shown on the bot's profile page and is sent together with the link when users share the bot.
  /// * [description]: The text shown in the chat with the bot if the chat is empty.
  /// * [photo]: Photo shown in the chat with the bot if the chat is empty; may be null *(optional)*.
  /// * [animation]: Animation shown in the chat with the bot if the chat is empty; may be null *(optional)*.
  /// * [menuButton]: Information about a button to show instead of the bot commands menu button; may be null if ordinary bot commands menu must be shown *(optional)*.
  /// * [commands]: List of the bot commands.
  /// * [defaultGroupAdministratorRights]: Default administrator rights for adding the bot to basic group and supergroup chats; may be null *(optional)*.
  /// * [defaultChannelAdministratorRights]: Default administrator rights for adding the bot to channels; may be null *(optional)*.
class BotInfo extends TdObject {
  
  /// **BotInfo** *(botInfo)* - basic class
  ///
  /// Contains information about a bot.
  ///
  /// * [shareText]: The text that is shown on the bot's profile page and is sent together with the link when users share the bot.
  /// * [description]: The text shown in the chat with the bot if the chat is empty.
  /// * [photo]: Photo shown in the chat with the bot if the chat is empty; may be null *(optional)*.
  /// * [animation]: Animation shown in the chat with the bot if the chat is empty; may be null *(optional)*.
  /// * [menuButton]: Information about a button to show instead of the bot commands menu button; may be null if ordinary bot commands menu must be shown *(optional)*.
  /// * [commands]: List of the bot commands.
  /// * [defaultGroupAdministratorRights]: Default administrator rights for adding the bot to basic group and supergroup chats; may be null *(optional)*.
  /// * [defaultChannelAdministratorRights]: Default administrator rights for adding the bot to channels; may be null *(optional)*.
  const BotInfo({
    required this.shareText,
    required this.description,
    this.photo,
    this.animation,
    this.menuButton,
    required this.commands,
    this.defaultGroupAdministratorRights,
    this.defaultChannelAdministratorRights,
  });
  
  /// The text that is shown on the bot's profile page and is sent together with the link when users share the bot
  final String shareText;

  /// The text shown in the chat with the bot if the chat is empty
  final String description;

  /// Photo shown in the chat with the bot if the chat is empty; may be null
  final Photo? photo;

  /// Animation shown in the chat with the bot if the chat is empty; may be null
  final Animation? animation;

  /// Information about a button to show instead of the bot commands menu button; may be null if ordinary bot commands menu must be shown
  final BotMenuButton? menuButton;

  /// List of the bot commands
  final List<BotCommand> commands;

  /// Default administrator rights for adding the bot to basic group and supergroup chats; may be null
  final ChatAdministratorRights? defaultGroupAdministratorRights;

  /// Default administrator rights for adding the bot to channels; may be null
  final ChatAdministratorRights? defaultChannelAdministratorRights;
  
  /// Parse from a json
  factory BotInfo.fromJson(Map<String, dynamic> json) => BotInfo(
    shareText: json['share_text'],
    description: json['description'],
    photo: json['photo'] == null ? null : Photo.fromJson(json['photo']),
    animation: json['animation'] == null ? null : Animation.fromJson(json['animation']),
    menuButton: json['menu_button'] == null ? null : BotMenuButton.fromJson(json['menu_button']),
    commands: List<BotCommand>.from((json['commands'] ?? []).map((item) => BotCommand.fromJson(item)).toList()),
    defaultGroupAdministratorRights: json['default_group_administrator_rights'] == null ? null : ChatAdministratorRights.fromJson(json['default_group_administrator_rights']),
    defaultChannelAdministratorRights: json['default_channel_administrator_rights'] == null ? null : ChatAdministratorRights.fromJson(json['default_channel_administrator_rights']),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "share_text": shareText,
      "description": description,
      "photo": photo?.toJson(),
      "animation": animation?.toJson(),
      "menu_button": menuButton?.toJson(),
      "commands": commands.map((i) => i.toJson()).toList(),
      "default_group_administrator_rights": defaultGroupAdministratorRights?.toJson(),
      "default_channel_administrator_rights": defaultChannelAdministratorRights?.toJson(),
    };
  }
  
  BotInfo copyWith({
    String? shareText,
    String? description,
    Photo? photo,
    Animation? animation,
    BotMenuButton? menuButton,
    List<BotCommand>? commands,
    ChatAdministratorRights? defaultGroupAdministratorRights,
    ChatAdministratorRights? defaultChannelAdministratorRights,
  }) => BotInfo(
    shareText: shareText ?? this.shareText,
    description: description ?? this.description,
    photo: photo ?? this.photo,
    animation: animation ?? this.animation,
    menuButton: menuButton ?? this.menuButton,
    commands: commands ?? this.commands,
    defaultGroupAdministratorRights: defaultGroupAdministratorRights ?? this.defaultGroupAdministratorRights,
    defaultChannelAdministratorRights: defaultChannelAdministratorRights ?? this.defaultChannelAdministratorRights,
  );

  static const String constructor = 'botInfo';
  
  @override
  String getConstructor() => constructor;
}

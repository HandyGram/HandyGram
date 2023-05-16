part of '../tdapi.dart';

/// **InternalLinkType** *(internalLinkType)* - parent
///
/// Describes an internal https://t.me or tg: link, which must be processed by the application in a special way.
sealed class InternalLinkType extends TdObject {
  
  /// **InternalLinkType** *(internalLinkType)* - parent
  ///
  /// Describes an internal https://t.me or tg: link, which must be processed by the application in a special way.
  const InternalLinkType();
  
  /// a InternalLinkType return type can be :
  /// * [InternalLinkTypeActiveSessions]
  /// * [InternalLinkTypeAttachmentMenuBot]
  /// * [InternalLinkTypeAuthenticationCode]
  /// * [InternalLinkTypeBackground]
  /// * [InternalLinkTypeBotStart]
  /// * [InternalLinkTypeBotStartInGroup]
  /// * [InternalLinkTypeBotAddToChannel]
  /// * [InternalLinkTypeChangePhoneNumber]
  /// * [InternalLinkTypeChatInvite]
  /// * [InternalLinkTypeDefaultMessageAutoDeleteTimerSettings]
  /// * [InternalLinkTypeEditProfileSettings]
  /// * [InternalLinkTypeFilterSettings]
  /// * [InternalLinkTypeGame]
  /// * [InternalLinkTypeInstantView]
  /// * [InternalLinkTypeInvoice]
  /// * [InternalLinkTypeLanguagePack]
  /// * [InternalLinkTypeLanguageSettings]
  /// * [InternalLinkTypeMessage]
  /// * [InternalLinkTypeMessageDraft]
  /// * [InternalLinkTypePassportDataRequest]
  /// * [InternalLinkTypePhoneNumberConfirmation]
  /// * [InternalLinkTypePremiumFeatures]
  /// * [InternalLinkTypePrivacyAndSecuritySettings]
  /// * [InternalLinkTypeProxy]
  /// * [InternalLinkTypePublicChat]
  /// * [InternalLinkTypeQrCodeAuthentication]
  /// * [InternalLinkTypeRestorePurchases]
  /// * [InternalLinkTypeSettings]
  /// * [InternalLinkTypeStickerSet]
  /// * [InternalLinkTypeTheme]
  /// * [InternalLinkTypeThemeSettings]
  /// * [InternalLinkTypeUnknownDeepLink]
  /// * [InternalLinkTypeUnsupportedProxy]
  /// * [InternalLinkTypeUserPhoneNumber]
  /// * [InternalLinkTypeUserToken]
  /// * [InternalLinkTypeVideoChat]
  factory InternalLinkType.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case InternalLinkTypeActiveSessions.objectType:
        return InternalLinkTypeActiveSessions.fromJson(json);
      case InternalLinkTypeAttachmentMenuBot.objectType:
        return InternalLinkTypeAttachmentMenuBot.fromJson(json);
      case InternalLinkTypeAuthenticationCode.objectType:
        return InternalLinkTypeAuthenticationCode.fromJson(json);
      case InternalLinkTypeBackground.objectType:
        return InternalLinkTypeBackground.fromJson(json);
      case InternalLinkTypeBotStart.objectType:
        return InternalLinkTypeBotStart.fromJson(json);
      case InternalLinkTypeBotStartInGroup.objectType:
        return InternalLinkTypeBotStartInGroup.fromJson(json);
      case InternalLinkTypeBotAddToChannel.objectType:
        return InternalLinkTypeBotAddToChannel.fromJson(json);
      case InternalLinkTypeChangePhoneNumber.objectType:
        return InternalLinkTypeChangePhoneNumber.fromJson(json);
      case InternalLinkTypeChatInvite.objectType:
        return InternalLinkTypeChatInvite.fromJson(json);
      case InternalLinkTypeDefaultMessageAutoDeleteTimerSettings.objectType:
        return InternalLinkTypeDefaultMessageAutoDeleteTimerSettings.fromJson(json);
      case InternalLinkTypeEditProfileSettings.objectType:
        return InternalLinkTypeEditProfileSettings.fromJson(json);
      case InternalLinkTypeFilterSettings.objectType:
        return InternalLinkTypeFilterSettings.fromJson(json);
      case InternalLinkTypeGame.objectType:
        return InternalLinkTypeGame.fromJson(json);
      case InternalLinkTypeInstantView.objectType:
        return InternalLinkTypeInstantView.fromJson(json);
      case InternalLinkTypeInvoice.objectType:
        return InternalLinkTypeInvoice.fromJson(json);
      case InternalLinkTypeLanguagePack.objectType:
        return InternalLinkTypeLanguagePack.fromJson(json);
      case InternalLinkTypeLanguageSettings.objectType:
        return InternalLinkTypeLanguageSettings.fromJson(json);
      case InternalLinkTypeMessage.objectType:
        return InternalLinkTypeMessage.fromJson(json);
      case InternalLinkTypeMessageDraft.objectType:
        return InternalLinkTypeMessageDraft.fromJson(json);
      case InternalLinkTypePassportDataRequest.objectType:
        return InternalLinkTypePassportDataRequest.fromJson(json);
      case InternalLinkTypePhoneNumberConfirmation.objectType:
        return InternalLinkTypePhoneNumberConfirmation.fromJson(json);
      case InternalLinkTypePremiumFeatures.objectType:
        return InternalLinkTypePremiumFeatures.fromJson(json);
      case InternalLinkTypePrivacyAndSecuritySettings.objectType:
        return InternalLinkTypePrivacyAndSecuritySettings.fromJson(json);
      case InternalLinkTypeProxy.objectType:
        return InternalLinkTypeProxy.fromJson(json);
      case InternalLinkTypePublicChat.objectType:
        return InternalLinkTypePublicChat.fromJson(json);
      case InternalLinkTypeQrCodeAuthentication.objectType:
        return InternalLinkTypeQrCodeAuthentication.fromJson(json);
      case InternalLinkTypeRestorePurchases.objectType:
        return InternalLinkTypeRestorePurchases.fromJson(json);
      case InternalLinkTypeSettings.objectType:
        return InternalLinkTypeSettings.fromJson(json);
      case InternalLinkTypeStickerSet.objectType:
        return InternalLinkTypeStickerSet.fromJson(json);
      case InternalLinkTypeTheme.objectType:
        return InternalLinkTypeTheme.fromJson(json);
      case InternalLinkTypeThemeSettings.objectType:
        return InternalLinkTypeThemeSettings.fromJson(json);
      case InternalLinkTypeUnknownDeepLink.objectType:
        return InternalLinkTypeUnknownDeepLink.fromJson(json);
      case InternalLinkTypeUnsupportedProxy.objectType:
        return InternalLinkTypeUnsupportedProxy.fromJson(json);
      case InternalLinkTypeUserPhoneNumber.objectType:
        return InternalLinkTypeUserPhoneNumber.fromJson(json);
      case InternalLinkTypeUserToken.objectType:
        return InternalLinkTypeUserToken.fromJson(json);
      case InternalLinkTypeVideoChat.objectType:
        return InternalLinkTypeVideoChat.fromJson(json);
      default:
        throw FormatException(
          "Unknown object ${json["@type"]} (expected child of InternalLinkType)",
          json,
        );
    }
  }
  
  @override
  Map<String, dynamic> toJson();

  
  InternalLinkType copyWith();

  static const String objectType = 'internalLinkType';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **InternalLinkTypeActiveSessions** *(internalLinkTypeActiveSessions)* - child of InternalLinkType
///
/// The link is a link to the active sessions section of the application. Use getActiveSessions to handle the link.
final class InternalLinkTypeActiveSessions extends InternalLinkType {
  
  /// **InternalLinkTypeActiveSessions** *(internalLinkTypeActiveSessions)* - child of InternalLinkType
  ///
  /// The link is a link to the active sessions section of the application. Use getActiveSessions to handle the link.
  const InternalLinkTypeActiveSessions({
    this.extra,
    this.clientId,
  });
  
  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory InternalLinkTypeActiveSessions.fromJson(Map<String, dynamic> json) => InternalLinkTypeActiveSessions(
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  InternalLinkTypeActiveSessions copyWith({
    dynamic extra,
    int? clientId,
  }) => InternalLinkTypeActiveSessions(
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'internalLinkTypeActiveSessions';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **InternalLinkTypeAttachmentMenuBot** *(internalLinkTypeAttachmentMenuBot)* - child of InternalLinkType
///
/// The link is a link to an attachment menu bot to be opened in the specified or a chosen chat. Process given target_chat to open the chat.. Then, call searchPublicChat with the given bot username, check that the user is a bot and can be added to attachment menu. Then, use getAttachmentMenuBot to receive information about the bot.. If the bot isn't added to attachment menu, then user needs to confirm adding the bot to attachment menu. If user confirms adding, then use toggleBotIsAddedToAttachmentMenu to add it.. If the attachment menu bot can't be used in the opened chat, show an error to the user. If the bot is added to attachment menu and can be used in the chat, then use openWebApp with the given URL.
///
/// * [targetChat]: Target chat to be opened.
/// * [botUsername]: Username of the bot.
/// * [url]: URL to be passed to openWebApp.
final class InternalLinkTypeAttachmentMenuBot extends InternalLinkType {
  
  /// **InternalLinkTypeAttachmentMenuBot** *(internalLinkTypeAttachmentMenuBot)* - child of InternalLinkType
  ///
  /// The link is a link to an attachment menu bot to be opened in the specified or a chosen chat. Process given target_chat to open the chat.. Then, call searchPublicChat with the given bot username, check that the user is a bot and can be added to attachment menu. Then, use getAttachmentMenuBot to receive information about the bot.. If the bot isn't added to attachment menu, then user needs to confirm adding the bot to attachment menu. If user confirms adding, then use toggleBotIsAddedToAttachmentMenu to add it.. If the attachment menu bot can't be used in the opened chat, show an error to the user. If the bot is added to attachment menu and can be used in the chat, then use openWebApp with the given URL.
  ///
  /// * [targetChat]: Target chat to be opened.
  /// * [botUsername]: Username of the bot.
  /// * [url]: URL to be passed to openWebApp.
  const InternalLinkTypeAttachmentMenuBot({
    required this.targetChat,
    required this.botUsername,
    required this.url,
    this.extra,
    this.clientId,
  });
  
  /// Target chat to be opened
  final TargetChat targetChat;

  /// Username of the bot
  final String botUsername;

  /// URL to be passed to openWebApp
  final String url;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory InternalLinkTypeAttachmentMenuBot.fromJson(Map<String, dynamic> json) => InternalLinkTypeAttachmentMenuBot(
    targetChat: TargetChat.fromJson(json['target_chat']),
    botUsername: json['bot_username'],
    url: json['url'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "target_chat": targetChat.toJson(),
      "bot_username": botUsername,
      "url": url,
		};
	}

  
  @override
  InternalLinkTypeAttachmentMenuBot copyWith({
    TargetChat? targetChat,
    String? botUsername,
    String? url,
    dynamic extra,
    int? clientId,
  }) => InternalLinkTypeAttachmentMenuBot(
    targetChat: targetChat ?? this.targetChat,
    botUsername: botUsername ?? this.botUsername,
    url: url ?? this.url,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'internalLinkTypeAttachmentMenuBot';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **InternalLinkTypeAuthenticationCode** *(internalLinkTypeAuthenticationCode)* - child of InternalLinkType
///
/// The link contains an authentication code. Call checkAuthenticationCode with the code if the current authorization state is authorizationStateWaitCode.
///
/// * [code]: The authentication code.
final class InternalLinkTypeAuthenticationCode extends InternalLinkType {
  
  /// **InternalLinkTypeAuthenticationCode** *(internalLinkTypeAuthenticationCode)* - child of InternalLinkType
  ///
  /// The link contains an authentication code. Call checkAuthenticationCode with the code if the current authorization state is authorizationStateWaitCode.
  ///
  /// * [code]: The authentication code.
  const InternalLinkTypeAuthenticationCode({
    required this.code,
    this.extra,
    this.clientId,
  });
  
  /// The authentication code
  final String code;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory InternalLinkTypeAuthenticationCode.fromJson(Map<String, dynamic> json) => InternalLinkTypeAuthenticationCode(
    code: json['code'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "code": code,
		};
	}

  
  @override
  InternalLinkTypeAuthenticationCode copyWith({
    String? code,
    dynamic extra,
    int? clientId,
  }) => InternalLinkTypeAuthenticationCode(
    code: code ?? this.code,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'internalLinkTypeAuthenticationCode';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **InternalLinkTypeBackground** *(internalLinkTypeBackground)* - child of InternalLinkType
///
/// The link is a link to a background. Call searchBackground with the given background name to process the link.
///
/// * [backgroundName]: Name of the background.
final class InternalLinkTypeBackground extends InternalLinkType {
  
  /// **InternalLinkTypeBackground** *(internalLinkTypeBackground)* - child of InternalLinkType
  ///
  /// The link is a link to a background. Call searchBackground with the given background name to process the link.
  ///
  /// * [backgroundName]: Name of the background.
  const InternalLinkTypeBackground({
    required this.backgroundName,
    this.extra,
    this.clientId,
  });
  
  /// Name of the background
  final String backgroundName;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory InternalLinkTypeBackground.fromJson(Map<String, dynamic> json) => InternalLinkTypeBackground(
    backgroundName: json['background_name'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "background_name": backgroundName,
		};
	}

  
  @override
  InternalLinkTypeBackground copyWith({
    String? backgroundName,
    dynamic extra,
    int? clientId,
  }) => InternalLinkTypeBackground(
    backgroundName: backgroundName ?? this.backgroundName,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'internalLinkTypeBackground';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **InternalLinkTypeBotStart** *(internalLinkTypeBotStart)* - child of InternalLinkType
///
/// The link is a link to a chat with a Telegram bot. Call searchPublicChat with the given bot username, check that the user is a bot, show START button in the chat with the bot,. and then call sendBotStartMessage with the given start parameter after the button is pressed.
///
/// * [botUsername]: Username of the bot.
/// * [startParameter]: The parameter to be passed to sendBotStartMessage.
/// * [autostart]: True, if sendBotStartMessage must be called automatically without showing the START button.
final class InternalLinkTypeBotStart extends InternalLinkType {
  
  /// **InternalLinkTypeBotStart** *(internalLinkTypeBotStart)* - child of InternalLinkType
  ///
  /// The link is a link to a chat with a Telegram bot. Call searchPublicChat with the given bot username, check that the user is a bot, show START button in the chat with the bot,. and then call sendBotStartMessage with the given start parameter after the button is pressed.
  ///
  /// * [botUsername]: Username of the bot.
  /// * [startParameter]: The parameter to be passed to sendBotStartMessage.
  /// * [autostart]: True, if sendBotStartMessage must be called automatically without showing the START button.
  const InternalLinkTypeBotStart({
    required this.botUsername,
    required this.startParameter,
    required this.autostart,
    this.extra,
    this.clientId,
  });
  
  /// Username of the bot
  final String botUsername;

  /// The parameter to be passed to sendBotStartMessage
  final String startParameter;

  /// True, if sendBotStartMessage must be called automatically without showing the START button
  final bool autostart;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory InternalLinkTypeBotStart.fromJson(Map<String, dynamic> json) => InternalLinkTypeBotStart(
    botUsername: json['bot_username'],
    startParameter: json['start_parameter'],
    autostart: json['autostart'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "bot_username": botUsername,
      "start_parameter": startParameter,
      "autostart": autostart,
		};
	}

  
  @override
  InternalLinkTypeBotStart copyWith({
    String? botUsername,
    String? startParameter,
    bool? autostart,
    dynamic extra,
    int? clientId,
  }) => InternalLinkTypeBotStart(
    botUsername: botUsername ?? this.botUsername,
    startParameter: startParameter ?? this.startParameter,
    autostart: autostart ?? this.autostart,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'internalLinkTypeBotStart';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **InternalLinkTypeBotStartInGroup** *(internalLinkTypeBotStartInGroup)* - child of InternalLinkType
///
/// The link is a link to a Telegram bot, which is supposed to be added to a group chat. Call searchPublicChat with the given bot username, check that the user is a bot and can be added to groups,. ask the current user to select a basic group or a supergroup chat to add the bot to, taking into account that bots can be added to a public supergroup only by administrators of the supergroup.. If administrator rights are provided by the link, call getChatMember to receive the current bot rights in the chat and if the bot already is an administrator,. check that the current user can edit its administrator rights, combine received rights with the requested administrator rights, show confirmation box to the user,. and call setChatMemberStatus with the chosen chat and confirmed administrator rights. Before call to setChatMemberStatus it may be required to upgrade the chosen basic group chat to a supergroup chat.. Then, if start_parameter isn't empty, call sendBotStartMessage with the given start parameter and the chosen chat; otherwise, just send /start message with bot's username added to the chat.
///
/// * [botUsername]: Username of the bot.
/// * [startParameter]: The parameter to be passed to sendBotStartMessage.
/// * [administratorRights]: Expected administrator rights for the bot; may be null *(optional)*.
final class InternalLinkTypeBotStartInGroup extends InternalLinkType {
  
  /// **InternalLinkTypeBotStartInGroup** *(internalLinkTypeBotStartInGroup)* - child of InternalLinkType
  ///
  /// The link is a link to a Telegram bot, which is supposed to be added to a group chat. Call searchPublicChat with the given bot username, check that the user is a bot and can be added to groups,. ask the current user to select a basic group or a supergroup chat to add the bot to, taking into account that bots can be added to a public supergroup only by administrators of the supergroup.. If administrator rights are provided by the link, call getChatMember to receive the current bot rights in the chat and if the bot already is an administrator,. check that the current user can edit its administrator rights, combine received rights with the requested administrator rights, show confirmation box to the user,. and call setChatMemberStatus with the chosen chat and confirmed administrator rights. Before call to setChatMemberStatus it may be required to upgrade the chosen basic group chat to a supergroup chat.. Then, if start_parameter isn't empty, call sendBotStartMessage with the given start parameter and the chosen chat; otherwise, just send /start message with bot's username added to the chat.
  ///
  /// * [botUsername]: Username of the bot.
  /// * [startParameter]: The parameter to be passed to sendBotStartMessage.
  /// * [administratorRights]: Expected administrator rights for the bot; may be null *(optional)*.
  const InternalLinkTypeBotStartInGroup({
    required this.botUsername,
    required this.startParameter,
    this.administratorRights,
    this.extra,
    this.clientId,
  });
  
  /// Username of the bot
  final String botUsername;

  /// The parameter to be passed to sendBotStartMessage
  final String startParameter;

  /// Expected administrator rights for the bot; may be null
  final ChatAdministratorRights? administratorRights;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory InternalLinkTypeBotStartInGroup.fromJson(Map<String, dynamic> json) => InternalLinkTypeBotStartInGroup(
    botUsername: json['bot_username'],
    startParameter: json['start_parameter'],
    administratorRights: json['administrator_rights'] == null ? null : ChatAdministratorRights.fromJson(json['administrator_rights']),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "bot_username": botUsername,
      "start_parameter": startParameter,
      "administrator_rights": administratorRights?.toJson(),
		};
	}

  
  @override
  InternalLinkTypeBotStartInGroup copyWith({
    String? botUsername,
    String? startParameter,
    ChatAdministratorRights? administratorRights,
    dynamic extra,
    int? clientId,
  }) => InternalLinkTypeBotStartInGroup(
    botUsername: botUsername ?? this.botUsername,
    startParameter: startParameter ?? this.startParameter,
    administratorRights: administratorRights ?? this.administratorRights,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'internalLinkTypeBotStartInGroup';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **InternalLinkTypeBotAddToChannel** *(internalLinkTypeBotAddToChannel)* - child of InternalLinkType
///
/// The link is a link to a Telegram bot, which is supposed to be added to a channel chat as an administrator. Call searchPublicChat with the given bot username and check that the user is a bot,. ask the current user to select a channel chat to add the bot to as an administrator. Then, call getChatMember to receive the current bot rights in the chat and if the bot already is an administrator,. check that the current user can edit its administrator rights and combine received rights with the requested administrator rights. Then, show confirmation box to the user, and call setChatMemberStatus with the chosen chat and confirmed rights.
///
/// * [botUsername]: Username of the bot.
/// * [administratorRights]: Expected administrator rights for the bot.
final class InternalLinkTypeBotAddToChannel extends InternalLinkType {
  
  /// **InternalLinkTypeBotAddToChannel** *(internalLinkTypeBotAddToChannel)* - child of InternalLinkType
  ///
  /// The link is a link to a Telegram bot, which is supposed to be added to a channel chat as an administrator. Call searchPublicChat with the given bot username and check that the user is a bot,. ask the current user to select a channel chat to add the bot to as an administrator. Then, call getChatMember to receive the current bot rights in the chat and if the bot already is an administrator,. check that the current user can edit its administrator rights and combine received rights with the requested administrator rights. Then, show confirmation box to the user, and call setChatMemberStatus with the chosen chat and confirmed rights.
  ///
  /// * [botUsername]: Username of the bot.
  /// * [administratorRights]: Expected administrator rights for the bot.
  const InternalLinkTypeBotAddToChannel({
    required this.botUsername,
    required this.administratorRights,
    this.extra,
    this.clientId,
  });
  
  /// Username of the bot
  final String botUsername;

  /// Expected administrator rights for the bot
  final ChatAdministratorRights administratorRights;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory InternalLinkTypeBotAddToChannel.fromJson(Map<String, dynamic> json) => InternalLinkTypeBotAddToChannel(
    botUsername: json['bot_username'],
    administratorRights: ChatAdministratorRights.fromJson(json['administrator_rights']),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "bot_username": botUsername,
      "administrator_rights": administratorRights.toJson(),
		};
	}

  
  @override
  InternalLinkTypeBotAddToChannel copyWith({
    String? botUsername,
    ChatAdministratorRights? administratorRights,
    dynamic extra,
    int? clientId,
  }) => InternalLinkTypeBotAddToChannel(
    botUsername: botUsername ?? this.botUsername,
    administratorRights: administratorRights ?? this.administratorRights,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'internalLinkTypeBotAddToChannel';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **InternalLinkTypeChangePhoneNumber** *(internalLinkTypeChangePhoneNumber)* - child of InternalLinkType
///
/// The link is a link to the change phone number section of the app.
final class InternalLinkTypeChangePhoneNumber extends InternalLinkType {
  
  /// **InternalLinkTypeChangePhoneNumber** *(internalLinkTypeChangePhoneNumber)* - child of InternalLinkType
  ///
  /// The link is a link to the change phone number section of the app.
  const InternalLinkTypeChangePhoneNumber({
    this.extra,
    this.clientId,
  });
  
  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory InternalLinkTypeChangePhoneNumber.fromJson(Map<String, dynamic> json) => InternalLinkTypeChangePhoneNumber(
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  InternalLinkTypeChangePhoneNumber copyWith({
    dynamic extra,
    int? clientId,
  }) => InternalLinkTypeChangePhoneNumber(
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'internalLinkTypeChangePhoneNumber';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **InternalLinkTypeChatInvite** *(internalLinkTypeChatInvite)* - child of InternalLinkType
///
/// The link is a chat invite link. Call checkChatInviteLink with the given invite link to process the link.
///
/// * [inviteLink]: Internal representation of the invite link.
final class InternalLinkTypeChatInvite extends InternalLinkType {
  
  /// **InternalLinkTypeChatInvite** *(internalLinkTypeChatInvite)* - child of InternalLinkType
  ///
  /// The link is a chat invite link. Call checkChatInviteLink with the given invite link to process the link.
  ///
  /// * [inviteLink]: Internal representation of the invite link.
  const InternalLinkTypeChatInvite({
    required this.inviteLink,
    this.extra,
    this.clientId,
  });
  
  /// Internal representation of the invite link
  final String inviteLink;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory InternalLinkTypeChatInvite.fromJson(Map<String, dynamic> json) => InternalLinkTypeChatInvite(
    inviteLink: json['invite_link'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "invite_link": inviteLink,
		};
	}

  
  @override
  InternalLinkTypeChatInvite copyWith({
    String? inviteLink,
    dynamic extra,
    int? clientId,
  }) => InternalLinkTypeChatInvite(
    inviteLink: inviteLink ?? this.inviteLink,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'internalLinkTypeChatInvite';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **InternalLinkTypeDefaultMessageAutoDeleteTimerSettings** *(internalLinkTypeDefaultMessageAutoDeleteTimerSettings)* - child of InternalLinkType
///
/// The link is a link to the default message auto-delete timer settings section of the app settings.
final class InternalLinkTypeDefaultMessageAutoDeleteTimerSettings extends InternalLinkType {
  
  /// **InternalLinkTypeDefaultMessageAutoDeleteTimerSettings** *(internalLinkTypeDefaultMessageAutoDeleteTimerSettings)* - child of InternalLinkType
  ///
  /// The link is a link to the default message auto-delete timer settings section of the app settings.
  const InternalLinkTypeDefaultMessageAutoDeleteTimerSettings({
    this.extra,
    this.clientId,
  });
  
  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory InternalLinkTypeDefaultMessageAutoDeleteTimerSettings.fromJson(Map<String, dynamic> json) => InternalLinkTypeDefaultMessageAutoDeleteTimerSettings(
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  InternalLinkTypeDefaultMessageAutoDeleteTimerSettings copyWith({
    dynamic extra,
    int? clientId,
  }) => InternalLinkTypeDefaultMessageAutoDeleteTimerSettings(
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'internalLinkTypeDefaultMessageAutoDeleteTimerSettings';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **InternalLinkTypeEditProfileSettings** *(internalLinkTypeEditProfileSettings)* - child of InternalLinkType
///
/// The link is a link to the edit profile section of the app settings.
final class InternalLinkTypeEditProfileSettings extends InternalLinkType {
  
  /// **InternalLinkTypeEditProfileSettings** *(internalLinkTypeEditProfileSettings)* - child of InternalLinkType
  ///
  /// The link is a link to the edit profile section of the app settings.
  const InternalLinkTypeEditProfileSettings({
    this.extra,
    this.clientId,
  });
  
  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory InternalLinkTypeEditProfileSettings.fromJson(Map<String, dynamic> json) => InternalLinkTypeEditProfileSettings(
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  InternalLinkTypeEditProfileSettings copyWith({
    dynamic extra,
    int? clientId,
  }) => InternalLinkTypeEditProfileSettings(
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'internalLinkTypeEditProfileSettings';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **InternalLinkTypeFilterSettings** *(internalLinkTypeFilterSettings)* - child of InternalLinkType
///
/// The link is a link to the filter section of the app settings.
final class InternalLinkTypeFilterSettings extends InternalLinkType {
  
  /// **InternalLinkTypeFilterSettings** *(internalLinkTypeFilterSettings)* - child of InternalLinkType
  ///
  /// The link is a link to the filter section of the app settings.
  const InternalLinkTypeFilterSettings({
    this.extra,
    this.clientId,
  });
  
  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory InternalLinkTypeFilterSettings.fromJson(Map<String, dynamic> json) => InternalLinkTypeFilterSettings(
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  InternalLinkTypeFilterSettings copyWith({
    dynamic extra,
    int? clientId,
  }) => InternalLinkTypeFilterSettings(
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'internalLinkTypeFilterSettings';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **InternalLinkTypeGame** *(internalLinkTypeGame)* - child of InternalLinkType
///
/// The link is a link to a game. Call searchPublicChat with the given bot username, check that the user is a bot, ask the current user to select a chat to send the game, and then call sendMessage with inputMessageGame.
///
/// * [botUsername]: Username of the bot that owns the game.
/// * [gameShortName]: Short name of the game.
final class InternalLinkTypeGame extends InternalLinkType {
  
  /// **InternalLinkTypeGame** *(internalLinkTypeGame)* - child of InternalLinkType
  ///
  /// The link is a link to a game. Call searchPublicChat with the given bot username, check that the user is a bot, ask the current user to select a chat to send the game, and then call sendMessage with inputMessageGame.
  ///
  /// * [botUsername]: Username of the bot that owns the game.
  /// * [gameShortName]: Short name of the game.
  const InternalLinkTypeGame({
    required this.botUsername,
    required this.gameShortName,
    this.extra,
    this.clientId,
  });
  
  /// Username of the bot that owns the game
  final String botUsername;

  /// Short name of the game
  final String gameShortName;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory InternalLinkTypeGame.fromJson(Map<String, dynamic> json) => InternalLinkTypeGame(
    botUsername: json['bot_username'],
    gameShortName: json['game_short_name'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "bot_username": botUsername,
      "game_short_name": gameShortName,
		};
	}

  
  @override
  InternalLinkTypeGame copyWith({
    String? botUsername,
    String? gameShortName,
    dynamic extra,
    int? clientId,
  }) => InternalLinkTypeGame(
    botUsername: botUsername ?? this.botUsername,
    gameShortName: gameShortName ?? this.gameShortName,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'internalLinkTypeGame';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **InternalLinkTypeInstantView** *(internalLinkTypeInstantView)* - child of InternalLinkType
///
/// The link must be opened in an Instant View. Call getWebPageInstantView with the given URL to process the link.
///
/// * [url]: URL to be passed to getWebPageInstantView.
/// * [fallbackUrl]: An URL to open if getWebPageInstantView fails.
final class InternalLinkTypeInstantView extends InternalLinkType {
  
  /// **InternalLinkTypeInstantView** *(internalLinkTypeInstantView)* - child of InternalLinkType
  ///
  /// The link must be opened in an Instant View. Call getWebPageInstantView with the given URL to process the link.
  ///
  /// * [url]: URL to be passed to getWebPageInstantView.
  /// * [fallbackUrl]: An URL to open if getWebPageInstantView fails.
  const InternalLinkTypeInstantView({
    required this.url,
    required this.fallbackUrl,
    this.extra,
    this.clientId,
  });
  
  /// URL to be passed to getWebPageInstantView 
  final String url;

  /// An URL to open if getWebPageInstantView fails
  final String fallbackUrl;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory InternalLinkTypeInstantView.fromJson(Map<String, dynamic> json) => InternalLinkTypeInstantView(
    url: json['url'],
    fallbackUrl: json['fallback_url'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "url": url,
      "fallback_url": fallbackUrl,
		};
	}

  
  @override
  InternalLinkTypeInstantView copyWith({
    String? url,
    String? fallbackUrl,
    dynamic extra,
    int? clientId,
  }) => InternalLinkTypeInstantView(
    url: url ?? this.url,
    fallbackUrl: fallbackUrl ?? this.fallbackUrl,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'internalLinkTypeInstantView';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **InternalLinkTypeInvoice** *(internalLinkTypeInvoice)* - child of InternalLinkType
///
/// The link is a link to an invoice. Call getPaymentForm with the given invoice name to process the link.
///
/// * [invoiceName]: Name of the invoice.
final class InternalLinkTypeInvoice extends InternalLinkType {
  
  /// **InternalLinkTypeInvoice** *(internalLinkTypeInvoice)* - child of InternalLinkType
  ///
  /// The link is a link to an invoice. Call getPaymentForm with the given invoice name to process the link.
  ///
  /// * [invoiceName]: Name of the invoice.
  const InternalLinkTypeInvoice({
    required this.invoiceName,
    this.extra,
    this.clientId,
  });
  
  /// Name of the invoice
  final String invoiceName;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory InternalLinkTypeInvoice.fromJson(Map<String, dynamic> json) => InternalLinkTypeInvoice(
    invoiceName: json['invoice_name'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "invoice_name": invoiceName,
		};
	}

  
  @override
  InternalLinkTypeInvoice copyWith({
    String? invoiceName,
    dynamic extra,
    int? clientId,
  }) => InternalLinkTypeInvoice(
    invoiceName: invoiceName ?? this.invoiceName,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'internalLinkTypeInvoice';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **InternalLinkTypeLanguagePack** *(internalLinkTypeLanguagePack)* - child of InternalLinkType
///
/// The link is a link to a language pack. Call getLanguagePackInfo with the given language pack identifier to process the link.
///
/// * [languagePackId]: Language pack identifier.
final class InternalLinkTypeLanguagePack extends InternalLinkType {
  
  /// **InternalLinkTypeLanguagePack** *(internalLinkTypeLanguagePack)* - child of InternalLinkType
  ///
  /// The link is a link to a language pack. Call getLanguagePackInfo with the given language pack identifier to process the link.
  ///
  /// * [languagePackId]: Language pack identifier.
  const InternalLinkTypeLanguagePack({
    required this.languagePackId,
    this.extra,
    this.clientId,
  });
  
  /// Language pack identifier
  final String languagePackId;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory InternalLinkTypeLanguagePack.fromJson(Map<String, dynamic> json) => InternalLinkTypeLanguagePack(
    languagePackId: json['language_pack_id'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "language_pack_id": languagePackId,
		};
	}

  
  @override
  InternalLinkTypeLanguagePack copyWith({
    String? languagePackId,
    dynamic extra,
    int? clientId,
  }) => InternalLinkTypeLanguagePack(
    languagePackId: languagePackId ?? this.languagePackId,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'internalLinkTypeLanguagePack';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **InternalLinkTypeLanguageSettings** *(internalLinkTypeLanguageSettings)* - child of InternalLinkType
///
/// The link is a link to the language section of the app settings.
final class InternalLinkTypeLanguageSettings extends InternalLinkType {
  
  /// **InternalLinkTypeLanguageSettings** *(internalLinkTypeLanguageSettings)* - child of InternalLinkType
  ///
  /// The link is a link to the language section of the app settings.
  const InternalLinkTypeLanguageSettings({
    this.extra,
    this.clientId,
  });
  
  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory InternalLinkTypeLanguageSettings.fromJson(Map<String, dynamic> json) => InternalLinkTypeLanguageSettings(
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  InternalLinkTypeLanguageSettings copyWith({
    dynamic extra,
    int? clientId,
  }) => InternalLinkTypeLanguageSettings(
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'internalLinkTypeLanguageSettings';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **InternalLinkTypeMessage** *(internalLinkTypeMessage)* - child of InternalLinkType
///
/// The link is a link to a Telegram message or a forum topic. Call getMessageLinkInfo with the given URL to process the link.
///
/// * [url]: URL to be passed to getMessageLinkInfo.
final class InternalLinkTypeMessage extends InternalLinkType {
  
  /// **InternalLinkTypeMessage** *(internalLinkTypeMessage)* - child of InternalLinkType
  ///
  /// The link is a link to a Telegram message or a forum topic. Call getMessageLinkInfo with the given URL to process the link.
  ///
  /// * [url]: URL to be passed to getMessageLinkInfo.
  const InternalLinkTypeMessage({
    required this.url,
    this.extra,
    this.clientId,
  });
  
  /// URL to be passed to getMessageLinkInfo
  final String url;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory InternalLinkTypeMessage.fromJson(Map<String, dynamic> json) => InternalLinkTypeMessage(
    url: json['url'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "url": url,
		};
	}

  
  @override
  InternalLinkTypeMessage copyWith({
    String? url,
    dynamic extra,
    int? clientId,
  }) => InternalLinkTypeMessage(
    url: url ?? this.url,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'internalLinkTypeMessage';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **InternalLinkTypeMessageDraft** *(internalLinkTypeMessageDraft)* - child of InternalLinkType
///
/// The link contains a message draft text. A share screen needs to be shown to the user, then the chosen chat must be opened and the text is added to the input field.
///
/// * [text]: Message draft text.
/// * [containsLink]: True, if the first line of the text contains a link. If true, the input field needs to be focused and the text after the link must be selected.
final class InternalLinkTypeMessageDraft extends InternalLinkType {
  
  /// **InternalLinkTypeMessageDraft** *(internalLinkTypeMessageDraft)* - child of InternalLinkType
  ///
  /// The link contains a message draft text. A share screen needs to be shown to the user, then the chosen chat must be opened and the text is added to the input field.
  ///
  /// * [text]: Message draft text.
  /// * [containsLink]: True, if the first line of the text contains a link. If true, the input field needs to be focused and the text after the link must be selected.
  const InternalLinkTypeMessageDraft({
    required this.text,
    required this.containsLink,
    this.extra,
    this.clientId,
  });
  
  /// Message draft text
  final FormattedText text;

  /// True, if the first line of the text contains a link. If true, the input field needs to be focused and the text after the link must be selected
  final bool containsLink;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory InternalLinkTypeMessageDraft.fromJson(Map<String, dynamic> json) => InternalLinkTypeMessageDraft(
    text: FormattedText.fromJson(json['text']),
    containsLink: json['contains_link'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "text": text.toJson(),
      "contains_link": containsLink,
		};
	}

  
  @override
  InternalLinkTypeMessageDraft copyWith({
    FormattedText? text,
    bool? containsLink,
    dynamic extra,
    int? clientId,
  }) => InternalLinkTypeMessageDraft(
    text: text ?? this.text,
    containsLink: containsLink ?? this.containsLink,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'internalLinkTypeMessageDraft';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **InternalLinkTypePassportDataRequest** *(internalLinkTypePassportDataRequest)* - child of InternalLinkType
///
/// The link contains a request of Telegram passport data. Call getPassportAuthorizationForm with the given parameters to process the link if the link was received from outside of the application; otherwise, ignore it.
///
/// * [botUserId]: User identifier of the service's bot.
/// * [scope]: Telegram Passport element types requested by the service.
/// * [publicKey]: Service's public key.
/// * [nonce]: Unique request identifier provided by the service.
/// * [callbackUrl]: An HTTP URL to open once the request is finished, canceled, or failed with the parameters tg_passport=success, tg_passport=cancel, or tg_passport=error&error=... respectively.. If empty, then onActivityResult method must be used to return response on Android, or the link tgbot{bot_user_id}://passport/success or tgbot{bot_user_id}://passport/cancel must be opened otherwise.
final class InternalLinkTypePassportDataRequest extends InternalLinkType {
  
  /// **InternalLinkTypePassportDataRequest** *(internalLinkTypePassportDataRequest)* - child of InternalLinkType
  ///
  /// The link contains a request of Telegram passport data. Call getPassportAuthorizationForm with the given parameters to process the link if the link was received from outside of the application; otherwise, ignore it.
  ///
  /// * [botUserId]: User identifier of the service's bot.
  /// * [scope]: Telegram Passport element types requested by the service.
  /// * [publicKey]: Service's public key.
  /// * [nonce]: Unique request identifier provided by the service.
  /// * [callbackUrl]: An HTTP URL to open once the request is finished, canceled, or failed with the parameters tg_passport=success, tg_passport=cancel, or tg_passport=error&error=... respectively.. If empty, then onActivityResult method must be used to return response on Android, or the link tgbot{bot_user_id}://passport/success or tgbot{bot_user_id}://passport/cancel must be opened otherwise.
  const InternalLinkTypePassportDataRequest({
    required this.botUserId,
    required this.scope,
    required this.publicKey,
    required this.nonce,
    required this.callbackUrl,
    this.extra,
    this.clientId,
  });
  
  /// User identifier of the service's bot
  final int botUserId;

  /// Telegram Passport element types requested by the service
  final String scope;

  /// Service's public key
  final String publicKey;

  /// Unique request identifier provided by the service
  final String nonce;

  /// An HTTP URL to open once the request is finished, canceled, or failed with the parameters tg_passport=success, tg_passport=cancel, or tg_passport=error&error=... respectively.. If empty, then onActivityResult method must be used to return response on Android, or the link tgbot{bot_user_id}://passport/success or tgbot{bot_user_id}://passport/cancel must be opened otherwise
  final String callbackUrl;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory InternalLinkTypePassportDataRequest.fromJson(Map<String, dynamic> json) => InternalLinkTypePassportDataRequest(
    botUserId: json['bot_user_id'],
    scope: json['scope'],
    publicKey: json['public_key'],
    nonce: json['nonce'],
    callbackUrl: json['callback_url'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "bot_user_id": botUserId,
      "scope": scope,
      "public_key": publicKey,
      "nonce": nonce,
      "callback_url": callbackUrl,
		};
	}

  
  @override
  InternalLinkTypePassportDataRequest copyWith({
    int? botUserId,
    String? scope,
    String? publicKey,
    String? nonce,
    String? callbackUrl,
    dynamic extra,
    int? clientId,
  }) => InternalLinkTypePassportDataRequest(
    botUserId: botUserId ?? this.botUserId,
    scope: scope ?? this.scope,
    publicKey: publicKey ?? this.publicKey,
    nonce: nonce ?? this.nonce,
    callbackUrl: callbackUrl ?? this.callbackUrl,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'internalLinkTypePassportDataRequest';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **InternalLinkTypePhoneNumberConfirmation** *(internalLinkTypePhoneNumberConfirmation)* - child of InternalLinkType
///
/// The link can be used to confirm ownership of a phone number to prevent account deletion. Call sendPhoneNumberConfirmationCode with the given hash and phone number to process the link.
///
/// * [hash]: Hash value from the link.
/// * [phoneNumber]: Phone number value from the link.
final class InternalLinkTypePhoneNumberConfirmation extends InternalLinkType {
  
  /// **InternalLinkTypePhoneNumberConfirmation** *(internalLinkTypePhoneNumberConfirmation)* - child of InternalLinkType
  ///
  /// The link can be used to confirm ownership of a phone number to prevent account deletion. Call sendPhoneNumberConfirmationCode with the given hash and phone number to process the link.
  ///
  /// * [hash]: Hash value from the link.
  /// * [phoneNumber]: Phone number value from the link.
  const InternalLinkTypePhoneNumberConfirmation({
    required this.hash,
    required this.phoneNumber,
    this.extra,
    this.clientId,
  });
  
  /// Hash value from the link
  final String hash;

  /// Phone number value from the link
  final String phoneNumber;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory InternalLinkTypePhoneNumberConfirmation.fromJson(Map<String, dynamic> json) => InternalLinkTypePhoneNumberConfirmation(
    hash: json['hash'],
    phoneNumber: json['phone_number'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "hash": hash,
      "phone_number": phoneNumber,
		};
	}

  
  @override
  InternalLinkTypePhoneNumberConfirmation copyWith({
    String? hash,
    String? phoneNumber,
    dynamic extra,
    int? clientId,
  }) => InternalLinkTypePhoneNumberConfirmation(
    hash: hash ?? this.hash,
    phoneNumber: phoneNumber ?? this.phoneNumber,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'internalLinkTypePhoneNumberConfirmation';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **InternalLinkTypePremiumFeatures** *(internalLinkTypePremiumFeatures)* - child of InternalLinkType
///
/// The link is a link to the Premium features screen of the applcation from which the user can subscribe to Telegram Premium. Call getPremiumFeatures with the given referrer to process the link.
///
/// * [referrer]: Referrer specified in the link.
final class InternalLinkTypePremiumFeatures extends InternalLinkType {
  
  /// **InternalLinkTypePremiumFeatures** *(internalLinkTypePremiumFeatures)* - child of InternalLinkType
  ///
  /// The link is a link to the Premium features screen of the applcation from which the user can subscribe to Telegram Premium. Call getPremiumFeatures with the given referrer to process the link.
  ///
  /// * [referrer]: Referrer specified in the link.
  const InternalLinkTypePremiumFeatures({
    required this.referrer,
    this.extra,
    this.clientId,
  });
  
  /// Referrer specified in the link
  final String referrer;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory InternalLinkTypePremiumFeatures.fromJson(Map<String, dynamic> json) => InternalLinkTypePremiumFeatures(
    referrer: json['referrer'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "referrer": referrer,
		};
	}

  
  @override
  InternalLinkTypePremiumFeatures copyWith({
    String? referrer,
    dynamic extra,
    int? clientId,
  }) => InternalLinkTypePremiumFeatures(
    referrer: referrer ?? this.referrer,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'internalLinkTypePremiumFeatures';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **InternalLinkTypePrivacyAndSecuritySettings** *(internalLinkTypePrivacyAndSecuritySettings)* - child of InternalLinkType
///
/// The link is a link to the privacy and security section of the app settings.
final class InternalLinkTypePrivacyAndSecuritySettings extends InternalLinkType {
  
  /// **InternalLinkTypePrivacyAndSecuritySettings** *(internalLinkTypePrivacyAndSecuritySettings)* - child of InternalLinkType
  ///
  /// The link is a link to the privacy and security section of the app settings.
  const InternalLinkTypePrivacyAndSecuritySettings({
    this.extra,
    this.clientId,
  });
  
  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory InternalLinkTypePrivacyAndSecuritySettings.fromJson(Map<String, dynamic> json) => InternalLinkTypePrivacyAndSecuritySettings(
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  InternalLinkTypePrivacyAndSecuritySettings copyWith({
    dynamic extra,
    int? clientId,
  }) => InternalLinkTypePrivacyAndSecuritySettings(
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'internalLinkTypePrivacyAndSecuritySettings';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **InternalLinkTypeProxy** *(internalLinkTypeProxy)* - child of InternalLinkType
///
/// The link is a link to a proxy. Call addProxy with the given parameters to process the link and add the proxy.
///
/// * [server]: Proxy server IP address.
/// * [port]: Proxy server port.
/// * [type]: Type of the proxy.
final class InternalLinkTypeProxy extends InternalLinkType {
  
  /// **InternalLinkTypeProxy** *(internalLinkTypeProxy)* - child of InternalLinkType
  ///
  /// The link is a link to a proxy. Call addProxy with the given parameters to process the link and add the proxy.
  ///
  /// * [server]: Proxy server IP address.
  /// * [port]: Proxy server port.
  /// * [type]: Type of the proxy.
  const InternalLinkTypeProxy({
    required this.server,
    required this.port,
    required this.type,
    this.extra,
    this.clientId,
  });
  
  /// Proxy server IP address
  final String server;

  /// Proxy server port
  final int port;

  /// Type of the proxy
  final ProxyType type;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory InternalLinkTypeProxy.fromJson(Map<String, dynamic> json) => InternalLinkTypeProxy(
    server: json['server'],
    port: json['port'],
    type: ProxyType.fromJson(json['type']),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "server": server,
      "port": port,
      "type": type.toJson(),
		};
	}

  
  @override
  InternalLinkTypeProxy copyWith({
    String? server,
    int? port,
    ProxyType? type,
    dynamic extra,
    int? clientId,
  }) => InternalLinkTypeProxy(
    server: server ?? this.server,
    port: port ?? this.port,
    type: type ?? this.type,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'internalLinkTypeProxy';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **InternalLinkTypePublicChat** *(internalLinkTypePublicChat)* - child of InternalLinkType
///
/// The link is a link to a chat by its username. Call searchPublicChat with the given chat username to process the link.
///
/// * [chatUsername]: Username of the chat.
final class InternalLinkTypePublicChat extends InternalLinkType {
  
  /// **InternalLinkTypePublicChat** *(internalLinkTypePublicChat)* - child of InternalLinkType
  ///
  /// The link is a link to a chat by its username. Call searchPublicChat with the given chat username to process the link.
  ///
  /// * [chatUsername]: Username of the chat.
  const InternalLinkTypePublicChat({
    required this.chatUsername,
    this.extra,
    this.clientId,
  });
  
  /// Username of the chat
  final String chatUsername;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory InternalLinkTypePublicChat.fromJson(Map<String, dynamic> json) => InternalLinkTypePublicChat(
    chatUsername: json['chat_username'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "chat_username": chatUsername,
		};
	}

  
  @override
  InternalLinkTypePublicChat copyWith({
    String? chatUsername,
    dynamic extra,
    int? clientId,
  }) => InternalLinkTypePublicChat(
    chatUsername: chatUsername ?? this.chatUsername,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'internalLinkTypePublicChat';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **InternalLinkTypeQrCodeAuthentication** *(internalLinkTypeQrCodeAuthentication)* - child of InternalLinkType
///
/// The link can be used to login the current user on another device, but it must be scanned from QR-code using in-app camera. An alert similar to. "This code can be used to allow someone to log in to your Telegram account. To confirm Telegram login, please go to Settings.
final class InternalLinkTypeQrCodeAuthentication extends InternalLinkType {
  
  /// **InternalLinkTypeQrCodeAuthentication** *(internalLinkTypeQrCodeAuthentication)* - child of InternalLinkType
  ///
  /// The link can be used to login the current user on another device, but it must be scanned from QR-code using in-app camera. An alert similar to. "This code can be used to allow someone to log in to your Telegram account. To confirm Telegram login, please go to Settings.
  const InternalLinkTypeQrCodeAuthentication({
    this.extra,
    this.clientId,
  });
  
  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory InternalLinkTypeQrCodeAuthentication.fromJson(Map<String, dynamic> json) => InternalLinkTypeQrCodeAuthentication(
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  InternalLinkTypeQrCodeAuthentication copyWith({
    dynamic extra,
    int? clientId,
  }) => InternalLinkTypeQrCodeAuthentication(
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'internalLinkTypeQrCodeAuthentication';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **InternalLinkTypeRestorePurchases** *(internalLinkTypeRestorePurchases)* - child of InternalLinkType
///
/// The link forces restore of App Store purchases when opened. For official iOS application only.
final class InternalLinkTypeRestorePurchases extends InternalLinkType {
  
  /// **InternalLinkTypeRestorePurchases** *(internalLinkTypeRestorePurchases)* - child of InternalLinkType
  ///
  /// The link forces restore of App Store purchases when opened. For official iOS application only.
  const InternalLinkTypeRestorePurchases({
    this.extra,
    this.clientId,
  });
  
  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory InternalLinkTypeRestorePurchases.fromJson(Map<String, dynamic> json) => InternalLinkTypeRestorePurchases(
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  InternalLinkTypeRestorePurchases copyWith({
    dynamic extra,
    int? clientId,
  }) => InternalLinkTypeRestorePurchases(
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'internalLinkTypeRestorePurchases';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **InternalLinkTypeSettings** *(internalLinkTypeSettings)* - child of InternalLinkType
///
/// The link is a link to application settings.
final class InternalLinkTypeSettings extends InternalLinkType {
  
  /// **InternalLinkTypeSettings** *(internalLinkTypeSettings)* - child of InternalLinkType
  ///
  /// The link is a link to application settings.
  const InternalLinkTypeSettings({
    this.extra,
    this.clientId,
  });
  
  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory InternalLinkTypeSettings.fromJson(Map<String, dynamic> json) => InternalLinkTypeSettings(
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  InternalLinkTypeSettings copyWith({
    dynamic extra,
    int? clientId,
  }) => InternalLinkTypeSettings(
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'internalLinkTypeSettings';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **InternalLinkTypeStickerSet** *(internalLinkTypeStickerSet)* - child of InternalLinkType
///
/// The link is a link to a sticker set. Call searchStickerSet with the given sticker set name to process the link and show the sticker set.
///
/// * [stickerSetName]: Name of the sticker set.
/// * [expectCustomEmoji]: True, if the sticker set is expected to contain custom emoji.
final class InternalLinkTypeStickerSet extends InternalLinkType {
  
  /// **InternalLinkTypeStickerSet** *(internalLinkTypeStickerSet)* - child of InternalLinkType
  ///
  /// The link is a link to a sticker set. Call searchStickerSet with the given sticker set name to process the link and show the sticker set.
  ///
  /// * [stickerSetName]: Name of the sticker set.
  /// * [expectCustomEmoji]: True, if the sticker set is expected to contain custom emoji.
  const InternalLinkTypeStickerSet({
    required this.stickerSetName,
    required this.expectCustomEmoji,
    this.extra,
    this.clientId,
  });
  
  /// Name of the sticker set
  final String stickerSetName;

  /// True, if the sticker set is expected to contain custom emoji
  final bool expectCustomEmoji;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory InternalLinkTypeStickerSet.fromJson(Map<String, dynamic> json) => InternalLinkTypeStickerSet(
    stickerSetName: json['sticker_set_name'],
    expectCustomEmoji: json['expect_custom_emoji'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "sticker_set_name": stickerSetName,
      "expect_custom_emoji": expectCustomEmoji,
		};
	}

  
  @override
  InternalLinkTypeStickerSet copyWith({
    String? stickerSetName,
    bool? expectCustomEmoji,
    dynamic extra,
    int? clientId,
  }) => InternalLinkTypeStickerSet(
    stickerSetName: stickerSetName ?? this.stickerSetName,
    expectCustomEmoji: expectCustomEmoji ?? this.expectCustomEmoji,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'internalLinkTypeStickerSet';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **InternalLinkTypeTheme** *(internalLinkTypeTheme)* - child of InternalLinkType
///
/// The link is a link to a theme. TDLib has no theme support yet.
///
/// * [themeName]: Name of the theme.
final class InternalLinkTypeTheme extends InternalLinkType {
  
  /// **InternalLinkTypeTheme** *(internalLinkTypeTheme)* - child of InternalLinkType
  ///
  /// The link is a link to a theme. TDLib has no theme support yet.
  ///
  /// * [themeName]: Name of the theme.
  const InternalLinkTypeTheme({
    required this.themeName,
    this.extra,
    this.clientId,
  });
  
  /// Name of the theme
  final String themeName;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory InternalLinkTypeTheme.fromJson(Map<String, dynamic> json) => InternalLinkTypeTheme(
    themeName: json['theme_name'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "theme_name": themeName,
		};
	}

  
  @override
  InternalLinkTypeTheme copyWith({
    String? themeName,
    dynamic extra,
    int? clientId,
  }) => InternalLinkTypeTheme(
    themeName: themeName ?? this.themeName,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'internalLinkTypeTheme';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **InternalLinkTypeThemeSettings** *(internalLinkTypeThemeSettings)* - child of InternalLinkType
///
/// The link is a link to the theme section of the app settings.
final class InternalLinkTypeThemeSettings extends InternalLinkType {
  
  /// **InternalLinkTypeThemeSettings** *(internalLinkTypeThemeSettings)* - child of InternalLinkType
  ///
  /// The link is a link to the theme section of the app settings.
  const InternalLinkTypeThemeSettings({
    this.extra,
    this.clientId,
  });
  
  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory InternalLinkTypeThemeSettings.fromJson(Map<String, dynamic> json) => InternalLinkTypeThemeSettings(
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  InternalLinkTypeThemeSettings copyWith({
    dynamic extra,
    int? clientId,
  }) => InternalLinkTypeThemeSettings(
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'internalLinkTypeThemeSettings';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **InternalLinkTypeUnknownDeepLink** *(internalLinkTypeUnknownDeepLink)* - child of InternalLinkType
///
/// The link is an unknown tg: link. Call getDeepLinkInfo to process the link.
///
/// * [link]: Link to be passed to getDeepLinkInfo.
final class InternalLinkTypeUnknownDeepLink extends InternalLinkType {
  
  /// **InternalLinkTypeUnknownDeepLink** *(internalLinkTypeUnknownDeepLink)* - child of InternalLinkType
  ///
  /// The link is an unknown tg: link. Call getDeepLinkInfo to process the link.
  ///
  /// * [link]: Link to be passed to getDeepLinkInfo.
  const InternalLinkTypeUnknownDeepLink({
    required this.link,
    this.extra,
    this.clientId,
  });
  
  /// Link to be passed to getDeepLinkInfo
  final String link;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory InternalLinkTypeUnknownDeepLink.fromJson(Map<String, dynamic> json) => InternalLinkTypeUnknownDeepLink(
    link: json['link'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "link": link,
		};
	}

  
  @override
  InternalLinkTypeUnknownDeepLink copyWith({
    String? link,
    dynamic extra,
    int? clientId,
  }) => InternalLinkTypeUnknownDeepLink(
    link: link ?? this.link,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'internalLinkTypeUnknownDeepLink';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **InternalLinkTypeUnsupportedProxy** *(internalLinkTypeUnsupportedProxy)* - child of InternalLinkType
///
/// The link is a link to an unsupported proxy. An alert can be shown to the user.
final class InternalLinkTypeUnsupportedProxy extends InternalLinkType {
  
  /// **InternalLinkTypeUnsupportedProxy** *(internalLinkTypeUnsupportedProxy)* - child of InternalLinkType
  ///
  /// The link is a link to an unsupported proxy. An alert can be shown to the user.
  const InternalLinkTypeUnsupportedProxy({
    this.extra,
    this.clientId,
  });
  
  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory InternalLinkTypeUnsupportedProxy.fromJson(Map<String, dynamic> json) => InternalLinkTypeUnsupportedProxy(
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  InternalLinkTypeUnsupportedProxy copyWith({
    dynamic extra,
    int? clientId,
  }) => InternalLinkTypeUnsupportedProxy(
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'internalLinkTypeUnsupportedProxy';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **InternalLinkTypeUserPhoneNumber** *(internalLinkTypeUserPhoneNumber)* - child of InternalLinkType
///
/// The link is a link to a user by its phone number. Call searchUserByPhoneNumber with the given phone number to process the link.
///
/// * [phoneNumber]: Phone number of the user.
final class InternalLinkTypeUserPhoneNumber extends InternalLinkType {
  
  /// **InternalLinkTypeUserPhoneNumber** *(internalLinkTypeUserPhoneNumber)* - child of InternalLinkType
  ///
  /// The link is a link to a user by its phone number. Call searchUserByPhoneNumber with the given phone number to process the link.
  ///
  /// * [phoneNumber]: Phone number of the user.
  const InternalLinkTypeUserPhoneNumber({
    required this.phoneNumber,
    this.extra,
    this.clientId,
  });
  
  /// Phone number of the user
  final String phoneNumber;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory InternalLinkTypeUserPhoneNumber.fromJson(Map<String, dynamic> json) => InternalLinkTypeUserPhoneNumber(
    phoneNumber: json['phone_number'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "phone_number": phoneNumber,
		};
	}

  
  @override
  InternalLinkTypeUserPhoneNumber copyWith({
    String? phoneNumber,
    dynamic extra,
    int? clientId,
  }) => InternalLinkTypeUserPhoneNumber(
    phoneNumber: phoneNumber ?? this.phoneNumber,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'internalLinkTypeUserPhoneNumber';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **InternalLinkTypeUserToken** *(internalLinkTypeUserToken)* - child of InternalLinkType
///
/// The link is a link to a user by a temporary token. Call searchUserByToken with the given token to process the link.
///
/// * [token]: The token.
final class InternalLinkTypeUserToken extends InternalLinkType {
  
  /// **InternalLinkTypeUserToken** *(internalLinkTypeUserToken)* - child of InternalLinkType
  ///
  /// The link is a link to a user by a temporary token. Call searchUserByToken with the given token to process the link.
  ///
  /// * [token]: The token.
  const InternalLinkTypeUserToken({
    required this.token,
    this.extra,
    this.clientId,
  });
  
  /// The token
  final String token;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory InternalLinkTypeUserToken.fromJson(Map<String, dynamic> json) => InternalLinkTypeUserToken(
    token: json['token'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "token": token,
		};
	}

  
  @override
  InternalLinkTypeUserToken copyWith({
    String? token,
    dynamic extra,
    int? clientId,
  }) => InternalLinkTypeUserToken(
    token: token ?? this.token,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'internalLinkTypeUserToken';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **InternalLinkTypeVideoChat** *(internalLinkTypeVideoChat)* - child of InternalLinkType
///
/// The link is a link to a video chat. Call searchPublicChat with the given chat username, and then joinGroupCall with the given invite hash to process the link.
///
/// * [chatUsername]: Username of the chat with the video chat.
/// * [inviteHash]: If non-empty, invite hash to be used to join the video chat without being muted by administrators.
/// * [isLiveStream]: True, if the video chat is expected to be a live stream in a channel or a broadcast group.
final class InternalLinkTypeVideoChat extends InternalLinkType {
  
  /// **InternalLinkTypeVideoChat** *(internalLinkTypeVideoChat)* - child of InternalLinkType
  ///
  /// The link is a link to a video chat. Call searchPublicChat with the given chat username, and then joinGroupCall with the given invite hash to process the link.
  ///
  /// * [chatUsername]: Username of the chat with the video chat.
  /// * [inviteHash]: If non-empty, invite hash to be used to join the video chat without being muted by administrators.
  /// * [isLiveStream]: True, if the video chat is expected to be a live stream in a channel or a broadcast group.
  const InternalLinkTypeVideoChat({
    required this.chatUsername,
    required this.inviteHash,
    required this.isLiveStream,
    this.extra,
    this.clientId,
  });
  
  /// Username of the chat with the video chat
  final String chatUsername;

  /// If non-empty, invite hash to be used to join the video chat without being muted by administrators
  final String inviteHash;

  /// True, if the video chat is expected to be a live stream in a channel or a broadcast group
  final bool isLiveStream;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory InternalLinkTypeVideoChat.fromJson(Map<String, dynamic> json) => InternalLinkTypeVideoChat(
    chatUsername: json['chat_username'],
    inviteHash: json['invite_hash'],
    isLiveStream: json['is_live_stream'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "chat_username": chatUsername,
      "invite_hash": inviteHash,
      "is_live_stream": isLiveStream,
		};
	}

  
  @override
  InternalLinkTypeVideoChat copyWith({
    String? chatUsername,
    String? inviteHash,
    bool? isLiveStream,
    dynamic extra,
    int? clientId,
  }) => InternalLinkTypeVideoChat(
    chatUsername: chatUsername ?? this.chatUsername,
    inviteHash: inviteHash ?? this.inviteHash,
    isLiveStream: isLiveStream ?? this.isLiveStream,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'internalLinkTypeVideoChat';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

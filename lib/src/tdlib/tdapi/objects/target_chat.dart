part of '../tdapi.dart';

/// **TargetChat** *(targetChat)* - parent
///
/// Describes the target chat to be opened.
sealed class TargetChat extends TdObject {
  
  /// **TargetChat** *(targetChat)* - parent
  ///
  /// Describes the target chat to be opened.
  const TargetChat();
  
  /// a TargetChat return type can be :
  /// * [TargetChatCurrent]
  /// * [TargetChatChosen]
  /// * [TargetChatInternalLink]
  factory TargetChat.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case TargetChatCurrent.objectType:
        return TargetChatCurrent.fromJson(json);
      case TargetChatChosen.objectType:
        return TargetChatChosen.fromJson(json);
      case TargetChatInternalLink.objectType:
        return TargetChatInternalLink.fromJson(json);
      default:
        throw FormatException(
          "Unknown object ${json["@type"]} (expected child of TargetChat)",
          json,
        );
    }
  }
  
  @override
  Map<String, dynamic> toJson();

  
  TargetChat copyWith();

  static const String objectType = 'targetChat';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **TargetChatCurrent** *(targetChatCurrent)* - child of TargetChat
///
/// The currently opened chat needs to be kept.
final class TargetChatCurrent extends TargetChat {
  
  /// **TargetChatCurrent** *(targetChatCurrent)* - child of TargetChat
  ///
  /// The currently opened chat needs to be kept.
  const TargetChatCurrent();
  
  /// Parse from a json
  factory TargetChatCurrent.fromJson(Map<String, dynamic> json) => const TargetChatCurrent();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  TargetChatCurrent copyWith() => const TargetChatCurrent();

  static const String objectType = 'targetChatCurrent';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **TargetChatChosen** *(targetChatChosen)* - child of TargetChat
///
/// The chat needs to be chosen by the user among chats of the specified types.
///
/// * [allowUserChats]: True, if private chats with ordinary users are allowed.
/// * [allowBotChats]: True, if private chats with other bots are allowed.
/// * [allowGroupChats]: True, if basic group and supergroup chats are allowed.
/// * [allowChannelChats]: True, if channel chats are allowed.
final class TargetChatChosen extends TargetChat {
  
  /// **TargetChatChosen** *(targetChatChosen)* - child of TargetChat
  ///
  /// The chat needs to be chosen by the user among chats of the specified types.
  ///
  /// * [allowUserChats]: True, if private chats with ordinary users are allowed.
  /// * [allowBotChats]: True, if private chats with other bots are allowed.
  /// * [allowGroupChats]: True, if basic group and supergroup chats are allowed.
  /// * [allowChannelChats]: True, if channel chats are allowed.
  const TargetChatChosen({
    required this.allowUserChats,
    required this.allowBotChats,
    required this.allowGroupChats,
    required this.allowChannelChats,
  });
  
  /// True, if private chats with ordinary users are allowed
  final bool allowUserChats;

  /// True, if private chats with other bots are allowed
  final bool allowBotChats;

  /// True, if basic group and supergroup chats are allowed
  final bool allowGroupChats;

  /// True, if channel chats are allowed
  final bool allowChannelChats;
  
  /// Parse from a json
  factory TargetChatChosen.fromJson(Map<String, dynamic> json) => TargetChatChosen(
    allowUserChats: json['allow_user_chats'],
    allowBotChats: json['allow_bot_chats'],
    allowGroupChats: json['allow_group_chats'],
    allowChannelChats: json['allow_channel_chats'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "allow_user_chats": allowUserChats,
      "allow_bot_chats": allowBotChats,
      "allow_group_chats": allowGroupChats,
      "allow_channel_chats": allowChannelChats,
		};
	}

  
  @override
  TargetChatChosen copyWith({
    bool? allowUserChats,
    bool? allowBotChats,
    bool? allowGroupChats,
    bool? allowChannelChats,
  }) => TargetChatChosen(
    allowUserChats: allowUserChats ?? this.allowUserChats,
    allowBotChats: allowBotChats ?? this.allowBotChats,
    allowGroupChats: allowGroupChats ?? this.allowGroupChats,
    allowChannelChats: allowChannelChats ?? this.allowChannelChats,
  );

  static const String objectType = 'targetChatChosen';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **TargetChatInternalLink** *(targetChatInternalLink)* - child of TargetChat
///
/// The chat needs to be open with the provided internal link.
///
/// * [link]: An internal link pointing to the chat.
final class TargetChatInternalLink extends TargetChat {
  
  /// **TargetChatInternalLink** *(targetChatInternalLink)* - child of TargetChat
  ///
  /// The chat needs to be open with the provided internal link.
  ///
  /// * [link]: An internal link pointing to the chat.
  const TargetChatInternalLink({
    required this.link,
  });
  
  /// An internal link pointing to the chat
  final InternalLinkType link;
  
  /// Parse from a json
  factory TargetChatInternalLink.fromJson(Map<String, dynamic> json) => TargetChatInternalLink(
    link: InternalLinkType.fromJson(json['link']),
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "link": link.toJson(),
		};
	}

  
  @override
  TargetChatInternalLink copyWith({
    InternalLinkType? link,
  }) => TargetChatInternalLink(
    link: link ?? this.link,
  );

  static const String objectType = 'targetChatInternalLink';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

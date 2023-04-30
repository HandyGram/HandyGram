part of '../tdapi.dart';

/// **TextEntityType** *(textEntityType)* - parent
  ///
  /// Represents a part of the text which must be formatted differently.
class TextEntityType extends TdObject {
  
  /// **TextEntityType** *(textEntityType)* - parent
  ///
  /// Represents a part of the text which must be formatted differently.
  const TextEntityType();
  
  /// a TextEntityType return type can be :
  /// * [TextEntityTypeMention]
  /// * [TextEntityTypeHashtag]
  /// * [TextEntityTypeCashtag]
  /// * [TextEntityTypeBotCommand]
  /// * [TextEntityTypeUrl]
  /// * [TextEntityTypeEmailAddress]
  /// * [TextEntityTypePhoneNumber]
  /// * [TextEntityTypeBankCardNumber]
  /// * [TextEntityTypeBold]
  /// * [TextEntityTypeItalic]
  /// * [TextEntityTypeUnderline]
  /// * [TextEntityTypeStrikethrough]
  /// * [TextEntityTypeSpoiler]
  /// * [TextEntityTypeCode]
  /// * [TextEntityTypePre]
  /// * [TextEntityTypePreCode]
  /// * [TextEntityTypeTextUrl]
  /// * [TextEntityTypeMentionName]
  /// * [TextEntityTypeCustomEmoji]
  /// * [TextEntityTypeMediaTimestamp]
  factory TextEntityType.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case TextEntityTypeMention.constructor:
        return TextEntityTypeMention.fromJson(json);
      case TextEntityTypeHashtag.constructor:
        return TextEntityTypeHashtag.fromJson(json);
      case TextEntityTypeCashtag.constructor:
        return TextEntityTypeCashtag.fromJson(json);
      case TextEntityTypeBotCommand.constructor:
        return TextEntityTypeBotCommand.fromJson(json);
      case TextEntityTypeUrl.constructor:
        return TextEntityTypeUrl.fromJson(json);
      case TextEntityTypeEmailAddress.constructor:
        return TextEntityTypeEmailAddress.fromJson(json);
      case TextEntityTypePhoneNumber.constructor:
        return TextEntityTypePhoneNumber.fromJson(json);
      case TextEntityTypeBankCardNumber.constructor:
        return TextEntityTypeBankCardNumber.fromJson(json);
      case TextEntityTypeBold.constructor:
        return TextEntityTypeBold.fromJson(json);
      case TextEntityTypeItalic.constructor:
        return TextEntityTypeItalic.fromJson(json);
      case TextEntityTypeUnderline.constructor:
        return TextEntityTypeUnderline.fromJson(json);
      case TextEntityTypeStrikethrough.constructor:
        return TextEntityTypeStrikethrough.fromJson(json);
      case TextEntityTypeSpoiler.constructor:
        return TextEntityTypeSpoiler.fromJson(json);
      case TextEntityTypeCode.constructor:
        return TextEntityTypeCode.fromJson(json);
      case TextEntityTypePre.constructor:
        return TextEntityTypePre.fromJson(json);
      case TextEntityTypePreCode.constructor:
        return TextEntityTypePreCode.fromJson(json);
      case TextEntityTypeTextUrl.constructor:
        return TextEntityTypeTextUrl.fromJson(json);
      case TextEntityTypeMentionName.constructor:
        return TextEntityTypeMentionName.fromJson(json);
      case TextEntityTypeCustomEmoji.constructor:
        return TextEntityTypeCustomEmoji.fromJson(json);
      case TextEntityTypeMediaTimestamp.constructor:
        return TextEntityTypeMediaTimestamp.fromJson(json);
      default:
        return const TextEntityType();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  TextEntityType copyWith() => const TextEntityType();

  static const String constructor = 'textEntityType';
  
  @override
  String getConstructor() => constructor;
}


/// **TextEntityTypeMention** *(textEntityTypeMention)* - child of TextEntityType
  ///
  /// A mention of a user, a supergroup, or a channel by their username.
class TextEntityTypeMention extends TextEntityType {
  
  /// **TextEntityTypeMention** *(textEntityTypeMention)* - child of TextEntityType
  ///
  /// A mention of a user, a supergroup, or a channel by their username.
  const TextEntityTypeMention();
  
  /// Parse from a json
  factory TextEntityTypeMention.fromJson(Map<String, dynamic> json) => const TextEntityTypeMention();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  TextEntityTypeMention copyWith() => const TextEntityTypeMention();

  static const String constructor = 'textEntityTypeMention';
  
  @override
  String getConstructor() => constructor;
}


/// **TextEntityTypeHashtag** *(textEntityTypeHashtag)* - child of TextEntityType
  ///
  /// A hashtag text, beginning with "#".
class TextEntityTypeHashtag extends TextEntityType {
  
  /// **TextEntityTypeHashtag** *(textEntityTypeHashtag)* - child of TextEntityType
  ///
  /// A hashtag text, beginning with "#".
  const TextEntityTypeHashtag();
  
  /// Parse from a json
  factory TextEntityTypeHashtag.fromJson(Map<String, dynamic> json) => const TextEntityTypeHashtag();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  TextEntityTypeHashtag copyWith() => const TextEntityTypeHashtag();

  static const String constructor = 'textEntityTypeHashtag';
  
  @override
  String getConstructor() => constructor;
}


/// **TextEntityTypeCashtag** *(textEntityTypeCashtag)* - child of TextEntityType
  ///
  /// A cashtag text, beginning with "$" and consisting of capital English letters (e.g., "$USD").
class TextEntityTypeCashtag extends TextEntityType {
  
  /// **TextEntityTypeCashtag** *(textEntityTypeCashtag)* - child of TextEntityType
  ///
  /// A cashtag text, beginning with "$" and consisting of capital English letters (e.g., "$USD").
  const TextEntityTypeCashtag();
  
  /// Parse from a json
  factory TextEntityTypeCashtag.fromJson(Map<String, dynamic> json) => const TextEntityTypeCashtag();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  TextEntityTypeCashtag copyWith() => const TextEntityTypeCashtag();

  static const String constructor = 'textEntityTypeCashtag';
  
  @override
  String getConstructor() => constructor;
}


/// **TextEntityTypeBotCommand** *(textEntityTypeBotCommand)* - child of TextEntityType
  ///
  /// A bot command, beginning with "/".
class TextEntityTypeBotCommand extends TextEntityType {
  
  /// **TextEntityTypeBotCommand** *(textEntityTypeBotCommand)* - child of TextEntityType
  ///
  /// A bot command, beginning with "/".
  const TextEntityTypeBotCommand();
  
  /// Parse from a json
  factory TextEntityTypeBotCommand.fromJson(Map<String, dynamic> json) => const TextEntityTypeBotCommand();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  TextEntityTypeBotCommand copyWith() => const TextEntityTypeBotCommand();

  static const String constructor = 'textEntityTypeBotCommand';
  
  @override
  String getConstructor() => constructor;
}


/// **TextEntityTypeUrl** *(textEntityTypeUrl)* - child of TextEntityType
  ///
  /// An HTTP URL.
class TextEntityTypeUrl extends TextEntityType {
  
  /// **TextEntityTypeUrl** *(textEntityTypeUrl)* - child of TextEntityType
  ///
  /// An HTTP URL.
  const TextEntityTypeUrl();
  
  /// Parse from a json
  factory TextEntityTypeUrl.fromJson(Map<String, dynamic> json) => const TextEntityTypeUrl();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  TextEntityTypeUrl copyWith() => const TextEntityTypeUrl();

  static const String constructor = 'textEntityTypeUrl';
  
  @override
  String getConstructor() => constructor;
}


/// **TextEntityTypeEmailAddress** *(textEntityTypeEmailAddress)* - child of TextEntityType
  ///
  /// An email address.
class TextEntityTypeEmailAddress extends TextEntityType {
  
  /// **TextEntityTypeEmailAddress** *(textEntityTypeEmailAddress)* - child of TextEntityType
  ///
  /// An email address.
  const TextEntityTypeEmailAddress();
  
  /// Parse from a json
  factory TextEntityTypeEmailAddress.fromJson(Map<String, dynamic> json) => const TextEntityTypeEmailAddress();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  TextEntityTypeEmailAddress copyWith() => const TextEntityTypeEmailAddress();

  static const String constructor = 'textEntityTypeEmailAddress';
  
  @override
  String getConstructor() => constructor;
}


/// **TextEntityTypePhoneNumber** *(textEntityTypePhoneNumber)* - child of TextEntityType
  ///
  /// A phone number.
class TextEntityTypePhoneNumber extends TextEntityType {
  
  /// **TextEntityTypePhoneNumber** *(textEntityTypePhoneNumber)* - child of TextEntityType
  ///
  /// A phone number.
  const TextEntityTypePhoneNumber();
  
  /// Parse from a json
  factory TextEntityTypePhoneNumber.fromJson(Map<String, dynamic> json) => const TextEntityTypePhoneNumber();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  TextEntityTypePhoneNumber copyWith() => const TextEntityTypePhoneNumber();

  static const String constructor = 'textEntityTypePhoneNumber';
  
  @override
  String getConstructor() => constructor;
}


/// **TextEntityTypeBankCardNumber** *(textEntityTypeBankCardNumber)* - child of TextEntityType
  ///
  /// A bank card number. The getBankCardInfo method can be used to get information about the bank card.
class TextEntityTypeBankCardNumber extends TextEntityType {
  
  /// **TextEntityTypeBankCardNumber** *(textEntityTypeBankCardNumber)* - child of TextEntityType
  ///
  /// A bank card number. The getBankCardInfo method can be used to get information about the bank card.
  const TextEntityTypeBankCardNumber();
  
  /// Parse from a json
  factory TextEntityTypeBankCardNumber.fromJson(Map<String, dynamic> json) => const TextEntityTypeBankCardNumber();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  TextEntityTypeBankCardNumber copyWith() => const TextEntityTypeBankCardNumber();

  static const String constructor = 'textEntityTypeBankCardNumber';
  
  @override
  String getConstructor() => constructor;
}


/// **TextEntityTypeBold** *(textEntityTypeBold)* - child of TextEntityType
  ///
  /// A bold text.
class TextEntityTypeBold extends TextEntityType {
  
  /// **TextEntityTypeBold** *(textEntityTypeBold)* - child of TextEntityType
  ///
  /// A bold text.
  const TextEntityTypeBold();
  
  /// Parse from a json
  factory TextEntityTypeBold.fromJson(Map<String, dynamic> json) => const TextEntityTypeBold();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  TextEntityTypeBold copyWith() => const TextEntityTypeBold();

  static const String constructor = 'textEntityTypeBold';
  
  @override
  String getConstructor() => constructor;
}


/// **TextEntityTypeItalic** *(textEntityTypeItalic)* - child of TextEntityType
  ///
  /// An italic text.
class TextEntityTypeItalic extends TextEntityType {
  
  /// **TextEntityTypeItalic** *(textEntityTypeItalic)* - child of TextEntityType
  ///
  /// An italic text.
  const TextEntityTypeItalic();
  
  /// Parse from a json
  factory TextEntityTypeItalic.fromJson(Map<String, dynamic> json) => const TextEntityTypeItalic();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  TextEntityTypeItalic copyWith() => const TextEntityTypeItalic();

  static const String constructor = 'textEntityTypeItalic';
  
  @override
  String getConstructor() => constructor;
}


/// **TextEntityTypeUnderline** *(textEntityTypeUnderline)* - child of TextEntityType
  ///
  /// An underlined text.
class TextEntityTypeUnderline extends TextEntityType {
  
  /// **TextEntityTypeUnderline** *(textEntityTypeUnderline)* - child of TextEntityType
  ///
  /// An underlined text.
  const TextEntityTypeUnderline();
  
  /// Parse from a json
  factory TextEntityTypeUnderline.fromJson(Map<String, dynamic> json) => const TextEntityTypeUnderline();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  TextEntityTypeUnderline copyWith() => const TextEntityTypeUnderline();

  static const String constructor = 'textEntityTypeUnderline';
  
  @override
  String getConstructor() => constructor;
}


/// **TextEntityTypeStrikethrough** *(textEntityTypeStrikethrough)* - child of TextEntityType
  ///
  /// A strikethrough text.
class TextEntityTypeStrikethrough extends TextEntityType {
  
  /// **TextEntityTypeStrikethrough** *(textEntityTypeStrikethrough)* - child of TextEntityType
  ///
  /// A strikethrough text.
  const TextEntityTypeStrikethrough();
  
  /// Parse from a json
  factory TextEntityTypeStrikethrough.fromJson(Map<String, dynamic> json) => const TextEntityTypeStrikethrough();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  TextEntityTypeStrikethrough copyWith() => const TextEntityTypeStrikethrough();

  static const String constructor = 'textEntityTypeStrikethrough';
  
  @override
  String getConstructor() => constructor;
}


/// **TextEntityTypeSpoiler** *(textEntityTypeSpoiler)* - child of TextEntityType
  ///
  /// A spoiler text.
class TextEntityTypeSpoiler extends TextEntityType {
  
  /// **TextEntityTypeSpoiler** *(textEntityTypeSpoiler)* - child of TextEntityType
  ///
  /// A spoiler text.
  const TextEntityTypeSpoiler();
  
  /// Parse from a json
  factory TextEntityTypeSpoiler.fromJson(Map<String, dynamic> json) => const TextEntityTypeSpoiler();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  TextEntityTypeSpoiler copyWith() => const TextEntityTypeSpoiler();

  static const String constructor = 'textEntityTypeSpoiler';
  
  @override
  String getConstructor() => constructor;
}


/// **TextEntityTypeCode** *(textEntityTypeCode)* - child of TextEntityType
  ///
  /// Text that must be formatted as if inside a code HTML tag.
class TextEntityTypeCode extends TextEntityType {
  
  /// **TextEntityTypeCode** *(textEntityTypeCode)* - child of TextEntityType
  ///
  /// Text that must be formatted as if inside a code HTML tag.
  const TextEntityTypeCode();
  
  /// Parse from a json
  factory TextEntityTypeCode.fromJson(Map<String, dynamic> json) => const TextEntityTypeCode();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  TextEntityTypeCode copyWith() => const TextEntityTypeCode();

  static const String constructor = 'textEntityTypeCode';
  
  @override
  String getConstructor() => constructor;
}


/// **TextEntityTypePre** *(textEntityTypePre)* - child of TextEntityType
  ///
  /// Text that must be formatted as if inside a pre HTML tag.
class TextEntityTypePre extends TextEntityType {
  
  /// **TextEntityTypePre** *(textEntityTypePre)* - child of TextEntityType
  ///
  /// Text that must be formatted as if inside a pre HTML tag.
  const TextEntityTypePre();
  
  /// Parse from a json
  factory TextEntityTypePre.fromJson(Map<String, dynamic> json) => const TextEntityTypePre();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  TextEntityTypePre copyWith() => const TextEntityTypePre();

  static const String constructor = 'textEntityTypePre';
  
  @override
  String getConstructor() => constructor;
}


/// **TextEntityTypePreCode** *(textEntityTypePreCode)* - child of TextEntityType
  ///
  /// Text that must be formatted as if inside pre, and code HTML tags.
  ///
  /// * [language]: Programming language of the code; as defined by the sender.
class TextEntityTypePreCode extends TextEntityType {
  
  /// **TextEntityTypePreCode** *(textEntityTypePreCode)* - child of TextEntityType
  ///
  /// Text that must be formatted as if inside pre, and code HTML tags.
  ///
  /// * [language]: Programming language of the code; as defined by the sender.
  const TextEntityTypePreCode({
    required this.language,
  });
  
  /// Programming language of the code; as defined by the sender
  final String language;
  
  /// Parse from a json
  factory TextEntityTypePreCode.fromJson(Map<String, dynamic> json) => TextEntityTypePreCode(
    language: json['language'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "language": language,
    };
  }
  
  @override
  TextEntityTypePreCode copyWith({
    String? language,
  }) => TextEntityTypePreCode(
    language: language ?? this.language,
  );

  static const String constructor = 'textEntityTypePreCode';
  
  @override
  String getConstructor() => constructor;
}


/// **TextEntityTypeTextUrl** *(textEntityTypeTextUrl)* - child of TextEntityType
  ///
  /// A text description shown instead of a raw URL.
  ///
  /// * [url]: HTTP or tg:// URL to be opened when the link is clicked.
class TextEntityTypeTextUrl extends TextEntityType {
  
  /// **TextEntityTypeTextUrl** *(textEntityTypeTextUrl)* - child of TextEntityType
  ///
  /// A text description shown instead of a raw URL.
  ///
  /// * [url]: HTTP or tg:// URL to be opened when the link is clicked.
  const TextEntityTypeTextUrl({
    required this.url,
  });
  
  /// HTTP or tg:// URL to be opened when the link is clicked
  final String url;
  
  /// Parse from a json
  factory TextEntityTypeTextUrl.fromJson(Map<String, dynamic> json) => TextEntityTypeTextUrl(
    url: json['url'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "url": url,
    };
  }
  
  @override
  TextEntityTypeTextUrl copyWith({
    String? url,
  }) => TextEntityTypeTextUrl(
    url: url ?? this.url,
  );

  static const String constructor = 'textEntityTypeTextUrl';
  
  @override
  String getConstructor() => constructor;
}


/// **TextEntityTypeMentionName** *(textEntityTypeMentionName)* - child of TextEntityType
  ///
  /// A text shows instead of a raw mention of the user (e.g., when the user has no username).
  ///
  /// * [userId]: Identifier of the mentioned user.
class TextEntityTypeMentionName extends TextEntityType {
  
  /// **TextEntityTypeMentionName** *(textEntityTypeMentionName)* - child of TextEntityType
  ///
  /// A text shows instead of a raw mention of the user (e.g., when the user has no username).
  ///
  /// * [userId]: Identifier of the mentioned user.
  const TextEntityTypeMentionName({
    required this.userId,
  });
  
  /// Identifier of the mentioned user
  final int userId;
  
  /// Parse from a json
  factory TextEntityTypeMentionName.fromJson(Map<String, dynamic> json) => TextEntityTypeMentionName(
    userId: json['user_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "user_id": userId,
    };
  }
  
  @override
  TextEntityTypeMentionName copyWith({
    int? userId,
  }) => TextEntityTypeMentionName(
    userId: userId ?? this.userId,
  );

  static const String constructor = 'textEntityTypeMentionName';
  
  @override
  String getConstructor() => constructor;
}


/// **TextEntityTypeCustomEmoji** *(textEntityTypeCustomEmoji)* - child of TextEntityType
  ///
  /// A custom emoji. The text behind a custom emoji must be an emoji. Only premium users can use premium custom emoji.
  ///
  /// * [customEmojiId]: Unique identifier of the custom emoji.
class TextEntityTypeCustomEmoji extends TextEntityType {
  
  /// **TextEntityTypeCustomEmoji** *(textEntityTypeCustomEmoji)* - child of TextEntityType
  ///
  /// A custom emoji. The text behind a custom emoji must be an emoji. Only premium users can use premium custom emoji.
  ///
  /// * [customEmojiId]: Unique identifier of the custom emoji.
  const TextEntityTypeCustomEmoji({
    required this.customEmojiId,
  });
  
  /// Unique identifier of the custom emoji
  final int customEmojiId;
  
  /// Parse from a json
  factory TextEntityTypeCustomEmoji.fromJson(Map<String, dynamic> json) => TextEntityTypeCustomEmoji(
    customEmojiId: int.parse(json['custom_emoji_id']),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "custom_emoji_id": customEmojiId,
    };
  }
  
  @override
  TextEntityTypeCustomEmoji copyWith({
    int? customEmojiId,
  }) => TextEntityTypeCustomEmoji(
    customEmojiId: customEmojiId ?? this.customEmojiId,
  );

  static const String constructor = 'textEntityTypeCustomEmoji';
  
  @override
  String getConstructor() => constructor;
}


/// **TextEntityTypeMediaTimestamp** *(textEntityTypeMediaTimestamp)* - child of TextEntityType
  ///
  /// A media timestamp.
  ///
  /// * [mediaTimestamp]: Timestamp from which a video/audio/video note/voice note playing must start, in seconds. The media can be in the content or the web page preview of the current message, or in the same places in the replied message.
class TextEntityTypeMediaTimestamp extends TextEntityType {
  
  /// **TextEntityTypeMediaTimestamp** *(textEntityTypeMediaTimestamp)* - child of TextEntityType
  ///
  /// A media timestamp.
  ///
  /// * [mediaTimestamp]: Timestamp from which a video/audio/video note/voice note playing must start, in seconds. The media can be in the content or the web page preview of the current message, or in the same places in the replied message.
  const TextEntityTypeMediaTimestamp({
    required this.mediaTimestamp,
  });
  
  /// Timestamp from which a video/audio/video note/voice note playing must start, in seconds. The media can be in the content or the web page preview of the current message, or in the same places in the replied message
  final int mediaTimestamp;
  
  /// Parse from a json
  factory TextEntityTypeMediaTimestamp.fromJson(Map<String, dynamic> json) => TextEntityTypeMediaTimestamp(
    mediaTimestamp: json['media_timestamp'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "media_timestamp": mediaTimestamp,
    };
  }
  
  @override
  TextEntityTypeMediaTimestamp copyWith({
    int? mediaTimestamp,
  }) => TextEntityTypeMediaTimestamp(
    mediaTimestamp: mediaTimestamp ?? this.mediaTimestamp,
  );

  static const String constructor = 'textEntityTypeMediaTimestamp';
  
  @override
  String getConstructor() => constructor;
}

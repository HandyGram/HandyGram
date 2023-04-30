part of '../tdapi.dart';

/// **InlineKeyboardButtonType** *(inlineKeyboardButtonType)* - parent
  ///
  /// Describes the type of an inline keyboard button.
class InlineKeyboardButtonType extends TdObject {
  
  /// **InlineKeyboardButtonType** *(inlineKeyboardButtonType)* - parent
  ///
  /// Describes the type of an inline keyboard button.
  const InlineKeyboardButtonType();
  
  /// a InlineKeyboardButtonType return type can be :
  /// * [InlineKeyboardButtonTypeUrl]
  /// * [InlineKeyboardButtonTypeLoginUrl]
  /// * [InlineKeyboardButtonTypeWebApp]
  /// * [InlineKeyboardButtonTypeCallback]
  /// * [InlineKeyboardButtonTypeCallbackWithPassword]
  /// * [InlineKeyboardButtonTypeCallbackGame]
  /// * [InlineKeyboardButtonTypeSwitchInline]
  /// * [InlineKeyboardButtonTypeBuy]
  /// * [InlineKeyboardButtonTypeUser]
  factory InlineKeyboardButtonType.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case InlineKeyboardButtonTypeUrl.constructor:
        return InlineKeyboardButtonTypeUrl.fromJson(json);
      case InlineKeyboardButtonTypeLoginUrl.constructor:
        return InlineKeyboardButtonTypeLoginUrl.fromJson(json);
      case InlineKeyboardButtonTypeWebApp.constructor:
        return InlineKeyboardButtonTypeWebApp.fromJson(json);
      case InlineKeyboardButtonTypeCallback.constructor:
        return InlineKeyboardButtonTypeCallback.fromJson(json);
      case InlineKeyboardButtonTypeCallbackWithPassword.constructor:
        return InlineKeyboardButtonTypeCallbackWithPassword.fromJson(json);
      case InlineKeyboardButtonTypeCallbackGame.constructor:
        return InlineKeyboardButtonTypeCallbackGame.fromJson(json);
      case InlineKeyboardButtonTypeSwitchInline.constructor:
        return InlineKeyboardButtonTypeSwitchInline.fromJson(json);
      case InlineKeyboardButtonTypeBuy.constructor:
        return InlineKeyboardButtonTypeBuy.fromJson(json);
      case InlineKeyboardButtonTypeUser.constructor:
        return InlineKeyboardButtonTypeUser.fromJson(json);
      default:
        return const InlineKeyboardButtonType();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  InlineKeyboardButtonType copyWith() => const InlineKeyboardButtonType();

  static const String constructor = 'inlineKeyboardButtonType';
  
  @override
  String getConstructor() => constructor;
}


/// **InlineKeyboardButtonTypeUrl** *(inlineKeyboardButtonTypeUrl)* - child of InlineKeyboardButtonType
  ///
  /// A button that opens a specified URL.
  ///
  /// * [url]: HTTP or tg:// URL to open.
class InlineKeyboardButtonTypeUrl extends InlineKeyboardButtonType {
  
  /// **InlineKeyboardButtonTypeUrl** *(inlineKeyboardButtonTypeUrl)* - child of InlineKeyboardButtonType
  ///
  /// A button that opens a specified URL.
  ///
  /// * [url]: HTTP or tg:// URL to open.
  const InlineKeyboardButtonTypeUrl({
    required this.url,
  });
  
  /// HTTP or tg:// URL to open
  final String url;
  
  /// Parse from a json
  factory InlineKeyboardButtonTypeUrl.fromJson(Map<String, dynamic> json) => InlineKeyboardButtonTypeUrl(
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
  InlineKeyboardButtonTypeUrl copyWith({
    String? url,
  }) => InlineKeyboardButtonTypeUrl(
    url: url ?? this.url,
  );

  static const String constructor = 'inlineKeyboardButtonTypeUrl';
  
  @override
  String getConstructor() => constructor;
}


/// **InlineKeyboardButtonTypeLoginUrl** *(inlineKeyboardButtonTypeLoginUrl)* - child of InlineKeyboardButtonType
  ///
  /// A button that opens a specified URL and automatically authorize the current user by calling getLoginUrlInfo.
  ///
  /// * [url]: An HTTP URL to pass to getLoginUrlInfo.
  /// * [id]: Unique button identifier.
  /// * [forwardText]: If non-empty, new text of the button in forwarded messages.
class InlineKeyboardButtonTypeLoginUrl extends InlineKeyboardButtonType {
  
  /// **InlineKeyboardButtonTypeLoginUrl** *(inlineKeyboardButtonTypeLoginUrl)* - child of InlineKeyboardButtonType
  ///
  /// A button that opens a specified URL and automatically authorize the current user by calling getLoginUrlInfo.
  ///
  /// * [url]: An HTTP URL to pass to getLoginUrlInfo.
  /// * [id]: Unique button identifier.
  /// * [forwardText]: If non-empty, new text of the button in forwarded messages.
  const InlineKeyboardButtonTypeLoginUrl({
    required this.url,
    required this.id,
    required this.forwardText,
  });
  
  /// An HTTP URL to pass to getLoginUrlInfo 
  final String url;

  /// Unique button identifier 
  final int id;

  /// If non-empty, new text of the button in forwarded messages
  final String forwardText;
  
  /// Parse from a json
  factory InlineKeyboardButtonTypeLoginUrl.fromJson(Map<String, dynamic> json) => InlineKeyboardButtonTypeLoginUrl(
    url: json['url'],
    id: json['id'],
    forwardText: json['forward_text'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "url": url,
      "id": id,
      "forward_text": forwardText,
    };
  }
  
  @override
  InlineKeyboardButtonTypeLoginUrl copyWith({
    String? url,
    int? id,
    String? forwardText,
  }) => InlineKeyboardButtonTypeLoginUrl(
    url: url ?? this.url,
    id: id ?? this.id,
    forwardText: forwardText ?? this.forwardText,
  );

  static const String constructor = 'inlineKeyboardButtonTypeLoginUrl';
  
  @override
  String getConstructor() => constructor;
}


/// **InlineKeyboardButtonTypeWebApp** *(inlineKeyboardButtonTypeWebApp)* - child of InlineKeyboardButtonType
  ///
  /// A button that opens a Web App by calling openWebApp.
  ///
  /// * [url]: An HTTP URL to pass to openWebApp.
class InlineKeyboardButtonTypeWebApp extends InlineKeyboardButtonType {
  
  /// **InlineKeyboardButtonTypeWebApp** *(inlineKeyboardButtonTypeWebApp)* - child of InlineKeyboardButtonType
  ///
  /// A button that opens a Web App by calling openWebApp.
  ///
  /// * [url]: An HTTP URL to pass to openWebApp.
  const InlineKeyboardButtonTypeWebApp({
    required this.url,
  });
  
  /// An HTTP URL to pass to openWebApp
  final String url;
  
  /// Parse from a json
  factory InlineKeyboardButtonTypeWebApp.fromJson(Map<String, dynamic> json) => InlineKeyboardButtonTypeWebApp(
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
  InlineKeyboardButtonTypeWebApp copyWith({
    String? url,
  }) => InlineKeyboardButtonTypeWebApp(
    url: url ?? this.url,
  );

  static const String constructor = 'inlineKeyboardButtonTypeWebApp';
  
  @override
  String getConstructor() => constructor;
}


/// **InlineKeyboardButtonTypeCallback** *(inlineKeyboardButtonTypeCallback)* - child of InlineKeyboardButtonType
  ///
  /// A button that sends a callback query to a bot.
  ///
  /// * [data]: Data to be sent to the bot via a callback query.
class InlineKeyboardButtonTypeCallback extends InlineKeyboardButtonType {
  
  /// **InlineKeyboardButtonTypeCallback** *(inlineKeyboardButtonTypeCallback)* - child of InlineKeyboardButtonType
  ///
  /// A button that sends a callback query to a bot.
  ///
  /// * [data]: Data to be sent to the bot via a callback query.
  const InlineKeyboardButtonTypeCallback({
    required this.data,
  });
  
  /// Data to be sent to the bot via a callback query
  final String data;
  
  /// Parse from a json
  factory InlineKeyboardButtonTypeCallback.fromJson(Map<String, dynamic> json) => InlineKeyboardButtonTypeCallback(
    data: json['data'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "data": data,
    };
  }
  
  @override
  InlineKeyboardButtonTypeCallback copyWith({
    String? data,
  }) => InlineKeyboardButtonTypeCallback(
    data: data ?? this.data,
  );

  static const String constructor = 'inlineKeyboardButtonTypeCallback';
  
  @override
  String getConstructor() => constructor;
}


/// **InlineKeyboardButtonTypeCallbackWithPassword** *(inlineKeyboardButtonTypeCallbackWithPassword)* - child of InlineKeyboardButtonType
  ///
  /// A button that asks for the 2-step verification password of the current user and then sends a callback query to a bot.
  ///
  /// * [data]: Data to be sent to the bot via a callback query.
class InlineKeyboardButtonTypeCallbackWithPassword extends InlineKeyboardButtonType {
  
  /// **InlineKeyboardButtonTypeCallbackWithPassword** *(inlineKeyboardButtonTypeCallbackWithPassword)* - child of InlineKeyboardButtonType
  ///
  /// A button that asks for the 2-step verification password of the current user and then sends a callback query to a bot.
  ///
  /// * [data]: Data to be sent to the bot via a callback query.
  const InlineKeyboardButtonTypeCallbackWithPassword({
    required this.data,
  });
  
  /// Data to be sent to the bot via a callback query
  final String data;
  
  /// Parse from a json
  factory InlineKeyboardButtonTypeCallbackWithPassword.fromJson(Map<String, dynamic> json) => InlineKeyboardButtonTypeCallbackWithPassword(
    data: json['data'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "data": data,
    };
  }
  
  @override
  InlineKeyboardButtonTypeCallbackWithPassword copyWith({
    String? data,
  }) => InlineKeyboardButtonTypeCallbackWithPassword(
    data: data ?? this.data,
  );

  static const String constructor = 'inlineKeyboardButtonTypeCallbackWithPassword';
  
  @override
  String getConstructor() => constructor;
}


/// **InlineKeyboardButtonTypeCallbackGame** *(inlineKeyboardButtonTypeCallbackGame)* - child of InlineKeyboardButtonType
  ///
  /// A button with a game that sends a callback query to a bot. This button must be in the first column and row of the keyboard and can be attached only to a message with content of the type messageGame.
class InlineKeyboardButtonTypeCallbackGame extends InlineKeyboardButtonType {
  
  /// **InlineKeyboardButtonTypeCallbackGame** *(inlineKeyboardButtonTypeCallbackGame)* - child of InlineKeyboardButtonType
  ///
  /// A button with a game that sends a callback query to a bot. This button must be in the first column and row of the keyboard and can be attached only to a message with content of the type messageGame.
  const InlineKeyboardButtonTypeCallbackGame();
  
  /// Parse from a json
  factory InlineKeyboardButtonTypeCallbackGame.fromJson(Map<String, dynamic> json) => const InlineKeyboardButtonTypeCallbackGame();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  InlineKeyboardButtonTypeCallbackGame copyWith() => const InlineKeyboardButtonTypeCallbackGame();

  static const String constructor = 'inlineKeyboardButtonTypeCallbackGame';
  
  @override
  String getConstructor() => constructor;
}


/// **InlineKeyboardButtonTypeSwitchInline** *(inlineKeyboardButtonTypeSwitchInline)* - child of InlineKeyboardButtonType
  ///
  /// A button that forces an inline query to the bot to be inserted in the input field.
  ///
  /// * [query]: Inline query to be sent to the bot.
  /// * [inCurrentChat]: True, if the inline query must be sent from the current chat.
class InlineKeyboardButtonTypeSwitchInline extends InlineKeyboardButtonType {
  
  /// **InlineKeyboardButtonTypeSwitchInline** *(inlineKeyboardButtonTypeSwitchInline)* - child of InlineKeyboardButtonType
  ///
  /// A button that forces an inline query to the bot to be inserted in the input field.
  ///
  /// * [query]: Inline query to be sent to the bot.
  /// * [inCurrentChat]: True, if the inline query must be sent from the current chat.
  const InlineKeyboardButtonTypeSwitchInline({
    required this.query,
    required this.inCurrentChat,
  });
  
  /// Inline query to be sent to the bot 
  final String query;

  /// True, if the inline query must be sent from the current chat
  final bool inCurrentChat;
  
  /// Parse from a json
  factory InlineKeyboardButtonTypeSwitchInline.fromJson(Map<String, dynamic> json) => InlineKeyboardButtonTypeSwitchInline(
    query: json['query'],
    inCurrentChat: json['in_current_chat'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "query": query,
      "in_current_chat": inCurrentChat,
    };
  }
  
  @override
  InlineKeyboardButtonTypeSwitchInline copyWith({
    String? query,
    bool? inCurrentChat,
  }) => InlineKeyboardButtonTypeSwitchInline(
    query: query ?? this.query,
    inCurrentChat: inCurrentChat ?? this.inCurrentChat,
  );

  static const String constructor = 'inlineKeyboardButtonTypeSwitchInline';
  
  @override
  String getConstructor() => constructor;
}


/// **InlineKeyboardButtonTypeBuy** *(inlineKeyboardButtonTypeBuy)* - child of InlineKeyboardButtonType
  ///
  /// A button to buy something. This button must be in the first column and row of the keyboard and can be attached only to a message with content of the type messageInvoice.
class InlineKeyboardButtonTypeBuy extends InlineKeyboardButtonType {
  
  /// **InlineKeyboardButtonTypeBuy** *(inlineKeyboardButtonTypeBuy)* - child of InlineKeyboardButtonType
  ///
  /// A button to buy something. This button must be in the first column and row of the keyboard and can be attached only to a message with content of the type messageInvoice.
  const InlineKeyboardButtonTypeBuy();
  
  /// Parse from a json
  factory InlineKeyboardButtonTypeBuy.fromJson(Map<String, dynamic> json) => const InlineKeyboardButtonTypeBuy();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  InlineKeyboardButtonTypeBuy copyWith() => const InlineKeyboardButtonTypeBuy();

  static const String constructor = 'inlineKeyboardButtonTypeBuy';
  
  @override
  String getConstructor() => constructor;
}


/// **InlineKeyboardButtonTypeUser** *(inlineKeyboardButtonTypeUser)* - child of InlineKeyboardButtonType
  ///
  /// A button with a user reference to be handled in the same way as textEntityTypeMentionName entities.
  ///
  /// * [userId]: User identifier.
class InlineKeyboardButtonTypeUser extends InlineKeyboardButtonType {
  
  /// **InlineKeyboardButtonTypeUser** *(inlineKeyboardButtonTypeUser)* - child of InlineKeyboardButtonType
  ///
  /// A button with a user reference to be handled in the same way as textEntityTypeMentionName entities.
  ///
  /// * [userId]: User identifier.
  const InlineKeyboardButtonTypeUser({
    required this.userId,
  });
  
  /// User identifier
  final int userId;
  
  /// Parse from a json
  factory InlineKeyboardButtonTypeUser.fromJson(Map<String, dynamic> json) => InlineKeyboardButtonTypeUser(
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
  InlineKeyboardButtonTypeUser copyWith({
    int? userId,
  }) => InlineKeyboardButtonTypeUser(
    userId: userId ?? this.userId,
  );

  static const String constructor = 'inlineKeyboardButtonTypeUser';
  
  @override
  String getConstructor() => constructor;
}

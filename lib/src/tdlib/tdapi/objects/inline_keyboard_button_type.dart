part of '../tdapi.dart';

/// **InlineKeyboardButtonType** *(inlineKeyboardButtonType)* - parent
///
/// Describes the type of an inline keyboard button.
sealed class InlineKeyboardButtonType extends TdObject {
  
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
      case InlineKeyboardButtonTypeUrl.objectType:
        return InlineKeyboardButtonTypeUrl.fromJson(json);
      case InlineKeyboardButtonTypeLoginUrl.objectType:
        return InlineKeyboardButtonTypeLoginUrl.fromJson(json);
      case InlineKeyboardButtonTypeWebApp.objectType:
        return InlineKeyboardButtonTypeWebApp.fromJson(json);
      case InlineKeyboardButtonTypeCallback.objectType:
        return InlineKeyboardButtonTypeCallback.fromJson(json);
      case InlineKeyboardButtonTypeCallbackWithPassword.objectType:
        return InlineKeyboardButtonTypeCallbackWithPassword.fromJson(json);
      case InlineKeyboardButtonTypeCallbackGame.objectType:
        return InlineKeyboardButtonTypeCallbackGame.fromJson(json);
      case InlineKeyboardButtonTypeSwitchInline.objectType:
        return InlineKeyboardButtonTypeSwitchInline.fromJson(json);
      case InlineKeyboardButtonTypeBuy.objectType:
        return InlineKeyboardButtonTypeBuy.fromJson(json);
      case InlineKeyboardButtonTypeUser.objectType:
        return InlineKeyboardButtonTypeUser.fromJson(json);
      default:
        throw FormatException(
          "Unknown object ${json["@type"]} (expected child of InlineKeyboardButtonType)",
          json,
        );
    }
  }
  
  @override
  Map<String, dynamic> toJson();

  
  InlineKeyboardButtonType copyWith();

  static const String objectType = 'inlineKeyboardButtonType';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **InlineKeyboardButtonTypeUrl** *(inlineKeyboardButtonTypeUrl)* - child of InlineKeyboardButtonType
///
/// A button that opens a specified URL.
///
/// * [url]: HTTP or tg:// URL to open.
final class InlineKeyboardButtonTypeUrl extends InlineKeyboardButtonType {
  
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
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "url": url,
		};
	}

  
  @override
  InlineKeyboardButtonTypeUrl copyWith({
    String? url,
  }) => InlineKeyboardButtonTypeUrl(
    url: url ?? this.url,
  );

  static const String objectType = 'inlineKeyboardButtonTypeUrl';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **InlineKeyboardButtonTypeLoginUrl** *(inlineKeyboardButtonTypeLoginUrl)* - child of InlineKeyboardButtonType
///
/// A button that opens a specified URL and automatically authorize the current user by calling getLoginUrlInfo.
///
/// * [url]: An HTTP URL to pass to getLoginUrlInfo.
/// * [id]: Unique button identifier.
/// * [forwardText]: If non-empty, new text of the button in forwarded messages.
final class InlineKeyboardButtonTypeLoginUrl extends InlineKeyboardButtonType {
  
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
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
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

  static const String objectType = 'inlineKeyboardButtonTypeLoginUrl';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **InlineKeyboardButtonTypeWebApp** *(inlineKeyboardButtonTypeWebApp)* - child of InlineKeyboardButtonType
///
/// A button that opens a Web App by calling openWebApp.
///
/// * [url]: An HTTP URL to pass to openWebApp.
final class InlineKeyboardButtonTypeWebApp extends InlineKeyboardButtonType {
  
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
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "url": url,
		};
	}

  
  @override
  InlineKeyboardButtonTypeWebApp copyWith({
    String? url,
  }) => InlineKeyboardButtonTypeWebApp(
    url: url ?? this.url,
  );

  static const String objectType = 'inlineKeyboardButtonTypeWebApp';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **InlineKeyboardButtonTypeCallback** *(inlineKeyboardButtonTypeCallback)* - child of InlineKeyboardButtonType
///
/// A button that sends a callback query to a bot.
///
/// * [data]: Data to be sent to the bot via a callback query.
final class InlineKeyboardButtonTypeCallback extends InlineKeyboardButtonType {
  
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
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "data": data,
		};
	}

  
  @override
  InlineKeyboardButtonTypeCallback copyWith({
    String? data,
  }) => InlineKeyboardButtonTypeCallback(
    data: data ?? this.data,
  );

  static const String objectType = 'inlineKeyboardButtonTypeCallback';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **InlineKeyboardButtonTypeCallbackWithPassword** *(inlineKeyboardButtonTypeCallbackWithPassword)* - child of InlineKeyboardButtonType
///
/// A button that asks for the 2-step verification password of the current user and then sends a callback query to a bot.
///
/// * [data]: Data to be sent to the bot via a callback query.
final class InlineKeyboardButtonTypeCallbackWithPassword extends InlineKeyboardButtonType {
  
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
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "data": data,
		};
	}

  
  @override
  InlineKeyboardButtonTypeCallbackWithPassword copyWith({
    String? data,
  }) => InlineKeyboardButtonTypeCallbackWithPassword(
    data: data ?? this.data,
  );

  static const String objectType = 'inlineKeyboardButtonTypeCallbackWithPassword';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **InlineKeyboardButtonTypeCallbackGame** *(inlineKeyboardButtonTypeCallbackGame)* - child of InlineKeyboardButtonType
///
/// A button with a game that sends a callback query to a bot. This button must be in the first column and row of the keyboard and can be attached only to a message with content of the type messageGame.
final class InlineKeyboardButtonTypeCallbackGame extends InlineKeyboardButtonType {
  
  /// **InlineKeyboardButtonTypeCallbackGame** *(inlineKeyboardButtonTypeCallbackGame)* - child of InlineKeyboardButtonType
  ///
  /// A button with a game that sends a callback query to a bot. This button must be in the first column and row of the keyboard and can be attached only to a message with content of the type messageGame.
  const InlineKeyboardButtonTypeCallbackGame();
  
  /// Parse from a json
  factory InlineKeyboardButtonTypeCallbackGame.fromJson(Map<String, dynamic> json) => const InlineKeyboardButtonTypeCallbackGame();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  InlineKeyboardButtonTypeCallbackGame copyWith() => const InlineKeyboardButtonTypeCallbackGame();

  static const String objectType = 'inlineKeyboardButtonTypeCallbackGame';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **InlineKeyboardButtonTypeSwitchInline** *(inlineKeyboardButtonTypeSwitchInline)* - child of InlineKeyboardButtonType
///
/// A button that forces an inline query to the bot to be inserted in the input field.
///
/// * [query]: Inline query to be sent to the bot.
/// * [inCurrentChat]: True, if the inline query must be sent from the current chat.
final class InlineKeyboardButtonTypeSwitchInline extends InlineKeyboardButtonType {
  
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
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
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

  static const String objectType = 'inlineKeyboardButtonTypeSwitchInline';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **InlineKeyboardButtonTypeBuy** *(inlineKeyboardButtonTypeBuy)* - child of InlineKeyboardButtonType
///
/// A button to buy something. This button must be in the first column and row of the keyboard and can be attached only to a message with content of the type messageInvoice.
final class InlineKeyboardButtonTypeBuy extends InlineKeyboardButtonType {
  
  /// **InlineKeyboardButtonTypeBuy** *(inlineKeyboardButtonTypeBuy)* - child of InlineKeyboardButtonType
  ///
  /// A button to buy something. This button must be in the first column and row of the keyboard and can be attached only to a message with content of the type messageInvoice.
  const InlineKeyboardButtonTypeBuy();
  
  /// Parse from a json
  factory InlineKeyboardButtonTypeBuy.fromJson(Map<String, dynamic> json) => const InlineKeyboardButtonTypeBuy();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  InlineKeyboardButtonTypeBuy copyWith() => const InlineKeyboardButtonTypeBuy();

  static const String objectType = 'inlineKeyboardButtonTypeBuy';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **InlineKeyboardButtonTypeUser** *(inlineKeyboardButtonTypeUser)* - child of InlineKeyboardButtonType
///
/// A button with a user reference to be handled in the same way as textEntityTypeMentionName entities.
///
/// * [userId]: User identifier.
final class InlineKeyboardButtonTypeUser extends InlineKeyboardButtonType {
  
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
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "user_id": userId,
		};
	}

  
  @override
  InlineKeyboardButtonTypeUser copyWith({
    int? userId,
  }) => InlineKeyboardButtonTypeUser(
    userId: userId ?? this.userId,
  );

  static const String objectType = 'inlineKeyboardButtonTypeUser';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

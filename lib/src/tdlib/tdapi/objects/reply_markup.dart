part of '../tdapi.dart';

/// **ReplyMarkup** *(replyMarkup)* - parent
///
/// Contains a description of a custom keyboard and actions that can be done with it to quickly reply to bots.
sealed class ReplyMarkup extends TdObject {
  
  /// **ReplyMarkup** *(replyMarkup)* - parent
  ///
  /// Contains a description of a custom keyboard and actions that can be done with it to quickly reply to bots.
  const ReplyMarkup();
  
  /// a ReplyMarkup return type can be :
  /// * [ReplyMarkupRemoveKeyboard]
  /// * [ReplyMarkupForceReply]
  /// * [ReplyMarkupShowKeyboard]
  /// * [ReplyMarkupInlineKeyboard]
  factory ReplyMarkup.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case ReplyMarkupRemoveKeyboard.objectType:
        return ReplyMarkupRemoveKeyboard.fromJson(json);
      case ReplyMarkupForceReply.objectType:
        return ReplyMarkupForceReply.fromJson(json);
      case ReplyMarkupShowKeyboard.objectType:
        return ReplyMarkupShowKeyboard.fromJson(json);
      case ReplyMarkupInlineKeyboard.objectType:
        return ReplyMarkupInlineKeyboard.fromJson(json);
      default:
        throw FormatException(
          "Unknown object ${json["@type"]} (expected child of ReplyMarkup)",
          json,
        );
    }
  }
  
  @override
  Map<String, dynamic> toJson();

  
  ReplyMarkup copyWith();

  static const String objectType = 'replyMarkup';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **ReplyMarkupRemoveKeyboard** *(replyMarkupRemoveKeyboard)* - child of ReplyMarkup
///
/// Instructs application to remove the keyboard once this message has been received. This kind of keyboard can't be received in an incoming message; instead, updateChatReplyMarkup with message_id == 0 will be sent.
///
/// * [isPersonal]: True, if the keyboard is removed only for the mentioned users or the target user of a reply.
final class ReplyMarkupRemoveKeyboard extends ReplyMarkup {
  
  /// **ReplyMarkupRemoveKeyboard** *(replyMarkupRemoveKeyboard)* - child of ReplyMarkup
  ///
  /// Instructs application to remove the keyboard once this message has been received. This kind of keyboard can't be received in an incoming message; instead, updateChatReplyMarkup with message_id == 0 will be sent.
  ///
  /// * [isPersonal]: True, if the keyboard is removed only for the mentioned users or the target user of a reply.
  const ReplyMarkupRemoveKeyboard({
    required this.isPersonal,
  });
  
  /// True, if the keyboard is removed only for the mentioned users or the target user of a reply
  final bool isPersonal;
  
  /// Parse from a json
  factory ReplyMarkupRemoveKeyboard.fromJson(Map<String, dynamic> json) => ReplyMarkupRemoveKeyboard(
    isPersonal: json['is_personal'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "is_personal": isPersonal,
		};
	}

  
  @override
  ReplyMarkupRemoveKeyboard copyWith({
    bool? isPersonal,
  }) => ReplyMarkupRemoveKeyboard(
    isPersonal: isPersonal ?? this.isPersonal,
  );

  static const String objectType = 'replyMarkupRemoveKeyboard';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **ReplyMarkupForceReply** *(replyMarkupForceReply)* - child of ReplyMarkup
///
/// Instructs application to force a reply to this message.
///
/// * [isPersonal]: True, if a forced reply must automatically be shown to the current user. For outgoing messages, specify true to show the forced reply only for the mentioned users and for the target user of a reply.
/// * [inputFieldPlaceholder]: If non-empty, the placeholder to be shown in the input field when the reply is active; 0-64 characters.
final class ReplyMarkupForceReply extends ReplyMarkup {
  
  /// **ReplyMarkupForceReply** *(replyMarkupForceReply)* - child of ReplyMarkup
  ///
  /// Instructs application to force a reply to this message.
  ///
  /// * [isPersonal]: True, if a forced reply must automatically be shown to the current user. For outgoing messages, specify true to show the forced reply only for the mentioned users and for the target user of a reply.
  /// * [inputFieldPlaceholder]: If non-empty, the placeholder to be shown in the input field when the reply is active; 0-64 characters.
  const ReplyMarkupForceReply({
    required this.isPersonal,
    required this.inputFieldPlaceholder,
  });
  
  /// True, if a forced reply must automatically be shown to the current user. For outgoing messages, specify true to show the forced reply only for the mentioned users and for the target user of a reply
  final bool isPersonal;

  /// If non-empty, the placeholder to be shown in the input field when the reply is active; 0-64 characters
  final String inputFieldPlaceholder;
  
  /// Parse from a json
  factory ReplyMarkupForceReply.fromJson(Map<String, dynamic> json) => ReplyMarkupForceReply(
    isPersonal: json['is_personal'],
    inputFieldPlaceholder: json['input_field_placeholder'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "is_personal": isPersonal,
      "input_field_placeholder": inputFieldPlaceholder,
		};
	}

  
  @override
  ReplyMarkupForceReply copyWith({
    bool? isPersonal,
    String? inputFieldPlaceholder,
  }) => ReplyMarkupForceReply(
    isPersonal: isPersonal ?? this.isPersonal,
    inputFieldPlaceholder: inputFieldPlaceholder ?? this.inputFieldPlaceholder,
  );

  static const String objectType = 'replyMarkupForceReply';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **ReplyMarkupShowKeyboard** *(replyMarkupShowKeyboard)* - child of ReplyMarkup
///
/// Contains a custom keyboard layout to quickly reply to bots.
///
/// * [rows]: A list of rows of bot keyboard buttons.
/// * [isPersistent]: True, if the keyboard is supposed to always be shown when the ordinary keyboard is hidden.
/// * [resizeKeyboard]: True, if the application needs to resize the keyboard vertically.
/// * [oneTime]: True, if the application needs to hide the keyboard after use.
/// * [isPersonal]: True, if the keyboard must automatically be shown to the current user. For outgoing messages, specify true to show the keyboard only for the mentioned users and for the target user of a reply.
/// * [inputFieldPlaceholder]: If non-empty, the placeholder to be shown in the input field when the keyboard is active; 0-64 characters.
final class ReplyMarkupShowKeyboard extends ReplyMarkup {
  
  /// **ReplyMarkupShowKeyboard** *(replyMarkupShowKeyboard)* - child of ReplyMarkup
  ///
  /// Contains a custom keyboard layout to quickly reply to bots.
  ///
  /// * [rows]: A list of rows of bot keyboard buttons.
  /// * [isPersistent]: True, if the keyboard is supposed to always be shown when the ordinary keyboard is hidden.
  /// * [resizeKeyboard]: True, if the application needs to resize the keyboard vertically.
  /// * [oneTime]: True, if the application needs to hide the keyboard after use.
  /// * [isPersonal]: True, if the keyboard must automatically be shown to the current user. For outgoing messages, specify true to show the keyboard only for the mentioned users and for the target user of a reply.
  /// * [inputFieldPlaceholder]: If non-empty, the placeholder to be shown in the input field when the keyboard is active; 0-64 characters.
  const ReplyMarkupShowKeyboard({
    required this.rows,
    required this.isPersistent,
    required this.resizeKeyboard,
    required this.oneTime,
    required this.isPersonal,
    required this.inputFieldPlaceholder,
  });
  
  /// A list of rows of bot keyboard buttons
  final List<List<KeyboardButton>> rows;

  /// True, if the keyboard is supposed to always be shown when the ordinary keyboard is hidden
  final bool isPersistent;

  /// True, if the application needs to resize the keyboard vertically
  final bool resizeKeyboard;

  /// True, if the application needs to hide the keyboard after use
  final bool oneTime;

  /// True, if the keyboard must automatically be shown to the current user. For outgoing messages, specify true to show the keyboard only for the mentioned users and for the target user of a reply
  final bool isPersonal;

  /// If non-empty, the placeholder to be shown in the input field when the keyboard is active; 0-64 characters
  final String inputFieldPlaceholder;
  
  /// Parse from a json
  factory ReplyMarkupShowKeyboard.fromJson(Map<String, dynamic> json) => ReplyMarkupShowKeyboard(
    rows: List<List<KeyboardButton>>.from((json['rows'] ?? []).map((item) => List<KeyboardButton>.from((item ?? []).map((innerItem) => KeyboardButton.fromJson(innerItem)).toList())).toList()),
    isPersistent: json['is_persistent'],
    resizeKeyboard: json['resize_keyboard'],
    oneTime: json['one_time'],
    isPersonal: json['is_personal'],
    inputFieldPlaceholder: json['input_field_placeholder'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "rows": rows.map((i) => i.map((ii) => ii.toJson()).toList()).toList(),
      "is_persistent": isPersistent,
      "resize_keyboard": resizeKeyboard,
      "one_time": oneTime,
      "is_personal": isPersonal,
      "input_field_placeholder": inputFieldPlaceholder,
		};
	}

  
  @override
  ReplyMarkupShowKeyboard copyWith({
    List<List<KeyboardButton>>? rows,
    bool? isPersistent,
    bool? resizeKeyboard,
    bool? oneTime,
    bool? isPersonal,
    String? inputFieldPlaceholder,
  }) => ReplyMarkupShowKeyboard(
    rows: rows ?? this.rows,
    isPersistent: isPersistent ?? this.isPersistent,
    resizeKeyboard: resizeKeyboard ?? this.resizeKeyboard,
    oneTime: oneTime ?? this.oneTime,
    isPersonal: isPersonal ?? this.isPersonal,
    inputFieldPlaceholder: inputFieldPlaceholder ?? this.inputFieldPlaceholder,
  );

  static const String objectType = 'replyMarkupShowKeyboard';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **ReplyMarkupInlineKeyboard** *(replyMarkupInlineKeyboard)* - child of ReplyMarkup
///
/// Contains an inline keyboard layout.
///
/// * [rows]: A list of rows of inline keyboard buttons.
final class ReplyMarkupInlineKeyboard extends ReplyMarkup {
  
  /// **ReplyMarkupInlineKeyboard** *(replyMarkupInlineKeyboard)* - child of ReplyMarkup
  ///
  /// Contains an inline keyboard layout.
  ///
  /// * [rows]: A list of rows of inline keyboard buttons.
  const ReplyMarkupInlineKeyboard({
    required this.rows,
  });
  
  /// A list of rows of inline keyboard buttons
  final List<List<InlineKeyboardButton>> rows;
  
  /// Parse from a json
  factory ReplyMarkupInlineKeyboard.fromJson(Map<String, dynamic> json) => ReplyMarkupInlineKeyboard(
    rows: List<List<InlineKeyboardButton>>.from((json['rows'] ?? []).map((item) => List<InlineKeyboardButton>.from((item ?? []).map((innerItem) => InlineKeyboardButton.fromJson(innerItem)).toList())).toList()),
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "rows": rows.map((i) => i.map((ii) => ii.toJson()).toList()).toList(),
		};
	}

  
  @override
  ReplyMarkupInlineKeyboard copyWith({
    List<List<InlineKeyboardButton>>? rows,
  }) => ReplyMarkupInlineKeyboard(
    rows: rows ?? this.rows,
  );

  static const String objectType = 'replyMarkupInlineKeyboard';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

part of '../tdapi.dart';

/// **LoginUrlInfo** *(loginUrlInfo)* - parent
///
/// Contains information about an inline button of type inlineKeyboardButtonTypeLoginUrl.
sealed class LoginUrlInfo extends TdObject {
  
  /// **LoginUrlInfo** *(loginUrlInfo)* - parent
  ///
  /// Contains information about an inline button of type inlineKeyboardButtonTypeLoginUrl.
  const LoginUrlInfo();
  
  /// a LoginUrlInfo return type can be :
  /// * [LoginUrlInfoOpen]
  /// * [LoginUrlInfoRequestConfirmation]
  factory LoginUrlInfo.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case LoginUrlInfoOpen.objectType:
        return LoginUrlInfoOpen.fromJson(json);
      case LoginUrlInfoRequestConfirmation.objectType:
        return LoginUrlInfoRequestConfirmation.fromJson(json);
      default:
        throw FormatException(
          "Unknown object ${json["@type"]} (expected child of LoginUrlInfo)",
          json,
        );
    }
  }
  
  @override
  Map<String, dynamic> toJson();

  
  LoginUrlInfo copyWith();

  static const String objectType = 'loginUrlInfo';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **LoginUrlInfoOpen** *(loginUrlInfoOpen)* - child of LoginUrlInfo
///
/// An HTTP URL needs to be open.
///
/// * [url]: The URL to open.
/// * [skipConfirm]: True, if there is no need to show an ordinary open URL confirm.
final class LoginUrlInfoOpen extends LoginUrlInfo {
  
  /// **LoginUrlInfoOpen** *(loginUrlInfoOpen)* - child of LoginUrlInfo
  ///
  /// An HTTP URL needs to be open.
  ///
  /// * [url]: The URL to open.
  /// * [skipConfirm]: True, if there is no need to show an ordinary open URL confirm.
  const LoginUrlInfoOpen({
    required this.url,
    required this.skipConfirm,
    this.extra,
    this.clientId,
  });
  
  /// The URL to open 
  final String url;

  /// True, if there is no need to show an ordinary open URL confirm
  final bool skipConfirm;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory LoginUrlInfoOpen.fromJson(Map<String, dynamic> json) => LoginUrlInfoOpen(
    url: json['url'],
    skipConfirm: json['skip_confirm'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "url": url,
      "skip_confirm": skipConfirm,
		};
	}

  
  @override
  LoginUrlInfoOpen copyWith({
    String? url,
    bool? skipConfirm,
    dynamic extra,
    int? clientId,
  }) => LoginUrlInfoOpen(
    url: url ?? this.url,
    skipConfirm: skipConfirm ?? this.skipConfirm,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'loginUrlInfoOpen';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **LoginUrlInfoRequestConfirmation** *(loginUrlInfoRequestConfirmation)* - child of LoginUrlInfo
///
/// An authorization confirmation dialog needs to be shown to the user.
///
/// * [url]: An HTTP URL to be opened.
/// * [domain]: A domain of the URL.
/// * [botUserId]: User identifier of a bot linked with the website.
/// * [requestWriteAccess]: True, if the user needs to be requested to give the permission to the bot to send them messages.
final class LoginUrlInfoRequestConfirmation extends LoginUrlInfo {
  
  /// **LoginUrlInfoRequestConfirmation** *(loginUrlInfoRequestConfirmation)* - child of LoginUrlInfo
  ///
  /// An authorization confirmation dialog needs to be shown to the user.
  ///
  /// * [url]: An HTTP URL to be opened.
  /// * [domain]: A domain of the URL.
  /// * [botUserId]: User identifier of a bot linked with the website.
  /// * [requestWriteAccess]: True, if the user needs to be requested to give the permission to the bot to send them messages.
  const LoginUrlInfoRequestConfirmation({
    required this.url,
    required this.domain,
    required this.botUserId,
    required this.requestWriteAccess,
    this.extra,
    this.clientId,
  });
  
  /// An HTTP URL to be opened
  final String url;

  /// A domain of the URL
  final String domain;

  /// User identifier of a bot linked with the website
  final int botUserId;

  /// True, if the user needs to be requested to give the permission to the bot to send them messages
  final bool requestWriteAccess;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory LoginUrlInfoRequestConfirmation.fromJson(Map<String, dynamic> json) => LoginUrlInfoRequestConfirmation(
    url: json['url'],
    domain: json['domain'],
    botUserId: json['bot_user_id'],
    requestWriteAccess: json['request_write_access'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "url": url,
      "domain": domain,
      "bot_user_id": botUserId,
      "request_write_access": requestWriteAccess,
		};
	}

  
  @override
  LoginUrlInfoRequestConfirmation copyWith({
    String? url,
    String? domain,
    int? botUserId,
    bool? requestWriteAccess,
    dynamic extra,
    int? clientId,
  }) => LoginUrlInfoRequestConfirmation(
    url: url ?? this.url,
    domain: domain ?? this.domain,
    botUserId: botUserId ?? this.botUserId,
    requestWriteAccess: requestWriteAccess ?? this.requestWriteAccess,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'loginUrlInfoRequestConfirmation';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

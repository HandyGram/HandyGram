part of '../tdapi.dart';

/// **DeepLinkInfo** *(deepLinkInfo)* - basic class
///
/// Contains information about a tg: deep link.
///
/// * [text]: Text to be shown to the user.
/// * [needUpdateApplication]: True, if the user must be asked to update the application.
final class DeepLinkInfo extends TdObject {
  
  /// **DeepLinkInfo** *(deepLinkInfo)* - basic class
  ///
  /// Contains information about a tg: deep link.
  ///
  /// * [text]: Text to be shown to the user.
  /// * [needUpdateApplication]: True, if the user must be asked to update the application.
  const DeepLinkInfo({
    required this.text,
    required this.needUpdateApplication,
    this.extra,
    this.clientId,
  });
  
  /// Text to be shown to the user 
  final FormattedText text;

  /// True, if the user must be asked to update the application
  final bool needUpdateApplication;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory DeepLinkInfo.fromJson(Map<String, dynamic> json) => DeepLinkInfo(
    text: FormattedText.fromJson(json['text']),
    needUpdateApplication: json['need_update_application'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "text": text.toJson(),
      "need_update_application": needUpdateApplication,
		};
	}

  
  DeepLinkInfo copyWith({
    FormattedText? text,
    bool? needUpdateApplication,
    dynamic extra,
    int? clientId,
  }) => DeepLinkInfo(
    text: text ?? this.text,
    needUpdateApplication: needUpdateApplication ?? this.needUpdateApplication,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'deepLinkInfo';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

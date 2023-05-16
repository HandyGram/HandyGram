part of '../tdapi.dart';

/// **SentWebAppMessage** *(sentWebAppMessage)* - basic class
///
/// Information about the message sent by answerWebAppQuery.
///
/// * [inlineMessageId]: Identifier of the sent inline message, if known.
final class SentWebAppMessage extends TdObject {
  
  /// **SentWebAppMessage** *(sentWebAppMessage)* - basic class
  ///
  /// Information about the message sent by answerWebAppQuery.
  ///
  /// * [inlineMessageId]: Identifier of the sent inline message, if known.
  const SentWebAppMessage({
    required this.inlineMessageId,
    this.extra,
    this.clientId,
  });
  
  /// Identifier of the sent inline message, if known
  final String inlineMessageId;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory SentWebAppMessage.fromJson(Map<String, dynamic> json) => SentWebAppMessage(
    inlineMessageId: json['inline_message_id'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "inline_message_id": inlineMessageId,
		};
	}

  
  SentWebAppMessage copyWith({
    String? inlineMessageId,
    dynamic extra,
    int? clientId,
  }) => SentWebAppMessage(
    inlineMessageId: inlineMessageId ?? this.inlineMessageId,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'sentWebAppMessage';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

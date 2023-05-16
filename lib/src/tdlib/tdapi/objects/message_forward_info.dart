part of '../tdapi.dart';

/// **MessageForwardInfo** *(messageForwardInfo)* - basic class
///
/// Contains information about a forwarded message.
///
/// * [origin]: Origin of a forwarded message.
/// * [date]: Point in time (Unix timestamp) when the message was originally sent.
/// * [publicServiceAnnouncementType]: The type of a public service announcement for the forwarded message.
/// * [fromChatId]: For messages forwarded to the chat with the current user (Saved Messages), to the Replies bot chat, or to the channel's discussion group, the identifier of the chat from which the message was forwarded last time; 0 if unknown.
/// * [fromMessageId]: For messages forwarded to the chat with the current user (Saved Messages), to the Replies bot chat, or to the channel's discussion group, the identifier of the original message from which the new message was forwarded last time; 0 if unknown.
final class MessageForwardInfo extends TdObject {
  
  /// **MessageForwardInfo** *(messageForwardInfo)* - basic class
  ///
  /// Contains information about a forwarded message.
  ///
  /// * [origin]: Origin of a forwarded message.
  /// * [date]: Point in time (Unix timestamp) when the message was originally sent.
  /// * [publicServiceAnnouncementType]: The type of a public service announcement for the forwarded message.
  /// * [fromChatId]: For messages forwarded to the chat with the current user (Saved Messages), to the Replies bot chat, or to the channel's discussion group, the identifier of the chat from which the message was forwarded last time; 0 if unknown.
  /// * [fromMessageId]: For messages forwarded to the chat with the current user (Saved Messages), to the Replies bot chat, or to the channel's discussion group, the identifier of the original message from which the new message was forwarded last time; 0 if unknown.
  const MessageForwardInfo({
    required this.origin,
    required this.date,
    required this.publicServiceAnnouncementType,
    required this.fromChatId,
    required this.fromMessageId,
  });
  
  /// Origin of a forwarded message
  final MessageForwardOrigin origin;

  /// Point in time (Unix timestamp) when the message was originally sent
  final int date;

  /// The type of a public service announcement for the forwarded message
  final String publicServiceAnnouncementType;

  /// For messages forwarded to the chat with the current user (Saved Messages), to the Replies bot chat, or to the channel's discussion group, the identifier of the chat from which the message was forwarded last time; 0 if unknown
  final int fromChatId;

  /// For messages forwarded to the chat with the current user (Saved Messages), to the Replies bot chat, or to the channel's discussion group, the identifier of the original message from which the new message was forwarded last time; 0 if unknown
  final int fromMessageId;
  
  /// Parse from a json
  factory MessageForwardInfo.fromJson(Map<String, dynamic> json) => MessageForwardInfo(
    origin: MessageForwardOrigin.fromJson(json['origin']),
    date: json['date'],
    publicServiceAnnouncementType: json['public_service_announcement_type'],
    fromChatId: json['from_chat_id'],
    fromMessageId: json['from_message_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "origin": origin.toJson(),
      "date": date,
      "public_service_announcement_type": publicServiceAnnouncementType,
      "from_chat_id": fromChatId,
      "from_message_id": fromMessageId,
		};
	}

  
  MessageForwardInfo copyWith({
    MessageForwardOrigin? origin,
    int? date,
    String? publicServiceAnnouncementType,
    int? fromChatId,
    int? fromMessageId,
  }) => MessageForwardInfo(
    origin: origin ?? this.origin,
    date: date ?? this.date,
    publicServiceAnnouncementType: publicServiceAnnouncementType ?? this.publicServiceAnnouncementType,
    fromChatId: fromChatId ?? this.fromChatId,
    fromMessageId: fromMessageId ?? this.fromMessageId,
  );

  static const String objectType = 'messageForwardInfo';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

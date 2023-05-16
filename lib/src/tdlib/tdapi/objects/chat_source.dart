part of '../tdapi.dart';

/// **ChatSource** *(chatSource)* - parent
///
/// Describes a reason why an external chat is shown in a chat list.
sealed class ChatSource extends TdObject {
  
  /// **ChatSource** *(chatSource)* - parent
  ///
  /// Describes a reason why an external chat is shown in a chat list.
  const ChatSource();
  
  /// a ChatSource return type can be :
  /// * [ChatSourceMtprotoProxy]
  /// * [ChatSourcePublicServiceAnnouncement]
  factory ChatSource.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case ChatSourceMtprotoProxy.objectType:
        return ChatSourceMtprotoProxy.fromJson(json);
      case ChatSourcePublicServiceAnnouncement.objectType:
        return ChatSourcePublicServiceAnnouncement.fromJson(json);
      default:
        throw FormatException(
          "Unknown object ${json["@type"]} (expected child of ChatSource)",
          json,
        );
    }
  }
  
  @override
  Map<String, dynamic> toJson();

  
  ChatSource copyWith();

  static const String objectType = 'chatSource';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **ChatSourceMtprotoProxy** *(chatSourceMtprotoProxy)* - child of ChatSource
///
/// The chat is sponsored by the user's MTProxy server.
final class ChatSourceMtprotoProxy extends ChatSource {
  
  /// **ChatSourceMtprotoProxy** *(chatSourceMtprotoProxy)* - child of ChatSource
  ///
  /// The chat is sponsored by the user's MTProxy server.
  const ChatSourceMtprotoProxy();
  
  /// Parse from a json
  factory ChatSourceMtprotoProxy.fromJson(Map<String, dynamic> json) => const ChatSourceMtprotoProxy();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  ChatSourceMtprotoProxy copyWith() => const ChatSourceMtprotoProxy();

  static const String objectType = 'chatSourceMtprotoProxy';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **ChatSourcePublicServiceAnnouncement** *(chatSourcePublicServiceAnnouncement)* - child of ChatSource
///
/// The chat contains a public service announcement.
///
/// * [type]: The type of the announcement.
/// * [text]: The text of the announcement.
final class ChatSourcePublicServiceAnnouncement extends ChatSource {
  
  /// **ChatSourcePublicServiceAnnouncement** *(chatSourcePublicServiceAnnouncement)* - child of ChatSource
  ///
  /// The chat contains a public service announcement.
  ///
  /// * [type]: The type of the announcement.
  /// * [text]: The text of the announcement.
  const ChatSourcePublicServiceAnnouncement({
    required this.type,
    required this.text,
  });
  
  /// The type of the announcement 
  final String type;

  /// The text of the announcement
  final String text;
  
  /// Parse from a json
  factory ChatSourcePublicServiceAnnouncement.fromJson(Map<String, dynamic> json) => ChatSourcePublicServiceAnnouncement(
    type: json['type'],
    text: json['text'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "type": type,
      "text": text,
		};
	}

  
  @override
  ChatSourcePublicServiceAnnouncement copyWith({
    String? type,
    String? text,
  }) => ChatSourcePublicServiceAnnouncement(
    type: type ?? this.type,
    text: text ?? this.text,
  );

  static const String objectType = 'chatSourcePublicServiceAnnouncement';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

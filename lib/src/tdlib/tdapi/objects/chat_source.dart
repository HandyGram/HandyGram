part of '../tdapi.dart';

/// **ChatSource** *(chatSource)* - parent
  ///
  /// Describes a reason why an external chat is shown in a chat list.
class ChatSource extends TdObject {
  
  /// **ChatSource** *(chatSource)* - parent
  ///
  /// Describes a reason why an external chat is shown in a chat list.
  const ChatSource();
  
  /// a ChatSource return type can be :
  /// * [ChatSourceMtprotoProxy]
  /// * [ChatSourcePublicServiceAnnouncement]
  factory ChatSource.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case ChatSourceMtprotoProxy.constructor:
        return ChatSourceMtprotoProxy.fromJson(json);
      case ChatSourcePublicServiceAnnouncement.constructor:
        return ChatSourcePublicServiceAnnouncement.fromJson(json);
      default:
        return const ChatSource();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  ChatSource copyWith() => const ChatSource();

  static const String constructor = 'chatSource';
  
  @override
  String getConstructor() => constructor;
}


/// **ChatSourceMtprotoProxy** *(chatSourceMtprotoProxy)* - child of ChatSource
  ///
  /// The chat is sponsored by the user's MTProxy server.
class ChatSourceMtprotoProxy extends ChatSource {
  
  /// **ChatSourceMtprotoProxy** *(chatSourceMtprotoProxy)* - child of ChatSource
  ///
  /// The chat is sponsored by the user's MTProxy server.
  const ChatSourceMtprotoProxy();
  
  /// Parse from a json
  factory ChatSourceMtprotoProxy.fromJson(Map<String, dynamic> json) => const ChatSourceMtprotoProxy();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  ChatSourceMtprotoProxy copyWith() => const ChatSourceMtprotoProxy();

  static const String constructor = 'chatSourceMtprotoProxy';
  
  @override
  String getConstructor() => constructor;
}


/// **ChatSourcePublicServiceAnnouncement** *(chatSourcePublicServiceAnnouncement)* - child of ChatSource
  ///
  /// The chat contains a public service announcement.
  ///
  /// * [type]: The type of the announcement.
  /// * [text]: The text of the announcement.
class ChatSourcePublicServiceAnnouncement extends ChatSource {
  
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
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
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

  static const String constructor = 'chatSourcePublicServiceAnnouncement';
  
  @override
  String getConstructor() => constructor;
}

part of '../tdapi.dart';

/// **MessageLink** *(messageLink)* - basic class
  ///
  /// Contains an HTTPS link to a message in a supergroup or channel, or a forum topic.
  ///
  /// * [link]: The link.
  /// * [isPublic]: True, if the link will work for non-members of the chat.
class MessageLink extends TdObject {
  
  /// **MessageLink** *(messageLink)* - basic class
  ///
  /// Contains an HTTPS link to a message in a supergroup or channel, or a forum topic.
  ///
  /// * [link]: The link.
  /// * [isPublic]: True, if the link will work for non-members of the chat.
  const MessageLink({
    required this.link,
    required this.isPublic,
    this.extra,
    this.clientId,
  });
  
  /// The link 
  final String link;

  /// True, if the link will work for non-members of the chat
  final bool isPublic;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory MessageLink.fromJson(Map<String, dynamic> json) => MessageLink(
    link: json['link'],
    isPublic: json['is_public'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "link": link,
      "is_public": isPublic,
    };
  }
  
  MessageLink copyWith({
    String? link,
    bool? isPublic,
    dynamic extra,
    int? clientId,
  }) => MessageLink(
    link: link ?? this.link,
    isPublic: isPublic ?? this.isPublic,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String constructor = 'messageLink';
  
  @override
  String getConstructor() => constructor;
}

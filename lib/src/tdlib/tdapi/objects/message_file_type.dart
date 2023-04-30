part of '../tdapi.dart';

/// **MessageFileType** *(messageFileType)* - parent
  ///
  /// Contains information about a file with messages exported from another app.
class MessageFileType extends TdObject {
  
  /// **MessageFileType** *(messageFileType)* - parent
  ///
  /// Contains information about a file with messages exported from another app.
  const MessageFileType();
  
  /// a MessageFileType return type can be :
  /// * [MessageFileTypePrivate]
  /// * [MessageFileTypeGroup]
  /// * [MessageFileTypeUnknown]
  factory MessageFileType.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case MessageFileTypePrivate.constructor:
        return MessageFileTypePrivate.fromJson(json);
      case MessageFileTypeGroup.constructor:
        return MessageFileTypeGroup.fromJson(json);
      case MessageFileTypeUnknown.constructor:
        return MessageFileTypeUnknown.fromJson(json);
      default:
        return const MessageFileType();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  MessageFileType copyWith() => const MessageFileType();

  static const String constructor = 'messageFileType';
  
  @override
  String getConstructor() => constructor;
}


/// **MessageFileTypePrivate** *(messageFileTypePrivate)* - child of MessageFileType
  ///
  /// The messages was exported from a private chat.
  ///
  /// * [name]: Name of the other party; may be empty if unrecognized.
class MessageFileTypePrivate extends MessageFileType {
  
  /// **MessageFileTypePrivate** *(messageFileTypePrivate)* - child of MessageFileType
  ///
  /// The messages was exported from a private chat.
  ///
  /// * [name]: Name of the other party; may be empty if unrecognized.
  const MessageFileTypePrivate({
    required this.name,
    this.extra,
    this.clientId,
  });
  
  /// Name of the other party; may be empty if unrecognized
  final String name;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory MessageFileTypePrivate.fromJson(Map<String, dynamic> json) => MessageFileTypePrivate(
    name: json['name'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "name": name,
    };
  }
  
  @override
  MessageFileTypePrivate copyWith({
    String? name,
    dynamic extra,
    int? clientId,
  }) => MessageFileTypePrivate(
    name: name ?? this.name,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String constructor = 'messageFileTypePrivate';
  
  @override
  String getConstructor() => constructor;
}


/// **MessageFileTypeGroup** *(messageFileTypeGroup)* - child of MessageFileType
  ///
  /// The messages was exported from a group chat.
  ///
  /// * [title]: Title of the group chat; may be empty if unrecognized.
class MessageFileTypeGroup extends MessageFileType {
  
  /// **MessageFileTypeGroup** *(messageFileTypeGroup)* - child of MessageFileType
  ///
  /// The messages was exported from a group chat.
  ///
  /// * [title]: Title of the group chat; may be empty if unrecognized.
  const MessageFileTypeGroup({
    required this.title,
    this.extra,
    this.clientId,
  });
  
  /// Title of the group chat; may be empty if unrecognized
  final String title;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory MessageFileTypeGroup.fromJson(Map<String, dynamic> json) => MessageFileTypeGroup(
    title: json['title'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "title": title,
    };
  }
  
  @override
  MessageFileTypeGroup copyWith({
    String? title,
    dynamic extra,
    int? clientId,
  }) => MessageFileTypeGroup(
    title: title ?? this.title,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String constructor = 'messageFileTypeGroup';
  
  @override
  String getConstructor() => constructor;
}


/// **MessageFileTypeUnknown** *(messageFileTypeUnknown)* - child of MessageFileType
  ///
  /// The messages was exported from a chat of unknown type.
class MessageFileTypeUnknown extends MessageFileType {
  
  /// **MessageFileTypeUnknown** *(messageFileTypeUnknown)* - child of MessageFileType
  ///
  /// The messages was exported from a chat of unknown type.
  const MessageFileTypeUnknown({
    this.extra,
    this.clientId,
  });
  
  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory MessageFileTypeUnknown.fromJson(Map<String, dynamic> json) => MessageFileTypeUnknown(
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  MessageFileTypeUnknown copyWith({
    dynamic extra,
    int? clientId,
  }) => MessageFileTypeUnknown(
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String constructor = 'messageFileTypeUnknown';
  
  @override
  String getConstructor() => constructor;
}

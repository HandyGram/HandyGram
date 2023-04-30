part of '../tdapi.dart';

/// **TMeUrlType** *(tMeUrlType)* - parent
  ///
  /// Describes the type of a URL linking to an internal Telegram entity.
class TMeUrlType extends TdObject {
  
  /// **TMeUrlType** *(tMeUrlType)* - parent
  ///
  /// Describes the type of a URL linking to an internal Telegram entity.
  const TMeUrlType();
  
  /// a TMeUrlType return type can be :
  /// * [TMeUrlTypeUser]
  /// * [TMeUrlTypeSupergroup]
  /// * [TMeUrlTypeChatInvite]
  /// * [TMeUrlTypeStickerSet]
  factory TMeUrlType.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case TMeUrlTypeUser.constructor:
        return TMeUrlTypeUser.fromJson(json);
      case TMeUrlTypeSupergroup.constructor:
        return TMeUrlTypeSupergroup.fromJson(json);
      case TMeUrlTypeChatInvite.constructor:
        return TMeUrlTypeChatInvite.fromJson(json);
      case TMeUrlTypeStickerSet.constructor:
        return TMeUrlTypeStickerSet.fromJson(json);
      default:
        return const TMeUrlType();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  TMeUrlType copyWith() => const TMeUrlType();

  static const String constructor = 'tMeUrlType';
  
  @override
  String getConstructor() => constructor;
}


/// **TMeUrlTypeUser** *(tMeUrlTypeUser)* - child of TMeUrlType
  ///
  /// A URL linking to a user.
  ///
  /// * [userId]: Identifier of the user.
class TMeUrlTypeUser extends TMeUrlType {
  
  /// **TMeUrlTypeUser** *(tMeUrlTypeUser)* - child of TMeUrlType
  ///
  /// A URL linking to a user.
  ///
  /// * [userId]: Identifier of the user.
  const TMeUrlTypeUser({
    required this.userId,
  });
  
  /// Identifier of the user
  final int userId;
  
  /// Parse from a json
  factory TMeUrlTypeUser.fromJson(Map<String, dynamic> json) => TMeUrlTypeUser(
    userId: json['user_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "user_id": userId,
    };
  }
  
  @override
  TMeUrlTypeUser copyWith({
    int? userId,
  }) => TMeUrlTypeUser(
    userId: userId ?? this.userId,
  );

  static const String constructor = 'tMeUrlTypeUser';
  
  @override
  String getConstructor() => constructor;
}


/// **TMeUrlTypeSupergroup** *(tMeUrlTypeSupergroup)* - child of TMeUrlType
  ///
  /// A URL linking to a public supergroup or channel.
  ///
  /// * [supergroupId]: Identifier of the supergroup or channel.
class TMeUrlTypeSupergroup extends TMeUrlType {
  
  /// **TMeUrlTypeSupergroup** *(tMeUrlTypeSupergroup)* - child of TMeUrlType
  ///
  /// A URL linking to a public supergroup or channel.
  ///
  /// * [supergroupId]: Identifier of the supergroup or channel.
  const TMeUrlTypeSupergroup({
    required this.supergroupId,
  });
  
  /// Identifier of the supergroup or channel
  final int supergroupId;
  
  /// Parse from a json
  factory TMeUrlTypeSupergroup.fromJson(Map<String, dynamic> json) => TMeUrlTypeSupergroup(
    supergroupId: json['supergroup_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "supergroup_id": supergroupId,
    };
  }
  
  @override
  TMeUrlTypeSupergroup copyWith({
    int? supergroupId,
  }) => TMeUrlTypeSupergroup(
    supergroupId: supergroupId ?? this.supergroupId,
  );

  static const String constructor = 'tMeUrlTypeSupergroup';
  
  @override
  String getConstructor() => constructor;
}


/// **TMeUrlTypeChatInvite** *(tMeUrlTypeChatInvite)* - child of TMeUrlType
  ///
  /// A chat invite link.
  ///
  /// * [info]: Information about the chat invite link.
class TMeUrlTypeChatInvite extends TMeUrlType {
  
  /// **TMeUrlTypeChatInvite** *(tMeUrlTypeChatInvite)* - child of TMeUrlType
  ///
  /// A chat invite link.
  ///
  /// * [info]: Information about the chat invite link.
  const TMeUrlTypeChatInvite({
    required this.info,
  });
  
  /// Information about the chat invite link
  final ChatInviteLinkInfo info;
  
  /// Parse from a json
  factory TMeUrlTypeChatInvite.fromJson(Map<String, dynamic> json) => TMeUrlTypeChatInvite(
    info: ChatInviteLinkInfo.fromJson(json['info']),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "info": info.toJson(),
    };
  }
  
  @override
  TMeUrlTypeChatInvite copyWith({
    ChatInviteLinkInfo? info,
  }) => TMeUrlTypeChatInvite(
    info: info ?? this.info,
  );

  static const String constructor = 'tMeUrlTypeChatInvite';
  
  @override
  String getConstructor() => constructor;
}


/// **TMeUrlTypeStickerSet** *(tMeUrlTypeStickerSet)* - child of TMeUrlType
  ///
  /// A URL linking to a sticker set.
  ///
  /// * [stickerSetId]: Identifier of the sticker set.
class TMeUrlTypeStickerSet extends TMeUrlType {
  
  /// **TMeUrlTypeStickerSet** *(tMeUrlTypeStickerSet)* - child of TMeUrlType
  ///
  /// A URL linking to a sticker set.
  ///
  /// * [stickerSetId]: Identifier of the sticker set.
  const TMeUrlTypeStickerSet({
    required this.stickerSetId,
  });
  
  /// Identifier of the sticker set
  final int stickerSetId;
  
  /// Parse from a json
  factory TMeUrlTypeStickerSet.fromJson(Map<String, dynamic> json) => TMeUrlTypeStickerSet(
    stickerSetId: int.parse(json['sticker_set_id']),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "sticker_set_id": stickerSetId,
    };
  }
  
  @override
  TMeUrlTypeStickerSet copyWith({
    int? stickerSetId,
  }) => TMeUrlTypeStickerSet(
    stickerSetId: stickerSetId ?? this.stickerSetId,
  );

  static const String constructor = 'tMeUrlTypeStickerSet';
  
  @override
  String getConstructor() => constructor;
}

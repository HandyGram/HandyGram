part of '../tdapi.dart';

/// **TMeUrlType** *(tMeUrlType)* - parent
///
/// Describes the type of a URL linking to an internal Telegram entity.
sealed class TMeUrlType extends TdObject {
  
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
      case TMeUrlTypeUser.objectType:
        return TMeUrlTypeUser.fromJson(json);
      case TMeUrlTypeSupergroup.objectType:
        return TMeUrlTypeSupergroup.fromJson(json);
      case TMeUrlTypeChatInvite.objectType:
        return TMeUrlTypeChatInvite.fromJson(json);
      case TMeUrlTypeStickerSet.objectType:
        return TMeUrlTypeStickerSet.fromJson(json);
      default:
        throw FormatException(
          "Unknown object ${json["@type"]} (expected child of TMeUrlType)",
          json,
        );
    }
  }
  
  @override
  Map<String, dynamic> toJson();

  
  TMeUrlType copyWith();

  static const String objectType = 'tMeUrlType';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **TMeUrlTypeUser** *(tMeUrlTypeUser)* - child of TMeUrlType
///
/// A URL linking to a user.
///
/// * [userId]: Identifier of the user.
final class TMeUrlTypeUser extends TMeUrlType {
  
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
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "user_id": userId,
		};
	}

  
  @override
  TMeUrlTypeUser copyWith({
    int? userId,
  }) => TMeUrlTypeUser(
    userId: userId ?? this.userId,
  );

  static const String objectType = 'tMeUrlTypeUser';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **TMeUrlTypeSupergroup** *(tMeUrlTypeSupergroup)* - child of TMeUrlType
///
/// A URL linking to a public supergroup or channel.
///
/// * [supergroupId]: Identifier of the supergroup or channel.
final class TMeUrlTypeSupergroup extends TMeUrlType {
  
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
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "supergroup_id": supergroupId,
		};
	}

  
  @override
  TMeUrlTypeSupergroup copyWith({
    int? supergroupId,
  }) => TMeUrlTypeSupergroup(
    supergroupId: supergroupId ?? this.supergroupId,
  );

  static const String objectType = 'tMeUrlTypeSupergroup';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **TMeUrlTypeChatInvite** *(tMeUrlTypeChatInvite)* - child of TMeUrlType
///
/// A chat invite link.
///
/// * [info]: Information about the chat invite link.
final class TMeUrlTypeChatInvite extends TMeUrlType {
  
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
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "info": info.toJson(),
		};
	}

  
  @override
  TMeUrlTypeChatInvite copyWith({
    ChatInviteLinkInfo? info,
  }) => TMeUrlTypeChatInvite(
    info: info ?? this.info,
  );

  static const String objectType = 'tMeUrlTypeChatInvite';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **TMeUrlTypeStickerSet** *(tMeUrlTypeStickerSet)* - child of TMeUrlType
///
/// A URL linking to a sticker set.
///
/// * [stickerSetId]: Identifier of the sticker set.
final class TMeUrlTypeStickerSet extends TMeUrlType {
  
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
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "sticker_set_id": stickerSetId,
		};
	}

  
  @override
  TMeUrlTypeStickerSet copyWith({
    int? stickerSetId,
  }) => TMeUrlTypeStickerSet(
    stickerSetId: stickerSetId ?? this.stickerSetId,
  );

  static const String objectType = 'tMeUrlTypeStickerSet';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

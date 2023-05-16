part of '../tdapi.dart';

/// **PublicChatType** *(publicChatType)* - parent
///
/// Describes a type of public chats.
sealed class PublicChatType extends TdObject {
  
  /// **PublicChatType** *(publicChatType)* - parent
  ///
  /// Describes a type of public chats.
  const PublicChatType();
  
  /// a PublicChatType return type can be :
  /// * [PublicChatTypeHasUsername]
  /// * [PublicChatTypeIsLocationBased]
  factory PublicChatType.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case PublicChatTypeHasUsername.objectType:
        return PublicChatTypeHasUsername.fromJson(json);
      case PublicChatTypeIsLocationBased.objectType:
        return PublicChatTypeIsLocationBased.fromJson(json);
      default:
        throw FormatException(
          "Unknown object ${json["@type"]} (expected child of PublicChatType)",
          json,
        );
    }
  }
  
  @override
  Map<String, dynamic> toJson();

  
  PublicChatType copyWith();

  static const String objectType = 'publicChatType';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **PublicChatTypeHasUsername** *(publicChatTypeHasUsername)* - child of PublicChatType
///
/// The chat is public, because it has an active username.
final class PublicChatTypeHasUsername extends PublicChatType {
  
  /// **PublicChatTypeHasUsername** *(publicChatTypeHasUsername)* - child of PublicChatType
  ///
  /// The chat is public, because it has an active username.
  const PublicChatTypeHasUsername();
  
  /// Parse from a json
  factory PublicChatTypeHasUsername.fromJson(Map<String, dynamic> json) => const PublicChatTypeHasUsername();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  PublicChatTypeHasUsername copyWith() => const PublicChatTypeHasUsername();

  static const String objectType = 'publicChatTypeHasUsername';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **PublicChatTypeIsLocationBased** *(publicChatTypeIsLocationBased)* - child of PublicChatType
///
/// The chat is public, because it is a location-based supergroup.
final class PublicChatTypeIsLocationBased extends PublicChatType {
  
  /// **PublicChatTypeIsLocationBased** *(publicChatTypeIsLocationBased)* - child of PublicChatType
  ///
  /// The chat is public, because it is a location-based supergroup.
  const PublicChatTypeIsLocationBased();
  
  /// Parse from a json
  factory PublicChatTypeIsLocationBased.fromJson(Map<String, dynamic> json) => const PublicChatTypeIsLocationBased();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  PublicChatTypeIsLocationBased copyWith() => const PublicChatTypeIsLocationBased();

  static const String objectType = 'publicChatTypeIsLocationBased';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

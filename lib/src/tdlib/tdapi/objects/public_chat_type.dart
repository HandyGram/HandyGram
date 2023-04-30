part of '../tdapi.dart';

/// **PublicChatType** *(publicChatType)* - parent
  ///
  /// Describes a type of public chats.
class PublicChatType extends TdObject {
  
  /// **PublicChatType** *(publicChatType)* - parent
  ///
  /// Describes a type of public chats.
  const PublicChatType();
  
  /// a PublicChatType return type can be :
  /// * [PublicChatTypeHasUsername]
  /// * [PublicChatTypeIsLocationBased]
  factory PublicChatType.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case PublicChatTypeHasUsername.constructor:
        return PublicChatTypeHasUsername.fromJson(json);
      case PublicChatTypeIsLocationBased.constructor:
        return PublicChatTypeIsLocationBased.fromJson(json);
      default:
        return const PublicChatType();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  PublicChatType copyWith() => const PublicChatType();

  static const String constructor = 'publicChatType';
  
  @override
  String getConstructor() => constructor;
}


/// **PublicChatTypeHasUsername** *(publicChatTypeHasUsername)* - child of PublicChatType
  ///
  /// The chat is public, because it has an active username.
class PublicChatTypeHasUsername extends PublicChatType {
  
  /// **PublicChatTypeHasUsername** *(publicChatTypeHasUsername)* - child of PublicChatType
  ///
  /// The chat is public, because it has an active username.
  const PublicChatTypeHasUsername();
  
  /// Parse from a json
  factory PublicChatTypeHasUsername.fromJson(Map<String, dynamic> json) => const PublicChatTypeHasUsername();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  PublicChatTypeHasUsername copyWith() => const PublicChatTypeHasUsername();

  static const String constructor = 'publicChatTypeHasUsername';
  
  @override
  String getConstructor() => constructor;
}


/// **PublicChatTypeIsLocationBased** *(publicChatTypeIsLocationBased)* - child of PublicChatType
  ///
  /// The chat is public, because it is a location-based supergroup.
class PublicChatTypeIsLocationBased extends PublicChatType {
  
  /// **PublicChatTypeIsLocationBased** *(publicChatTypeIsLocationBased)* - child of PublicChatType
  ///
  /// The chat is public, because it is a location-based supergroup.
  const PublicChatTypeIsLocationBased();
  
  /// Parse from a json
  factory PublicChatTypeIsLocationBased.fromJson(Map<String, dynamic> json) => const PublicChatTypeIsLocationBased();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  PublicChatTypeIsLocationBased copyWith() => const PublicChatTypeIsLocationBased();

  static const String constructor = 'publicChatTypeIsLocationBased';
  
  @override
  String getConstructor() => constructor;
}

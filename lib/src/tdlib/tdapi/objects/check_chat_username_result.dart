part of '../tdapi.dart';

/// **CheckChatUsernameResult** *(checkChatUsernameResult)* - parent
  ///
  /// Represents result of checking whether a username can be set for a chat.
class CheckChatUsernameResult extends TdObject {
  
  /// **CheckChatUsernameResult** *(checkChatUsernameResult)* - parent
  ///
  /// Represents result of checking whether a username can be set for a chat.
  const CheckChatUsernameResult();
  
  /// a CheckChatUsernameResult return type can be :
  /// * [CheckChatUsernameResultOk]
  /// * [CheckChatUsernameResultUsernameInvalid]
  /// * [CheckChatUsernameResultUsernameOccupied]
  /// * [CheckChatUsernameResultUsernamePurchasable]
  /// * [CheckChatUsernameResultPublicChatsTooMany]
  /// * [CheckChatUsernameResultPublicGroupsUnavailable]
  factory CheckChatUsernameResult.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case CheckChatUsernameResultOk.constructor:
        return CheckChatUsernameResultOk.fromJson(json);
      case CheckChatUsernameResultUsernameInvalid.constructor:
        return CheckChatUsernameResultUsernameInvalid.fromJson(json);
      case CheckChatUsernameResultUsernameOccupied.constructor:
        return CheckChatUsernameResultUsernameOccupied.fromJson(json);
      case CheckChatUsernameResultUsernamePurchasable.constructor:
        return CheckChatUsernameResultUsernamePurchasable.fromJson(json);
      case CheckChatUsernameResultPublicChatsTooMany.constructor:
        return CheckChatUsernameResultPublicChatsTooMany.fromJson(json);
      case CheckChatUsernameResultPublicGroupsUnavailable.constructor:
        return CheckChatUsernameResultPublicGroupsUnavailable.fromJson(json);
      default:
        return const CheckChatUsernameResult();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  CheckChatUsernameResult copyWith() => const CheckChatUsernameResult();

  static const String constructor = 'checkChatUsernameResult';
  
  @override
  String getConstructor() => constructor;
}


/// **CheckChatUsernameResultOk** *(checkChatUsernameResultOk)* - child of CheckChatUsernameResult
  ///
  /// The username can be set.
class CheckChatUsernameResultOk extends CheckChatUsernameResult {
  
  /// **CheckChatUsernameResultOk** *(checkChatUsernameResultOk)* - child of CheckChatUsernameResult
  ///
  /// The username can be set.
  const CheckChatUsernameResultOk({
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
  factory CheckChatUsernameResultOk.fromJson(Map<String, dynamic> json) => CheckChatUsernameResultOk(
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
  CheckChatUsernameResultOk copyWith({
    dynamic extra,
    int? clientId,
  }) => CheckChatUsernameResultOk(
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String constructor = 'checkChatUsernameResultOk';
  
  @override
  String getConstructor() => constructor;
}


/// **CheckChatUsernameResultUsernameInvalid** *(checkChatUsernameResultUsernameInvalid)* - child of CheckChatUsernameResult
  ///
  /// The username is invalid.
class CheckChatUsernameResultUsernameInvalid extends CheckChatUsernameResult {
  
  /// **CheckChatUsernameResultUsernameInvalid** *(checkChatUsernameResultUsernameInvalid)* - child of CheckChatUsernameResult
  ///
  /// The username is invalid.
  const CheckChatUsernameResultUsernameInvalid({
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
  factory CheckChatUsernameResultUsernameInvalid.fromJson(Map<String, dynamic> json) => CheckChatUsernameResultUsernameInvalid(
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
  CheckChatUsernameResultUsernameInvalid copyWith({
    dynamic extra,
    int? clientId,
  }) => CheckChatUsernameResultUsernameInvalid(
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String constructor = 'checkChatUsernameResultUsernameInvalid';
  
  @override
  String getConstructor() => constructor;
}


/// **CheckChatUsernameResultUsernameOccupied** *(checkChatUsernameResultUsernameOccupied)* - child of CheckChatUsernameResult
  ///
  /// The username is occupied.
class CheckChatUsernameResultUsernameOccupied extends CheckChatUsernameResult {
  
  /// **CheckChatUsernameResultUsernameOccupied** *(checkChatUsernameResultUsernameOccupied)* - child of CheckChatUsernameResult
  ///
  /// The username is occupied.
  const CheckChatUsernameResultUsernameOccupied({
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
  factory CheckChatUsernameResultUsernameOccupied.fromJson(Map<String, dynamic> json) => CheckChatUsernameResultUsernameOccupied(
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
  CheckChatUsernameResultUsernameOccupied copyWith({
    dynamic extra,
    int? clientId,
  }) => CheckChatUsernameResultUsernameOccupied(
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String constructor = 'checkChatUsernameResultUsernameOccupied';
  
  @override
  String getConstructor() => constructor;
}


/// **CheckChatUsernameResultUsernamePurchasable** *(checkChatUsernameResultUsernamePurchasable)* - child of CheckChatUsernameResult
  ///
  /// The username can be purchased at fragment.com.
class CheckChatUsernameResultUsernamePurchasable extends CheckChatUsernameResult {
  
  /// **CheckChatUsernameResultUsernamePurchasable** *(checkChatUsernameResultUsernamePurchasable)* - child of CheckChatUsernameResult
  ///
  /// The username can be purchased at fragment.com.
  const CheckChatUsernameResultUsernamePurchasable({
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
  factory CheckChatUsernameResultUsernamePurchasable.fromJson(Map<String, dynamic> json) => CheckChatUsernameResultUsernamePurchasable(
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
  CheckChatUsernameResultUsernamePurchasable copyWith({
    dynamic extra,
    int? clientId,
  }) => CheckChatUsernameResultUsernamePurchasable(
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String constructor = 'checkChatUsernameResultUsernamePurchasable';
  
  @override
  String getConstructor() => constructor;
}


/// **CheckChatUsernameResultPublicChatsTooMany** *(checkChatUsernameResultPublicChatsTooMany)* - child of CheckChatUsernameResult
  ///
  /// The user has too many chats with username, one of them must be made private first.
class CheckChatUsernameResultPublicChatsTooMany extends CheckChatUsernameResult {
  
  /// **CheckChatUsernameResultPublicChatsTooMany** *(checkChatUsernameResultPublicChatsTooMany)* - child of CheckChatUsernameResult
  ///
  /// The user has too many chats with username, one of them must be made private first.
  const CheckChatUsernameResultPublicChatsTooMany({
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
  factory CheckChatUsernameResultPublicChatsTooMany.fromJson(Map<String, dynamic> json) => CheckChatUsernameResultPublicChatsTooMany(
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
  CheckChatUsernameResultPublicChatsTooMany copyWith({
    dynamic extra,
    int? clientId,
  }) => CheckChatUsernameResultPublicChatsTooMany(
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String constructor = 'checkChatUsernameResultPublicChatsTooMany';
  
  @override
  String getConstructor() => constructor;
}


/// **CheckChatUsernameResultPublicGroupsUnavailable** *(checkChatUsernameResultPublicGroupsUnavailable)* - child of CheckChatUsernameResult
  ///
  /// The user can't be a member of a public supergroup.
class CheckChatUsernameResultPublicGroupsUnavailable extends CheckChatUsernameResult {
  
  /// **CheckChatUsernameResultPublicGroupsUnavailable** *(checkChatUsernameResultPublicGroupsUnavailable)* - child of CheckChatUsernameResult
  ///
  /// The user can't be a member of a public supergroup.
  const CheckChatUsernameResultPublicGroupsUnavailable({
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
  factory CheckChatUsernameResultPublicGroupsUnavailable.fromJson(Map<String, dynamic> json) => CheckChatUsernameResultPublicGroupsUnavailable(
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
  CheckChatUsernameResultPublicGroupsUnavailable copyWith({
    dynamic extra,
    int? clientId,
  }) => CheckChatUsernameResultPublicGroupsUnavailable(
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String constructor = 'checkChatUsernameResultPublicGroupsUnavailable';
  
  @override
  String getConstructor() => constructor;
}

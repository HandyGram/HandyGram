part of '../tdapi.dart';

/// **CheckChatUsernameResult** *(checkChatUsernameResult)* - parent
///
/// Represents result of checking whether a username can be set for a chat.
sealed class CheckChatUsernameResult extends TdObject {
  
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
      case CheckChatUsernameResultOk.objectType:
        return CheckChatUsernameResultOk.fromJson(json);
      case CheckChatUsernameResultUsernameInvalid.objectType:
        return CheckChatUsernameResultUsernameInvalid.fromJson(json);
      case CheckChatUsernameResultUsernameOccupied.objectType:
        return CheckChatUsernameResultUsernameOccupied.fromJson(json);
      case CheckChatUsernameResultUsernamePurchasable.objectType:
        return CheckChatUsernameResultUsernamePurchasable.fromJson(json);
      case CheckChatUsernameResultPublicChatsTooMany.objectType:
        return CheckChatUsernameResultPublicChatsTooMany.fromJson(json);
      case CheckChatUsernameResultPublicGroupsUnavailable.objectType:
        return CheckChatUsernameResultPublicGroupsUnavailable.fromJson(json);
      default:
        throw FormatException(
          "Unknown object ${json["@type"]} (expected child of CheckChatUsernameResult)",
          json,
        );
    }
  }
  
  @override
  Map<String, dynamic> toJson();

  
  CheckChatUsernameResult copyWith();

  static const String objectType = 'checkChatUsernameResult';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **CheckChatUsernameResultOk** *(checkChatUsernameResultOk)* - child of CheckChatUsernameResult
///
/// The username can be set.
final class CheckChatUsernameResultOk extends CheckChatUsernameResult {
  
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
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
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

  static const String objectType = 'checkChatUsernameResultOk';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **CheckChatUsernameResultUsernameInvalid** *(checkChatUsernameResultUsernameInvalid)* - child of CheckChatUsernameResult
///
/// The username is invalid.
final class CheckChatUsernameResultUsernameInvalid extends CheckChatUsernameResult {
  
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
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
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

  static const String objectType = 'checkChatUsernameResultUsernameInvalid';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **CheckChatUsernameResultUsernameOccupied** *(checkChatUsernameResultUsernameOccupied)* - child of CheckChatUsernameResult
///
/// The username is occupied.
final class CheckChatUsernameResultUsernameOccupied extends CheckChatUsernameResult {
  
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
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
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

  static const String objectType = 'checkChatUsernameResultUsernameOccupied';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **CheckChatUsernameResultUsernamePurchasable** *(checkChatUsernameResultUsernamePurchasable)* - child of CheckChatUsernameResult
///
/// The username can be purchased at fragment.com.
final class CheckChatUsernameResultUsernamePurchasable extends CheckChatUsernameResult {
  
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
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
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

  static const String objectType = 'checkChatUsernameResultUsernamePurchasable';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **CheckChatUsernameResultPublicChatsTooMany** *(checkChatUsernameResultPublicChatsTooMany)* - child of CheckChatUsernameResult
///
/// The user has too many chats with username, one of them must be made private first.
final class CheckChatUsernameResultPublicChatsTooMany extends CheckChatUsernameResult {
  
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
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
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

  static const String objectType = 'checkChatUsernameResultPublicChatsTooMany';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **CheckChatUsernameResultPublicGroupsUnavailable** *(checkChatUsernameResultPublicGroupsUnavailable)* - child of CheckChatUsernameResult
///
/// The user can't be a member of a public supergroup.
final class CheckChatUsernameResultPublicGroupsUnavailable extends CheckChatUsernameResult {
  
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
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
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

  static const String objectType = 'checkChatUsernameResultPublicGroupsUnavailable';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

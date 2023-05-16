part of '../tdapi.dart';

/// **CanTransferOwnershipResult** *(canTransferOwnershipResult)* - parent
///
/// Represents result of checking whether the current session can be used to transfer a chat ownership to another user.
sealed class CanTransferOwnershipResult extends TdObject {
  
  /// **CanTransferOwnershipResult** *(canTransferOwnershipResult)* - parent
  ///
  /// Represents result of checking whether the current session can be used to transfer a chat ownership to another user.
  const CanTransferOwnershipResult();
  
  /// a CanTransferOwnershipResult return type can be :
  /// * [CanTransferOwnershipResultOk]
  /// * [CanTransferOwnershipResultPasswordNeeded]
  /// * [CanTransferOwnershipResultPasswordTooFresh]
  /// * [CanTransferOwnershipResultSessionTooFresh]
  factory CanTransferOwnershipResult.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case CanTransferOwnershipResultOk.objectType:
        return CanTransferOwnershipResultOk.fromJson(json);
      case CanTransferOwnershipResultPasswordNeeded.objectType:
        return CanTransferOwnershipResultPasswordNeeded.fromJson(json);
      case CanTransferOwnershipResultPasswordTooFresh.objectType:
        return CanTransferOwnershipResultPasswordTooFresh.fromJson(json);
      case CanTransferOwnershipResultSessionTooFresh.objectType:
        return CanTransferOwnershipResultSessionTooFresh.fromJson(json);
      default:
        throw FormatException(
          "Unknown object ${json["@type"]} (expected child of CanTransferOwnershipResult)",
          json,
        );
    }
  }
  
  @override
  Map<String, dynamic> toJson();

  
  CanTransferOwnershipResult copyWith();

  static const String objectType = 'canTransferOwnershipResult';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **CanTransferOwnershipResultOk** *(canTransferOwnershipResultOk)* - child of CanTransferOwnershipResult
///
/// The session can be used.
final class CanTransferOwnershipResultOk extends CanTransferOwnershipResult {
  
  /// **CanTransferOwnershipResultOk** *(canTransferOwnershipResultOk)* - child of CanTransferOwnershipResult
  ///
  /// The session can be used.
  const CanTransferOwnershipResultOk({
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
  factory CanTransferOwnershipResultOk.fromJson(Map<String, dynamic> json) => CanTransferOwnershipResultOk(
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
  CanTransferOwnershipResultOk copyWith({
    dynamic extra,
    int? clientId,
  }) => CanTransferOwnershipResultOk(
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'canTransferOwnershipResultOk';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **CanTransferOwnershipResultPasswordNeeded** *(canTransferOwnershipResultPasswordNeeded)* - child of CanTransferOwnershipResult
///
/// The 2-step verification needs to be enabled first.
final class CanTransferOwnershipResultPasswordNeeded extends CanTransferOwnershipResult {
  
  /// **CanTransferOwnershipResultPasswordNeeded** *(canTransferOwnershipResultPasswordNeeded)* - child of CanTransferOwnershipResult
  ///
  /// The 2-step verification needs to be enabled first.
  const CanTransferOwnershipResultPasswordNeeded({
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
  factory CanTransferOwnershipResultPasswordNeeded.fromJson(Map<String, dynamic> json) => CanTransferOwnershipResultPasswordNeeded(
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
  CanTransferOwnershipResultPasswordNeeded copyWith({
    dynamic extra,
    int? clientId,
  }) => CanTransferOwnershipResultPasswordNeeded(
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'canTransferOwnershipResultPasswordNeeded';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **CanTransferOwnershipResultPasswordTooFresh** *(canTransferOwnershipResultPasswordTooFresh)* - child of CanTransferOwnershipResult
///
/// The 2-step verification was enabled recently, user needs to wait.
///
/// * [retryAfter]: Time left before the session can be used to transfer ownership of a chat, in seconds.
final class CanTransferOwnershipResultPasswordTooFresh extends CanTransferOwnershipResult {
  
  /// **CanTransferOwnershipResultPasswordTooFresh** *(canTransferOwnershipResultPasswordTooFresh)* - child of CanTransferOwnershipResult
  ///
  /// The 2-step verification was enabled recently, user needs to wait.
  ///
  /// * [retryAfter]: Time left before the session can be used to transfer ownership of a chat, in seconds.
  const CanTransferOwnershipResultPasswordTooFresh({
    required this.retryAfter,
    this.extra,
    this.clientId,
  });
  
  /// Time left before the session can be used to transfer ownership of a chat, in seconds
  final int retryAfter;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory CanTransferOwnershipResultPasswordTooFresh.fromJson(Map<String, dynamic> json) => CanTransferOwnershipResultPasswordTooFresh(
    retryAfter: json['retry_after'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "retry_after": retryAfter,
		};
	}

  
  @override
  CanTransferOwnershipResultPasswordTooFresh copyWith({
    int? retryAfter,
    dynamic extra,
    int? clientId,
  }) => CanTransferOwnershipResultPasswordTooFresh(
    retryAfter: retryAfter ?? this.retryAfter,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'canTransferOwnershipResultPasswordTooFresh';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **CanTransferOwnershipResultSessionTooFresh** *(canTransferOwnershipResultSessionTooFresh)* - child of CanTransferOwnershipResult
///
/// The session was created recently, user needs to wait.
///
/// * [retryAfter]: Time left before the session can be used to transfer ownership of a chat, in seconds.
final class CanTransferOwnershipResultSessionTooFresh extends CanTransferOwnershipResult {
  
  /// **CanTransferOwnershipResultSessionTooFresh** *(canTransferOwnershipResultSessionTooFresh)* - child of CanTransferOwnershipResult
  ///
  /// The session was created recently, user needs to wait.
  ///
  /// * [retryAfter]: Time left before the session can be used to transfer ownership of a chat, in seconds.
  const CanTransferOwnershipResultSessionTooFresh({
    required this.retryAfter,
    this.extra,
    this.clientId,
  });
  
  /// Time left before the session can be used to transfer ownership of a chat, in seconds
  final int retryAfter;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory CanTransferOwnershipResultSessionTooFresh.fromJson(Map<String, dynamic> json) => CanTransferOwnershipResultSessionTooFresh(
    retryAfter: json['retry_after'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "retry_after": retryAfter,
		};
	}

  
  @override
  CanTransferOwnershipResultSessionTooFresh copyWith({
    int? retryAfter,
    dynamic extra,
    int? clientId,
  }) => CanTransferOwnershipResultSessionTooFresh(
    retryAfter: retryAfter ?? this.retryAfter,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'canTransferOwnershipResultSessionTooFresh';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

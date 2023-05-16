part of '../tdapi.dart';

/// **ResetPasswordResult** *(resetPasswordResult)* - parent
///
/// Represents result of 2-step verification password reset.
sealed class ResetPasswordResult extends TdObject {
  
  /// **ResetPasswordResult** *(resetPasswordResult)* - parent
  ///
  /// Represents result of 2-step verification password reset.
  const ResetPasswordResult();
  
  /// a ResetPasswordResult return type can be :
  /// * [ResetPasswordResultOk]
  /// * [ResetPasswordResultPending]
  /// * [ResetPasswordResultDeclined]
  factory ResetPasswordResult.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case ResetPasswordResultOk.objectType:
        return ResetPasswordResultOk.fromJson(json);
      case ResetPasswordResultPending.objectType:
        return ResetPasswordResultPending.fromJson(json);
      case ResetPasswordResultDeclined.objectType:
        return ResetPasswordResultDeclined.fromJson(json);
      default:
        throw FormatException(
          "Unknown object ${json["@type"]} (expected child of ResetPasswordResult)",
          json,
        );
    }
  }
  
  @override
  Map<String, dynamic> toJson();

  
  ResetPasswordResult copyWith();

  static const String objectType = 'resetPasswordResult';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **ResetPasswordResultOk** *(resetPasswordResultOk)* - child of ResetPasswordResult
///
/// The password was reset.
final class ResetPasswordResultOk extends ResetPasswordResult {
  
  /// **ResetPasswordResultOk** *(resetPasswordResultOk)* - child of ResetPasswordResult
  ///
  /// The password was reset.
  const ResetPasswordResultOk({
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
  factory ResetPasswordResultOk.fromJson(Map<String, dynamic> json) => ResetPasswordResultOk(
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
  ResetPasswordResultOk copyWith({
    dynamic extra,
    int? clientId,
  }) => ResetPasswordResultOk(
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'resetPasswordResultOk';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **ResetPasswordResultPending** *(resetPasswordResultPending)* - child of ResetPasswordResult
///
/// The password reset request is pending.
///
/// * [pendingResetDate]: Point in time (Unix timestamp) after which the password can be reset immediately using resetPassword.
final class ResetPasswordResultPending extends ResetPasswordResult {
  
  /// **ResetPasswordResultPending** *(resetPasswordResultPending)* - child of ResetPasswordResult
  ///
  /// The password reset request is pending.
  ///
  /// * [pendingResetDate]: Point in time (Unix timestamp) after which the password can be reset immediately using resetPassword.
  const ResetPasswordResultPending({
    required this.pendingResetDate,
    this.extra,
    this.clientId,
  });
  
  /// Point in time (Unix timestamp) after which the password can be reset immediately using resetPassword
  final int pendingResetDate;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory ResetPasswordResultPending.fromJson(Map<String, dynamic> json) => ResetPasswordResultPending(
    pendingResetDate: json['pending_reset_date'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "pending_reset_date": pendingResetDate,
		};
	}

  
  @override
  ResetPasswordResultPending copyWith({
    int? pendingResetDate,
    dynamic extra,
    int? clientId,
  }) => ResetPasswordResultPending(
    pendingResetDate: pendingResetDate ?? this.pendingResetDate,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'resetPasswordResultPending';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **ResetPasswordResultDeclined** *(resetPasswordResultDeclined)* - child of ResetPasswordResult
///
/// The password reset request was declined.
///
/// * [retryDate]: Point in time (Unix timestamp) when the password reset can be retried.
final class ResetPasswordResultDeclined extends ResetPasswordResult {
  
  /// **ResetPasswordResultDeclined** *(resetPasswordResultDeclined)* - child of ResetPasswordResult
  ///
  /// The password reset request was declined.
  ///
  /// * [retryDate]: Point in time (Unix timestamp) when the password reset can be retried.
  const ResetPasswordResultDeclined({
    required this.retryDate,
    this.extra,
    this.clientId,
  });
  
  /// Point in time (Unix timestamp) when the password reset can be retried
  final int retryDate;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory ResetPasswordResultDeclined.fromJson(Map<String, dynamic> json) => ResetPasswordResultDeclined(
    retryDate: json['retry_date'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "retry_date": retryDate,
		};
	}

  
  @override
  ResetPasswordResultDeclined copyWith({
    int? retryDate,
    dynamic extra,
    int? clientId,
  }) => ResetPasswordResultDeclined(
    retryDate: retryDate ?? this.retryDate,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'resetPasswordResultDeclined';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

part of '../tdapi.dart';

/// **TemporaryPasswordState** *(temporaryPasswordState)* - basic class
///
/// Returns information about the availability of a temporary password, which can be used for payments.
///
/// * [hasPassword]: True, if a temporary password is available.
/// * [validFor]: Time left before the temporary password expires, in seconds.
final class TemporaryPasswordState extends TdObject {
  
  /// **TemporaryPasswordState** *(temporaryPasswordState)* - basic class
  ///
  /// Returns information about the availability of a temporary password, which can be used for payments.
  ///
  /// * [hasPassword]: True, if a temporary password is available.
  /// * [validFor]: Time left before the temporary password expires, in seconds.
  const TemporaryPasswordState({
    required this.hasPassword,
    required this.validFor,
    this.extra,
    this.clientId,
  });
  
  /// True, if a temporary password is available 
  final bool hasPassword;

  /// Time left before the temporary password expires, in seconds
  final int validFor;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory TemporaryPasswordState.fromJson(Map<String, dynamic> json) => TemporaryPasswordState(
    hasPassword: json['has_password'],
    validFor: json['valid_for'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "has_password": hasPassword,
      "valid_for": validFor,
		};
	}

  
  TemporaryPasswordState copyWith({
    bool? hasPassword,
    int? validFor,
    dynamic extra,
    int? clientId,
  }) => TemporaryPasswordState(
    hasPassword: hasPassword ?? this.hasPassword,
    validFor: validFor ?? this.validFor,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'temporaryPasswordState';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

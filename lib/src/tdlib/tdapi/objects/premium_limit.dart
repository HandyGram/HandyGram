part of '../tdapi.dart';

/// **PremiumLimit** *(premiumLimit)* - basic class
///
/// Contains information about a limit, increased for Premium users.
///
/// * [type]: The type of the limit.
/// * [defaultValue]: Default value of the limit.
/// * [premiumValue]: Value of the limit for Premium users.
final class PremiumLimit extends TdObject {
  
  /// **PremiumLimit** *(premiumLimit)* - basic class
  ///
  /// Contains information about a limit, increased for Premium users.
  ///
  /// * [type]: The type of the limit.
  /// * [defaultValue]: Default value of the limit.
  /// * [premiumValue]: Value of the limit for Premium users.
  const PremiumLimit({
    required this.type,
    required this.defaultValue,
    required this.premiumValue,
    this.extra,
    this.clientId,
  });
  
  /// The type of the limit 
  final PremiumLimitType type;

  /// Default value of the limit 
  final int defaultValue;

  /// Value of the limit for Premium users
  final int premiumValue;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory PremiumLimit.fromJson(Map<String, dynamic> json) => PremiumLimit(
    type: PremiumLimitType.fromJson(json['type']),
    defaultValue: json['default_value'],
    premiumValue: json['premium_value'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "type": type.toJson(),
      "default_value": defaultValue,
      "premium_value": premiumValue,
		};
	}

  
  PremiumLimit copyWith({
    PremiumLimitType? type,
    int? defaultValue,
    int? premiumValue,
    dynamic extra,
    int? clientId,
  }) => PremiumLimit(
    type: type ?? this.type,
    defaultValue: defaultValue ?? this.defaultValue,
    premiumValue: premiumValue ?? this.premiumValue,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'premiumLimit';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

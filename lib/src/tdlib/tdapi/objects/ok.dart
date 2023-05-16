part of '../tdapi.dart';

/// **Ok** *(ok)* - basic class
///
/// An object of this type is returned on a successful function call for certain functions.
final class Ok extends TdObject {
  
  /// **Ok** *(ok)* - basic class
  ///
  /// An object of this type is returned on a successful function call for certain functions.
  const Ok({
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
  factory Ok.fromJson(Map<String, dynamic> json) => Ok(
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  Ok copyWith({
    dynamic extra,
    int? clientId,
  }) => Ok(
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'ok';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

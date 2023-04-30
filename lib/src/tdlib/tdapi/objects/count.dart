part of '../tdapi.dart';

/// **Count** *(count)* - basic class
  ///
  /// Contains a counter.
  ///
  /// * [count]: Count.
class Count extends TdObject {
  
  /// **Count** *(count)* - basic class
  ///
  /// Contains a counter.
  ///
  /// * [count]: Count.
  const Count({
    required this.count,
    this.extra,
    this.clientId,
  });
  
  /// Count
  final int count;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory Count.fromJson(Map<String, dynamic> json) => Count(
    count: json['count'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "count": count,
    };
  }
  
  Count copyWith({
    int? count,
    dynamic extra,
    int? clientId,
  }) => Count(
    count: count ?? this.count,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String constructor = 'count';
  
  @override
  String getConstructor() => constructor;
}

part of '../tdapi.dart';

/// **DatabaseStatistics** *(databaseStatistics)* - basic class
///
/// Contains database statistics.
///
/// * [statistics]: Database statistics in an unspecified human-readable format.
final class DatabaseStatistics extends TdObject {
  
  /// **DatabaseStatistics** *(databaseStatistics)* - basic class
  ///
  /// Contains database statistics.
  ///
  /// * [statistics]: Database statistics in an unspecified human-readable format.
  const DatabaseStatistics({
    required this.statistics,
    this.extra,
    this.clientId,
  });
  
  /// Database statistics in an unspecified human-readable format
  final String statistics;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory DatabaseStatistics.fromJson(Map<String, dynamic> json) => DatabaseStatistics(
    statistics: json['statistics'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "statistics": statistics,
		};
	}

  
  DatabaseStatistics copyWith({
    String? statistics,
    dynamic extra,
    int? clientId,
  }) => DatabaseStatistics(
    statistics: statistics ?? this.statistics,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'databaseStatistics';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

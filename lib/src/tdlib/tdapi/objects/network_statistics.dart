part of '../tdapi.dart';

/// **NetworkStatistics** *(networkStatistics)* - basic class
///
/// A full list of available network statistic entries.
///
/// * [sinceDate]: Point in time (Unix timestamp) from which the statistics are collected.
/// * [entries]: Network statistics entries.
final class NetworkStatistics extends TdObject {
  
  /// **NetworkStatistics** *(networkStatistics)* - basic class
  ///
  /// A full list of available network statistic entries.
  ///
  /// * [sinceDate]: Point in time (Unix timestamp) from which the statistics are collected.
  /// * [entries]: Network statistics entries.
  const NetworkStatistics({
    required this.sinceDate,
    required this.entries,
    this.extra,
    this.clientId,
  });
  
  /// Point in time (Unix timestamp) from which the statistics are collected 
  final int sinceDate;

  /// Network statistics entries
  final List<NetworkStatisticsEntry> entries;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory NetworkStatistics.fromJson(Map<String, dynamic> json) => NetworkStatistics(
    sinceDate: json['since_date'],
    entries: List<NetworkStatisticsEntry>.from((json['entries'] ?? []).map((item) => NetworkStatisticsEntry.fromJson(item)).toList()),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "since_date": sinceDate,
      "entries": entries.map((i) => i.toJson()).toList(),
		};
	}

  
  NetworkStatistics copyWith({
    int? sinceDate,
    List<NetworkStatisticsEntry>? entries,
    dynamic extra,
    int? clientId,
  }) => NetworkStatistics(
    sinceDate: sinceDate ?? this.sinceDate,
    entries: entries ?? this.entries,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'networkStatistics';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

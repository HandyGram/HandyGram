part of '../tdapi.dart';

/// **DateRange** *(dateRange)* - basic class
///
/// Represents a date range.
///
/// * [startDate]: Point in time (Unix timestamp) at which the date range begins.
/// * [endDate]: Point in time (Unix timestamp) at which the date range ends.
final class DateRange extends TdObject {
  
  /// **DateRange** *(dateRange)* - basic class
  ///
  /// Represents a date range.
  ///
  /// * [startDate]: Point in time (Unix timestamp) at which the date range begins.
  /// * [endDate]: Point in time (Unix timestamp) at which the date range ends.
  const DateRange({
    required this.startDate,
    required this.endDate,
  });
  
  /// Point in time (Unix timestamp) at which the date range begins 
  final int startDate;

  /// Point in time (Unix timestamp) at which the date range ends
  final int endDate;
  
  /// Parse from a json
  factory DateRange.fromJson(Map<String, dynamic> json) => DateRange(
    startDate: json['start_date'],
    endDate: json['end_date'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "start_date": startDate,
      "end_date": endDate,
		};
	}

  
  DateRange copyWith({
    int? startDate,
    int? endDate,
  }) => DateRange(
    startDate: startDate ?? this.startDate,
    endDate: endDate ?? this.endDate,
  );

  static const String objectType = 'dateRange';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

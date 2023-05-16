part of '../tdapi.dart';

/// **Date** *(date)* - basic class
///
/// Represents a date according to the Gregorian calendar.
///
/// * [day]: Day of the month; 1-31.
/// * [month]: Month; 1-12.
/// * [year]: Year; 1-9999.
final class Date extends TdObject {
  
  /// **Date** *(date)* - basic class
  ///
  /// Represents a date according to the Gregorian calendar.
  ///
  /// * [day]: Day of the month; 1-31.
  /// * [month]: Month; 1-12.
  /// * [year]: Year; 1-9999.
  const Date({
    required this.day,
    required this.month,
    required this.year,
  });
  
  /// Day of the month; 1-31 
  final int day;

  /// Month; 1-12 
  final int month;

  /// Year; 1-9999
  final int year;
  
  /// Parse from a json
  factory Date.fromJson(Map<String, dynamic> json) => Date(
    day: json['day'],
    month: json['month'],
    year: json['year'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "day": day,
      "month": month,
      "year": year,
		};
	}

  
  Date copyWith({
    int? day,
    int? month,
    int? year,
  }) => Date(
    day: day ?? this.day,
    month: month ?? this.month,
    year: year ?? this.year,
  );

  static const String objectType = 'date';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

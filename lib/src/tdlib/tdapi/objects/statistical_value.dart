part of '../tdapi.dart';

/// **StatisticalValue** *(statisticalValue)* - basic class
///
/// A value with information about its recent changes.
///
/// * [value]: The current value.
/// * [previousValue]: The value for the previous day.
/// * [growthRatePercentage]: The growth rate of the value, as a percentage.
final class StatisticalValue extends TdObject {
  
  /// **StatisticalValue** *(statisticalValue)* - basic class
  ///
  /// A value with information about its recent changes.
  ///
  /// * [value]: The current value.
  /// * [previousValue]: The value for the previous day.
  /// * [growthRatePercentage]: The growth rate of the value, as a percentage.
  const StatisticalValue({
    required this.value,
    required this.previousValue,
    required this.growthRatePercentage,
  });
  
  /// The current value 
  final double value;

  /// The value for the previous day 
  final double previousValue;

  /// The growth rate of the value, as a percentage
  final double growthRatePercentage;
  
  /// Parse from a json
  factory StatisticalValue.fromJson(Map<String, dynamic> json) => StatisticalValue(
    value: json['value'],
    previousValue: json['previous_value'],
    growthRatePercentage: json['growth_rate_percentage'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "value": value,
      "previous_value": previousValue,
      "growth_rate_percentage": growthRatePercentage,
		};
	}

  
  StatisticalValue copyWith({
    double? value,
    double? previousValue,
    double? growthRatePercentage,
  }) => StatisticalValue(
    value: value ?? this.value,
    previousValue: previousValue ?? this.previousValue,
    growthRatePercentage: growthRatePercentage ?? this.growthRatePercentage,
  );

  static const String objectType = 'statisticalValue';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

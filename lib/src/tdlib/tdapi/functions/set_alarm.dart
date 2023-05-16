part of '../tdapi.dart';

/// **SetAlarm** *(setAlarm)* - TDLib function
///
/// Succeeds after a specified amount of time has passed. Can be called before initialization.
///
/// * [seconds]: Number of seconds before the function returns.
///
/// [Ok] is returned on completion.
final class SetAlarm extends TdFunction {
  
  /// **SetAlarm** *(setAlarm)* - TDLib function
  ///
  /// Succeeds after a specified amount of time has passed. Can be called before initialization.
  ///
  /// * [seconds]: Number of seconds before the function returns.
  ///
  /// [Ok] is returned on completion.
  const SetAlarm({
    required this.seconds,
  });
  
  /// Number of seconds before the function returns
  final double seconds;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "seconds": seconds,
      "@extra": extra,
		};
	}

  
  SetAlarm copyWith({
    double? seconds,
  }) => SetAlarm(
    seconds: seconds ?? this.seconds,
  );

  static const String objectType = 'setAlarm';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

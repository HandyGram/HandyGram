part of '../tdapi.dart';

/// **SetInactiveSessionTtl** *(setInactiveSessionTtl)* - TDLib function
///
/// Changes the period of inactivity after which sessions will automatically be terminated.
///
/// * [inactiveSessionTtlDays]: New number of days of inactivity before sessions will be automatically terminated; 1-366 days.
///
/// [Ok] is returned on completion.
final class SetInactiveSessionTtl extends TdFunction {
  
  /// **SetInactiveSessionTtl** *(setInactiveSessionTtl)* - TDLib function
  ///
  /// Changes the period of inactivity after which sessions will automatically be terminated.
  ///
  /// * [inactiveSessionTtlDays]: New number of days of inactivity before sessions will be automatically terminated; 1-366 days.
  ///
  /// [Ok] is returned on completion.
  const SetInactiveSessionTtl({
    required this.inactiveSessionTtlDays,
  });
  
  /// New number of days of inactivity before sessions will be automatically terminated; 1-366 days
  final int inactiveSessionTtlDays;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "inactive_session_ttl_days": inactiveSessionTtlDays,
      "@extra": extra,
		};
	}

  
  SetInactiveSessionTtl copyWith({
    int? inactiveSessionTtlDays,
  }) => SetInactiveSessionTtl(
    inactiveSessionTtlDays: inactiveSessionTtlDays ?? this.inactiveSessionTtlDays,
  );

  static const String objectType = 'setInactiveSessionTtl';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

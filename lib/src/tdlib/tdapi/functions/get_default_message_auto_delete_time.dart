part of '../tdapi.dart';

/// **GetDefaultMessageAutoDeleteTime** *(getDefaultMessageAutoDeleteTime)* - TDLib function
///
/// Returns default message auto-delete time setting for new chats.
///
/// [MessageAutoDeleteTime] is returned on completion.
final class GetDefaultMessageAutoDeleteTime extends TdFunction {
  
  /// **GetDefaultMessageAutoDeleteTime** *(getDefaultMessageAutoDeleteTime)* - TDLib function
  ///
  /// Returns default message auto-delete time setting for new chats.
  ///
  /// [MessageAutoDeleteTime] is returned on completion.
  const GetDefaultMessageAutoDeleteTime();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "@extra": extra,
		};
	}

  
  GetDefaultMessageAutoDeleteTime copyWith() => const GetDefaultMessageAutoDeleteTime();

  static const String objectType = 'getDefaultMessageAutoDeleteTime';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

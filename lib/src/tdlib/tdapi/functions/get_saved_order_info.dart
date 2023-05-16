part of '../tdapi.dart';

/// **GetSavedOrderInfo** *(getSavedOrderInfo)* - TDLib function
///
/// Returns saved order information. Returns a 404 error if there is no saved order information.
///
/// [OrderInfo] is returned on completion.
final class GetSavedOrderInfo extends TdFunction {
  
  /// **GetSavedOrderInfo** *(getSavedOrderInfo)* - TDLib function
  ///
  /// Returns saved order information. Returns a 404 error if there is no saved order information.
  ///
  /// [OrderInfo] is returned on completion.
  const GetSavedOrderInfo();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "@extra": extra,
		};
	}

  
  GetSavedOrderInfo copyWith() => const GetSavedOrderInfo();

  static const String objectType = 'getSavedOrderInfo';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

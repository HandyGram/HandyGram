part of '../tdapi.dart';

/// **DeleteSavedOrderInfo** *(deleteSavedOrderInfo)* - TDLib function
///
/// Deletes saved order information.
///
/// [Ok] is returned on completion.
final class DeleteSavedOrderInfo extends TdFunction {
  
  /// **DeleteSavedOrderInfo** *(deleteSavedOrderInfo)* - TDLib function
  ///
  /// Deletes saved order information.
  ///
  /// [Ok] is returned on completion.
  const DeleteSavedOrderInfo();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "@extra": extra,
		};
	}

  
  DeleteSavedOrderInfo copyWith() => const DeleteSavedOrderInfo();

  static const String objectType = 'deleteSavedOrderInfo';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

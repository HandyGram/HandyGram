part of '../tdapi.dart';

/// **DeleteSavedOrderInfo** *(deleteSavedOrderInfo)* - TDLib function
  ///
  /// Deletes saved order information.
  ///
  /// [Ok] is returned on completion.
class DeleteSavedOrderInfo extends TdFunction {
  
  /// **DeleteSavedOrderInfo** *(deleteSavedOrderInfo)* - TDLib function
  ///
  /// Deletes saved order information.
  ///
  /// [Ok] is returned on completion.
  const DeleteSavedOrderInfo();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "@extra": extra,
    };
  }
  
  DeleteSavedOrderInfo copyWith() => const DeleteSavedOrderInfo();

  static const String constructor = 'deleteSavedOrderInfo';
  
  @override
  String getConstructor() => constructor;
}

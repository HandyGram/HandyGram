part of '../tdapi.dart';

/// **GetSavedOrderInfo** *(getSavedOrderInfo)* - TDLib function
  ///
  /// Returns saved order information. Returns a 404 error if there is no saved order information.
  ///
  /// [OrderInfo] is returned on completion.
class GetSavedOrderInfo extends TdFunction {
  
  /// **GetSavedOrderInfo** *(getSavedOrderInfo)* - TDLib function
  ///
  /// Returns saved order information. Returns a 404 error if there is no saved order information.
  ///
  /// [OrderInfo] is returned on completion.
  const GetSavedOrderInfo();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "@extra": extra,
    };
  }
  
  GetSavedOrderInfo copyWith() => const GetSavedOrderInfo();

  static const String constructor = 'getSavedOrderInfo';
  
  @override
  String getConstructor() => constructor;
}

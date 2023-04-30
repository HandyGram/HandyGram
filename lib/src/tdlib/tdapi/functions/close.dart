part of '../tdapi.dart';

/// **Close** *(close)* - TDLib function
  ///
  /// Closes the TDLib instance. All databases will be flushed to disk and properly closed. After the close completes, updateAuthorizationState with authorizationStateClosed will be sent. Can be called before initialization.
  ///
  /// [Ok] is returned on completion.
class Close extends TdFunction {
  
  /// **Close** *(close)* - TDLib function
  ///
  /// Closes the TDLib instance. All databases will be flushed to disk and properly closed. After the close completes, updateAuthorizationState with authorizationStateClosed will be sent. Can be called before initialization.
  ///
  /// [Ok] is returned on completion.
  const Close();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "@extra": extra,
    };
  }
  
  Close copyWith() => const Close();

  static const String constructor = 'close';
  
  @override
  String getConstructor() => constructor;
}

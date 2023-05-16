part of '../tdapi.dart';

/// **Close** *(close)* - TDLib function
///
/// Closes the TDLib instance. All databases will be flushed to disk and properly closed. After the close completes, updateAuthorizationState with authorizationStateClosed will be sent. Can be called before initialization.
///
/// [Ok] is returned on completion.
final class Close extends TdFunction {
  
  /// **Close** *(close)* - TDLib function
  ///
  /// Closes the TDLib instance. All databases will be flushed to disk and properly closed. After the close completes, updateAuthorizationState with authorizationStateClosed will be sent. Can be called before initialization.
  ///
  /// [Ok] is returned on completion.
  const Close();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "@extra": extra,
		};
	}

  
  Close copyWith() => const Close();

  static const String objectType = 'close';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

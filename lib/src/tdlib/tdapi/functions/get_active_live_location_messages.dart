part of '../tdapi.dart';

/// **GetActiveLiveLocationMessages** *(getActiveLiveLocationMessages)* - TDLib function
///
/// Returns all active live locations that need to be updated by the application. The list is persistent across application restarts only if the message database is used.
///
/// [Messages] is returned on completion.
final class GetActiveLiveLocationMessages extends TdFunction {
  
  /// **GetActiveLiveLocationMessages** *(getActiveLiveLocationMessages)* - TDLib function
  ///
  /// Returns all active live locations that need to be updated by the application. The list is persistent across application restarts only if the message database is used.
  ///
  /// [Messages] is returned on completion.
  const GetActiveLiveLocationMessages();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "@extra": extra,
		};
	}

  
  GetActiveLiveLocationMessages copyWith() => const GetActiveLiveLocationMessages();

  static const String objectType = 'getActiveLiveLocationMessages';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

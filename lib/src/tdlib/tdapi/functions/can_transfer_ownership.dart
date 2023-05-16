part of '../tdapi.dart';

/// **CanTransferOwnership** *(canTransferOwnership)* - TDLib function
///
/// Checks whether the current session can be used to transfer a chat ownership to another user.
///
/// [CanTransferOwnershipResult] is returned on completion.
final class CanTransferOwnership extends TdFunction {
  
  /// **CanTransferOwnership** *(canTransferOwnership)* - TDLib function
  ///
  /// Checks whether the current session can be used to transfer a chat ownership to another user.
  ///
  /// [CanTransferOwnershipResult] is returned on completion.
  const CanTransferOwnership();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "@extra": extra,
		};
	}

  
  CanTransferOwnership copyWith() => const CanTransferOwnership();

  static const String objectType = 'canTransferOwnership';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

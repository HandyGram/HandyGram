part of '../tdapi.dart';

/// **GetImportedContactCount** *(getImportedContactCount)* - TDLib function
///
/// Returns the total number of imported contacts.
///
/// [Count] is returned on completion.
final class GetImportedContactCount extends TdFunction {
  
  /// **GetImportedContactCount** *(getImportedContactCount)* - TDLib function
  ///
  /// Returns the total number of imported contacts.
  ///
  /// [Count] is returned on completion.
  const GetImportedContactCount();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "@extra": extra,
		};
	}

  
  GetImportedContactCount copyWith() => const GetImportedContactCount();

  static const String objectType = 'getImportedContactCount';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

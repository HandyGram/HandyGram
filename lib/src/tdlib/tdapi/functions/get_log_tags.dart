part of '../tdapi.dart';

/// **GetLogTags** *(getLogTags)* - TDLib function
///
/// Returns list of available TDLib internal log tags, for example,.
///
/// [LogTags] is returned on completion.
final class GetLogTags extends TdFunction {
  
  /// **GetLogTags** *(getLogTags)* - TDLib function
  ///
  /// Returns list of available TDLib internal log tags, for example,.
  ///
  /// [LogTags] is returned on completion.
  const GetLogTags();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "@extra": extra,
		};
	}

  
  GetLogTags copyWith() => const GetLogTags();

  static const String objectType = 'getLogTags';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

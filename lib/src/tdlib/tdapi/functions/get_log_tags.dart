part of '../tdapi.dart';

/// **GetLogTags** *(getLogTags)* - TDLib function
  ///
  /// Returns list of available TDLib internal log tags, for example,.
  ///
  /// [LogTags] is returned on completion.
class GetLogTags extends TdFunction {
  
  /// **GetLogTags** *(getLogTags)* - TDLib function
  ///
  /// Returns list of available TDLib internal log tags, for example,.
  ///
  /// [LogTags] is returned on completion.
  const GetLogTags();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "@extra": extra,
    };
  }
  
  GetLogTags copyWith() => const GetLogTags();

  static const String constructor = 'getLogTags';
  
  @override
  String getConstructor() => constructor;
}

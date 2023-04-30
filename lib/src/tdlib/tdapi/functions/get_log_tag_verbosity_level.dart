part of '../tdapi.dart';

/// **GetLogTagVerbosityLevel** *(getLogTagVerbosityLevel)* - TDLib function
  ///
  /// Returns current verbosity level for a specified TDLib internal log tag. Can be called synchronously.
  ///
  /// * [tag]: Logging tag to change verbosity level.
  ///
  /// [LogVerbosityLevel] is returned on completion.
class GetLogTagVerbosityLevel extends TdFunction {
  
  /// **GetLogTagVerbosityLevel** *(getLogTagVerbosityLevel)* - TDLib function
  ///
  /// Returns current verbosity level for a specified TDLib internal log tag. Can be called synchronously.
  ///
  /// * [tag]: Logging tag to change verbosity level.
  ///
  /// [LogVerbosityLevel] is returned on completion.
  const GetLogTagVerbosityLevel({
    required this.tag,
  });
  
  /// Logging tag to change verbosity level
  final String tag;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "tag": tag,
      "@extra": extra,
    };
  }
  
  GetLogTagVerbosityLevel copyWith({
    String? tag,
  }) => GetLogTagVerbosityLevel(
    tag: tag ?? this.tag,
  );

  static const String constructor = 'getLogTagVerbosityLevel';
  
  @override
  String getConstructor() => constructor;
}

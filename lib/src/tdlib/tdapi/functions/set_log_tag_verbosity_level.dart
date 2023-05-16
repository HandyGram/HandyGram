part of '../tdapi.dart';

/// **SetLogTagVerbosityLevel** *(setLogTagVerbosityLevel)* - TDLib function
///
/// Sets the verbosity level for a specified TDLib internal log tag. Can be called synchronously.
///
/// * [tag]: Logging tag to change verbosity level.
/// * [newVerbosityLevel]: New verbosity level; 1-1024.
///
/// [Ok] is returned on completion.
final class SetLogTagVerbosityLevel extends TdFunction {
  
  /// **SetLogTagVerbosityLevel** *(setLogTagVerbosityLevel)* - TDLib function
  ///
  /// Sets the verbosity level for a specified TDLib internal log tag. Can be called synchronously.
  ///
  /// * [tag]: Logging tag to change verbosity level.
  /// * [newVerbosityLevel]: New verbosity level; 1-1024.
  ///
  /// [Ok] is returned on completion.
  const SetLogTagVerbosityLevel({
    required this.tag,
    required this.newVerbosityLevel,
  });
  
  /// Logging tag to change verbosity level
  final String tag;

  /// New verbosity level; 1-1024
  final int newVerbosityLevel;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "tag": tag,
      "new_verbosity_level": newVerbosityLevel,
      "@extra": extra,
		};
	}

  
  SetLogTagVerbosityLevel copyWith({
    String? tag,
    int? newVerbosityLevel,
  }) => SetLogTagVerbosityLevel(
    tag: tag ?? this.tag,
    newVerbosityLevel: newVerbosityLevel ?? this.newVerbosityLevel,
  );

  static const String objectType = 'setLogTagVerbosityLevel';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

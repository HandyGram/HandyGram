part of '../tdapi.dart';

/// **SetFileGenerationProgress** *(setFileGenerationProgress)* - TDLib function
///
/// Informs TDLib on a file generation progress.
///
/// * [generationId]: The identifier of the generation process.
/// * [expectedSize]: Expected size of the generated file, in bytes; 0 if unknown.
/// * [localPrefixSize]: The number of bytes already generated.
///
/// [Ok] is returned on completion.
final class SetFileGenerationProgress extends TdFunction {
  
  /// **SetFileGenerationProgress** *(setFileGenerationProgress)* - TDLib function
  ///
  /// Informs TDLib on a file generation progress.
  ///
  /// * [generationId]: The identifier of the generation process.
  /// * [expectedSize]: Expected size of the generated file, in bytes; 0 if unknown.
  /// * [localPrefixSize]: The number of bytes already generated.
  ///
  /// [Ok] is returned on completion.
  const SetFileGenerationProgress({
    required this.generationId,
    required this.expectedSize,
    required this.localPrefixSize,
  });
  
  /// The identifier of the generation process
  final int generationId;

  /// Expected size of the generated file, in bytes; 0 if unknown
  final int expectedSize;

  /// The number of bytes already generated
  final int localPrefixSize;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "generation_id": generationId,
      "expected_size": expectedSize,
      "local_prefix_size": localPrefixSize,
      "@extra": extra,
		};
	}

  
  SetFileGenerationProgress copyWith({
    int? generationId,
    int? expectedSize,
    int? localPrefixSize,
  }) => SetFileGenerationProgress(
    generationId: generationId ?? this.generationId,
    expectedSize: expectedSize ?? this.expectedSize,
    localPrefixSize: localPrefixSize ?? this.localPrefixSize,
  );

  static const String objectType = 'setFileGenerationProgress';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

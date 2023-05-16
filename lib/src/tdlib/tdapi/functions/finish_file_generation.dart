part of '../tdapi.dart';

/// **FinishFileGeneration** *(finishFileGeneration)* - TDLib function
///
/// Finishes the file generation.
///
/// * [generationId]: The identifier of the generation process.
/// * [error]: If passed, the file generation has failed and must be terminated; pass null if the file generation succeeded *(optional)*.
///
/// [Ok] is returned on completion.
final class FinishFileGeneration extends TdFunction {
  
  /// **FinishFileGeneration** *(finishFileGeneration)* - TDLib function
  ///
  /// Finishes the file generation.
  ///
  /// * [generationId]: The identifier of the generation process.
  /// * [error]: If passed, the file generation has failed and must be terminated; pass null if the file generation succeeded *(optional)*.
  ///
  /// [Ok] is returned on completion.
  const FinishFileGeneration({
    required this.generationId,
    this.error,
  });
  
  /// The identifier of the generation process
  final int generationId;

  /// If passed, the file generation has failed and must be terminated; pass null if the file generation succeeded
  final TdError? error;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "generation_id": generationId,
      "error": error?.toJson(),
      "@extra": extra,
		};
	}

  
  FinishFileGeneration copyWith({
    int? generationId,
    TdError? error,
  }) => FinishFileGeneration(
    generationId: generationId ?? this.generationId,
    error: error ?? this.error,
  );

  static const String objectType = 'finishFileGeneration';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

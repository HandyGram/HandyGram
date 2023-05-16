part of '../tdapi.dart';

/// **GetSuggestedFileName** *(getSuggestedFileName)* - TDLib function
///
/// Returns suggested name for saving a file in a given directory.
///
/// * [fileId]: Identifier of the file.
/// * [directory]: Directory in which the file is supposed to be saved.
///
/// [Text] is returned on completion.
final class GetSuggestedFileName extends TdFunction {
  
  /// **GetSuggestedFileName** *(getSuggestedFileName)* - TDLib function
  ///
  /// Returns suggested name for saving a file in a given directory.
  ///
  /// * [fileId]: Identifier of the file.
  /// * [directory]: Directory in which the file is supposed to be saved.
  ///
  /// [Text] is returned on completion.
  const GetSuggestedFileName({
    required this.fileId,
    required this.directory,
  });
  
  /// Identifier of the file 
  final int fileId;

  /// Directory in which the file is supposed to be saved
  final String directory;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "file_id": fileId,
      "directory": directory,
      "@extra": extra,
		};
	}

  
  GetSuggestedFileName copyWith({
    int? fileId,
    String? directory,
  }) => GetSuggestedFileName(
    fileId: fileId ?? this.fileId,
    directory: directory ?? this.directory,
  );

  static const String objectType = 'getSuggestedFileName';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

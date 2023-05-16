part of '../tdapi.dart';

/// **DatedFile** *(datedFile)* - basic class
///
/// File with the date it was uploaded.
///
/// * [file]: The file.
/// * [date]: Point in time (Unix timestamp) when the file was uploaded.
final class DatedFile extends TdObject {
  
  /// **DatedFile** *(datedFile)* - basic class
  ///
  /// File with the date it was uploaded.
  ///
  /// * [file]: The file.
  /// * [date]: Point in time (Unix timestamp) when the file was uploaded.
  const DatedFile({
    required this.file,
    required this.date,
  });
  
  /// The file 
  final File file;

  /// Point in time (Unix timestamp) when the file was uploaded
  final int date;
  
  /// Parse from a json
  factory DatedFile.fromJson(Map<String, dynamic> json) => DatedFile(
    file: File.fromJson(json['file']),
    date: json['date'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "file": file.toJson(),
      "date": date,
		};
	}

  
  DatedFile copyWith({
    File? file,
    int? date,
  }) => DatedFile(
    file: file ?? this.file,
    date: date ?? this.date,
  );

  static const String objectType = 'datedFile';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

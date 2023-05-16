part of '../tdapi.dart';

/// **PersonalDocument** *(personalDocument)* - basic class
///
/// A personal document, containing some information about a user.
///
/// * [files]: List of files containing the pages of the document.
/// * [translation]: List of files containing a certified English translation of the document.
final class PersonalDocument extends TdObject {
  
  /// **PersonalDocument** *(personalDocument)* - basic class
  ///
  /// A personal document, containing some information about a user.
  ///
  /// * [files]: List of files containing the pages of the document.
  /// * [translation]: List of files containing a certified English translation of the document.
  const PersonalDocument({
    required this.files,
    required this.translation,
  });
  
  /// List of files containing the pages of the document 
  final List<DatedFile> files;

  /// List of files containing a certified English translation of the document
  final List<DatedFile> translation;
  
  /// Parse from a json
  factory PersonalDocument.fromJson(Map<String, dynamic> json) => PersonalDocument(
    files: List<DatedFile>.from((json['files'] ?? []).map((item) => DatedFile.fromJson(item)).toList()),
    translation: List<DatedFile>.from((json['translation'] ?? []).map((item) => DatedFile.fromJson(item)).toList()),
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "files": files.map((i) => i.toJson()).toList(),
      "translation": translation.map((i) => i.toJson()).toList(),
		};
	}

  
  PersonalDocument copyWith({
    List<DatedFile>? files,
    List<DatedFile>? translation,
  }) => PersonalDocument(
    files: files ?? this.files,
    translation: translation ?? this.translation,
  );

  static const String objectType = 'personalDocument';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

part of '../tdapi.dart';

/// **Document** *(document)* - basic class
///
/// Describes a document of any type.
///
/// * [fileName]: Original name of the file; as defined by the sender.
/// * [mimeType]: MIME type of the file; as defined by the sender.
/// * [minithumbnail]: Document minithumbnail; may be null *(optional)*.
/// * [thumbnail]: Document thumbnail in JPEG or PNG format (PNG will be used only for background patterns); as defined by the sender; may be null *(optional)*.
/// * [document]: File containing the document.
final class Document extends TdObject {
  
  /// **Document** *(document)* - basic class
  ///
  /// Describes a document of any type.
  ///
  /// * [fileName]: Original name of the file; as defined by the sender.
  /// * [mimeType]: MIME type of the file; as defined by the sender.
  /// * [minithumbnail]: Document minithumbnail; may be null *(optional)*.
  /// * [thumbnail]: Document thumbnail in JPEG or PNG format (PNG will be used only for background patterns); as defined by the sender; may be null *(optional)*.
  /// * [document]: File containing the document.
  const Document({
    required this.fileName,
    required this.mimeType,
    this.minithumbnail,
    this.thumbnail,
    required this.document,
  });
  
  /// Original name of the file; as defined by the sender
  final String fileName;

  /// MIME type of the file; as defined by the sender
  final String mimeType;

  /// Document minithumbnail; may be null
  final Minithumbnail? minithumbnail;

  /// Document thumbnail in JPEG or PNG format (PNG will be used only for background patterns); as defined by the sender; may be null
  final Thumbnail? thumbnail;

  /// File containing the document
  final File document;
  
  /// Parse from a json
  factory Document.fromJson(Map<String, dynamic> json) => Document(
    fileName: json['file_name'],
    mimeType: json['mime_type'],
    minithumbnail: json['minithumbnail'] == null ? null : Minithumbnail.fromJson(json['minithumbnail']),
    thumbnail: json['thumbnail'] == null ? null : Thumbnail.fromJson(json['thumbnail']),
    document: File.fromJson(json['document']),
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "file_name": fileName,
      "mime_type": mimeType,
      "minithumbnail": minithumbnail?.toJson(),
      "thumbnail": thumbnail?.toJson(),
      "document": document.toJson(),
		};
	}

  
  Document copyWith({
    String? fileName,
    String? mimeType,
    Minithumbnail? minithumbnail,
    Thumbnail? thumbnail,
    File? document,
  }) => Document(
    fileName: fileName ?? this.fileName,
    mimeType: mimeType ?? this.mimeType,
    minithumbnail: minithumbnail ?? this.minithumbnail,
    thumbnail: thumbnail ?? this.thumbnail,
    document: document ?? this.document,
  );

  static const String objectType = 'document';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

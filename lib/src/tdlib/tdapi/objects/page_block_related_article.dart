part of '../tdapi.dart';

/// **PageBlockRelatedArticle** *(pageBlockRelatedArticle)* - basic class
///
/// Contains information about a related article.
///
/// * [url]: Related article URL.
/// * [title]: Article title; may be empty.
/// * [description]: Article description; may be empty.
/// * [photo]: Article photo; may be null *(optional)*.
/// * [author]: Article author; may be empty.
/// * [publishDate]: Point in time (Unix timestamp) when the article was published; 0 if unknown.
final class PageBlockRelatedArticle extends TdObject {
  
  /// **PageBlockRelatedArticle** *(pageBlockRelatedArticle)* - basic class
  ///
  /// Contains information about a related article.
  ///
  /// * [url]: Related article URL.
  /// * [title]: Article title; may be empty.
  /// * [description]: Article description; may be empty.
  /// * [photo]: Article photo; may be null *(optional)*.
  /// * [author]: Article author; may be empty.
  /// * [publishDate]: Point in time (Unix timestamp) when the article was published; 0 if unknown.
  const PageBlockRelatedArticle({
    required this.url,
    required this.title,
    required this.description,
    this.photo,
    required this.author,
    required this.publishDate,
  });
  
  /// Related article URL
  final String url;

  /// Article title; may be empty
  final String title;

  /// Article description; may be empty
  final String description;

  /// Article photo; may be null
  final Photo? photo;

  /// Article author; may be empty
  final String author;

  /// Point in time (Unix timestamp) when the article was published; 0 if unknown
  final int publishDate;
  
  /// Parse from a json
  factory PageBlockRelatedArticle.fromJson(Map<String, dynamic> json) => PageBlockRelatedArticle(
    url: json['url'],
    title: json['title'],
    description: json['description'],
    photo: json['photo'] == null ? null : Photo.fromJson(json['photo']),
    author: json['author'],
    publishDate: json['publish_date'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "url": url,
      "title": title,
      "description": description,
      "photo": photo?.toJson(),
      "author": author,
      "publish_date": publishDate,
		};
	}

  
  PageBlockRelatedArticle copyWith({
    String? url,
    String? title,
    String? description,
    Photo? photo,
    String? author,
    int? publishDate,
  }) => PageBlockRelatedArticle(
    url: url ?? this.url,
    title: title ?? this.title,
    description: description ?? this.description,
    photo: photo ?? this.photo,
    author: author ?? this.author,
    publishDate: publishDate ?? this.publishDate,
  );

  static const String objectType = 'pageBlockRelatedArticle';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

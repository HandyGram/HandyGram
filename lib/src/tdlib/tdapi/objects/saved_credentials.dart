part of '../tdapi.dart';

/// **SavedCredentials** *(savedCredentials)* - basic class
///
/// Contains information about saved payment credentials.
///
/// * [id]: Unique identifier of the saved credentials.
/// * [title]: Title of the saved credentials.
final class SavedCredentials extends TdObject {
  
  /// **SavedCredentials** *(savedCredentials)* - basic class
  ///
  /// Contains information about saved payment credentials.
  ///
  /// * [id]: Unique identifier of the saved credentials.
  /// * [title]: Title of the saved credentials.
  const SavedCredentials({
    required this.id,
    required this.title,
  });
  
  /// Unique identifier of the saved credentials 
  final String id;

  /// Title of the saved credentials
  final String title;
  
  /// Parse from a json
  factory SavedCredentials.fromJson(Map<String, dynamic> json) => SavedCredentials(
    id: json['id'],
    title: json['title'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "id": id,
      "title": title,
		};
	}

  
  SavedCredentials copyWith({
    String? id,
    String? title,
  }) => SavedCredentials(
    id: id ?? this.id,
    title: title ?? this.title,
  );

  static const String objectType = 'savedCredentials';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

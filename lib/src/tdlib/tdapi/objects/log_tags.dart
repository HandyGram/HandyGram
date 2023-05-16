part of '../tdapi.dart';

/// **LogTags** *(logTags)* - basic class
///
/// Contains a list of available TDLib internal log tags.
///
/// * [tags]: List of log tags.
final class LogTags extends TdObject {
  
  /// **LogTags** *(logTags)* - basic class
  ///
  /// Contains a list of available TDLib internal log tags.
  ///
  /// * [tags]: List of log tags.
  const LogTags({
    required this.tags,
    this.extra,
    this.clientId,
  });
  
  /// List of log tags
  final List<String> tags;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory LogTags.fromJson(Map<String, dynamic> json) => LogTags(
    tags: List<String>.from((json['tags'] ?? []).map((item) => item).toList()),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "tags": tags.map((i) => i).toList(),
		};
	}

  
  LogTags copyWith({
    List<String>? tags,
    dynamic extra,
    int? clientId,
  }) => LogTags(
    tags: tags ?? this.tags,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'logTags';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

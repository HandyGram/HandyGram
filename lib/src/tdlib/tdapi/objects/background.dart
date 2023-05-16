part of '../tdapi.dart';

/// **Background** *(background)* - basic class
///
/// Describes a chat background.
///
/// * [id]: Unique background identifier.
/// * [isDefault]: True, if this is one of default backgrounds.
/// * [isDark]: True, if the background is dark and is recommended to be used with dark theme.
/// * [name]: Unique background name.
/// * [document]: Document with the background; may be null. Null only for filled backgrounds *(optional)*.
/// * [type]: Type of the background.
final class Background extends TdObject {
  
  /// **Background** *(background)* - basic class
  ///
  /// Describes a chat background.
  ///
  /// * [id]: Unique background identifier.
  /// * [isDefault]: True, if this is one of default backgrounds.
  /// * [isDark]: True, if the background is dark and is recommended to be used with dark theme.
  /// * [name]: Unique background name.
  /// * [document]: Document with the background; may be null. Null only for filled backgrounds *(optional)*.
  /// * [type]: Type of the background.
  const Background({
    required this.id,
    required this.isDefault,
    required this.isDark,
    required this.name,
    this.document,
    required this.type,
    this.extra,
    this.clientId,
  });
  
  /// Unique background identifier
  final int id;

  /// True, if this is one of default backgrounds
  final bool isDefault;

  /// True, if the background is dark and is recommended to be used with dark theme
  final bool isDark;

  /// Unique background name
  final String name;

  /// Document with the background; may be null. Null only for filled backgrounds
  final Document? document;

  /// Type of the background
  final BackgroundType type;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory Background.fromJson(Map<String, dynamic> json) => Background(
    id: int.parse(json['id']),
    isDefault: json['is_default'],
    isDark: json['is_dark'],
    name: json['name'],
    document: json['document'] == null ? null : Document.fromJson(json['document']),
    type: BackgroundType.fromJson(json['type']),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "id": id,
      "is_default": isDefault,
      "is_dark": isDark,
      "name": name,
      "document": document?.toJson(),
      "type": type.toJson(),
		};
	}

  
  Background copyWith({
    int? id,
    bool? isDefault,
    bool? isDark,
    String? name,
    Document? document,
    BackgroundType? type,
    dynamic extra,
    int? clientId,
  }) => Background(
    id: id ?? this.id,
    isDefault: isDefault ?? this.isDefault,
    isDark: isDark ?? this.isDark,
    name: name ?? this.name,
    document: document ?? this.document,
    type: type ?? this.type,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'background';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

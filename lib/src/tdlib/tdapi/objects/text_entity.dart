part of '../tdapi.dart';

/// **TextEntity** *(textEntity)* - basic class
///
/// Represents a part of the text that needs to be formatted in some unusual way.
///
/// * [offset]: Offset of the entity, in UTF-16 code units.
/// * [length]: Length of the entity, in UTF-16 code units.
/// * [type]: Type of the entity.
final class TextEntity extends TdObject {
  
  /// **TextEntity** *(textEntity)* - basic class
  ///
  /// Represents a part of the text that needs to be formatted in some unusual way.
  ///
  /// * [offset]: Offset of the entity, in UTF-16 code units.
  /// * [length]: Length of the entity, in UTF-16 code units.
  /// * [type]: Type of the entity.
  const TextEntity({
    required this.offset,
    required this.length,
    required this.type,
  });
  
  /// Offset of the entity, in UTF-16 code units 
  final int offset;

  /// Length of the entity, in UTF-16 code units 
  final int length;

  /// Type of the entity
  final TextEntityType type;
  
  /// Parse from a json
  factory TextEntity.fromJson(Map<String, dynamic> json) => TextEntity(
    offset: json['offset'],
    length: json['length'],
    type: TextEntityType.fromJson(json['type']),
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "offset": offset,
      "length": length,
      "type": type.toJson(),
		};
	}

  
  TextEntity copyWith({
    int? offset,
    int? length,
    TextEntityType? type,
  }) => TextEntity(
    offset: offset ?? this.offset,
    length: length ?? this.length,
    type: type ?? this.type,
  );

  static const String objectType = 'textEntity';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

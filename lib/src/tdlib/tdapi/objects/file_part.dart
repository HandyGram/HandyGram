part of '../tdapi.dart';

/// **FilePart** *(filePart)* - basic class
///
/// Contains a part of a file.
///
/// * [data]: File bytes.
final class FilePart extends TdObject {
  
  /// **FilePart** *(filePart)* - basic class
  ///
  /// Contains a part of a file.
  ///
  /// * [data]: File bytes.
  const FilePart({
    required this.data,
    this.extra,
    this.clientId,
  });
  
  /// File bytes
  final String data;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory FilePart.fromJson(Map<String, dynamic> json) => FilePart(
    data: json['data'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "data": data,
		};
	}

  
  FilePart copyWith({
    String? data,
    dynamic extra,
    int? clientId,
  }) => FilePart(
    data: data ?? this.data,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'filePart';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

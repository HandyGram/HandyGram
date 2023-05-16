part of '../tdapi.dart';

/// **MessagePositions** *(messagePositions)* - basic class
///
/// Contains a list of message positions.
///
/// * [totalCount]: Total number of messages found.
/// * [positions]: List of message positions.
final class MessagePositions extends TdObject {
  
  /// **MessagePositions** *(messagePositions)* - basic class
  ///
  /// Contains a list of message positions.
  ///
  /// * [totalCount]: Total number of messages found.
  /// * [positions]: List of message positions.
  const MessagePositions({
    required this.totalCount,
    required this.positions,
    this.extra,
    this.clientId,
  });
  
  /// Total number of messages found 
  final int totalCount;

  /// List of message positions
  final List<MessagePosition> positions;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory MessagePositions.fromJson(Map<String, dynamic> json) => MessagePositions(
    totalCount: json['total_count'],
    positions: List<MessagePosition>.from((json['positions'] ?? []).map((item) => MessagePosition.fromJson(item)).toList()),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "total_count": totalCount,
      "positions": positions.map((i) => i.toJson()).toList(),
		};
	}

  
  MessagePositions copyWith({
    int? totalCount,
    List<MessagePosition>? positions,
    dynamic extra,
    int? clientId,
  }) => MessagePositions(
    totalCount: totalCount ?? this.totalCount,
    positions: positions ?? this.positions,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'messagePositions';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

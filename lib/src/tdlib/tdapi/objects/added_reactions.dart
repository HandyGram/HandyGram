part of '../tdapi.dart';

/// **AddedReactions** *(addedReactions)* - basic class
///
/// Represents a list of reactions added to a message.
///
/// * [totalCount]: The total number of found reactions.
/// * [reactions]: The list of added reactions.
/// * [nextOffset]: The offset for the next request. If empty, there are no more results.
final class AddedReactions extends TdObject {
  
  /// **AddedReactions** *(addedReactions)* - basic class
  ///
  /// Represents a list of reactions added to a message.
  ///
  /// * [totalCount]: The total number of found reactions.
  /// * [reactions]: The list of added reactions.
  /// * [nextOffset]: The offset for the next request. If empty, there are no more results.
  const AddedReactions({
    required this.totalCount,
    required this.reactions,
    required this.nextOffset,
    this.extra,
    this.clientId,
  });
  
  /// The total number of found reactions 
  final int totalCount;

  /// The list of added reactions 
  final List<AddedReaction> reactions;

  /// The offset for the next request. If empty, there are no more results
  final String nextOffset;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory AddedReactions.fromJson(Map<String, dynamic> json) => AddedReactions(
    totalCount: json['total_count'],
    reactions: List<AddedReaction>.from((json['reactions'] ?? []).map((item) => AddedReaction.fromJson(item)).toList()),
    nextOffset: json['next_offset'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "total_count": totalCount,
      "reactions": reactions.map((i) => i.toJson()).toList(),
      "next_offset": nextOffset,
		};
	}

  
  AddedReactions copyWith({
    int? totalCount,
    List<AddedReaction>? reactions,
    String? nextOffset,
    dynamic extra,
    int? clientId,
  }) => AddedReactions(
    totalCount: totalCount ?? this.totalCount,
    reactions: reactions ?? this.reactions,
    nextOffset: nextOffset ?? this.nextOffset,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'addedReactions';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

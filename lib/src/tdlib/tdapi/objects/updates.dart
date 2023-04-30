part of '../tdapi.dart';

/// **Updates** *(updates)* - basic class
  ///
  /// Contains a list of updates.
  ///
  /// * [updates]: List of updates.
class Updates extends TdObject {
  
  /// **Updates** *(updates)* - basic class
  ///
  /// Contains a list of updates.
  ///
  /// * [updates]: List of updates.
  const Updates({
    required this.updates,
    this.extra,
    this.clientId,
  });
  
  /// List of updates
  final List<Update> updates;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory Updates.fromJson(Map<String, dynamic> json) => Updates(
    updates: List<Update>.from((json['updates'] ?? []).map((item) => Update.fromJson(item)).toList()),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "updates": updates.map((i) => i.toJson()).toList(),
    };
  }
  
  Updates copyWith({
    List<Update>? updates,
    dynamic extra,
    int? clientId,
  }) => Updates(
    updates: updates ?? this.updates,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String constructor = 'updates';
  
  @override
  String getConstructor() => constructor;
}

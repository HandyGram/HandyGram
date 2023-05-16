part of '../tdapi.dart';

/// **ChatAdministrators** *(chatAdministrators)* - basic class
///
/// Represents a list of chat administrators.
///
/// * [administrators]: A list of chat administrators.
final class ChatAdministrators extends TdObject {
  
  /// **ChatAdministrators** *(chatAdministrators)* - basic class
  ///
  /// Represents a list of chat administrators.
  ///
  /// * [administrators]: A list of chat administrators.
  const ChatAdministrators({
    required this.administrators,
    this.extra,
    this.clientId,
  });
  
  /// A list of chat administrators
  final List<ChatAdministrator> administrators;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory ChatAdministrators.fromJson(Map<String, dynamic> json) => ChatAdministrators(
    administrators: List<ChatAdministrator>.from((json['administrators'] ?? []).map((item) => ChatAdministrator.fromJson(item)).toList()),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "administrators": administrators.map((i) => i.toJson()).toList(),
		};
	}

  
  ChatAdministrators copyWith({
    List<ChatAdministrator>? administrators,
    dynamic extra,
    int? clientId,
  }) => ChatAdministrators(
    administrators: administrators ?? this.administrators,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'chatAdministrators';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

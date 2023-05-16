part of '../tdapi.dart';

/// **BotCommands** *(botCommands)* - basic class
///
/// Contains a list of bot commands.
///
/// * [botUserId]: Bot's user identifier.
/// * [commands]: List of bot commands.
final class BotCommands extends TdObject {
  
  /// **BotCommands** *(botCommands)* - basic class
  ///
  /// Contains a list of bot commands.
  ///
  /// * [botUserId]: Bot's user identifier.
  /// * [commands]: List of bot commands.
  const BotCommands({
    required this.botUserId,
    required this.commands,
    this.extra,
    this.clientId,
  });
  
  /// Bot's user identifier 
  final int botUserId;

  /// List of bot commands
  final List<BotCommand> commands;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory BotCommands.fromJson(Map<String, dynamic> json) => BotCommands(
    botUserId: json['bot_user_id'],
    commands: List<BotCommand>.from((json['commands'] ?? []).map((item) => BotCommand.fromJson(item)).toList()),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "bot_user_id": botUserId,
      "commands": commands.map((i) => i.toJson()).toList(),
		};
	}

  
  BotCommands copyWith({
    int? botUserId,
    List<BotCommand>? commands,
    dynamic extra,
    int? clientId,
  }) => BotCommands(
    botUserId: botUserId ?? this.botUserId,
    commands: commands ?? this.commands,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'botCommands';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

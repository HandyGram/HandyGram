part of '../tdapi.dart';

/// **BotCommand** *(botCommand)* - basic class
  ///
  /// Represents a command supported by a bot.
  ///
  /// * [command]: Text of the bot command.
  /// * [description]: Description of the bot command.
class BotCommand extends TdObject {
  
  /// **BotCommand** *(botCommand)* - basic class
  ///
  /// Represents a command supported by a bot.
  ///
  /// * [command]: Text of the bot command.
  /// * [description]: Description of the bot command.
  const BotCommand({
    required this.command,
    required this.description,
  });
  
  /// Text of the bot command 
  final String command;

  /// Description of the bot command
  final String description;
  
  /// Parse from a json
  factory BotCommand.fromJson(Map<String, dynamic> json) => BotCommand(
    command: json['command'],
    description: json['description'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "command": command,
      "description": description,
    };
  }
  
  BotCommand copyWith({
    String? command,
    String? description,
  }) => BotCommand(
    command: command ?? this.command,
    description: description ?? this.description,
  );

  static const String constructor = 'botCommand';
  
  @override
  String getConstructor() => constructor;
}

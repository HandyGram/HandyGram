part of '../tdapi.dart';

/// **ChatMessageSender** *(chatMessageSender)* - basic class
///
/// Represents a message sender, which can be used to send messages in a chat.
///
/// * [sender]: Available message senders.
/// * [needsPremium]: True, if Telegram Premium is needed to use the message sender.
final class ChatMessageSender extends TdObject {
  
  /// **ChatMessageSender** *(chatMessageSender)* - basic class
  ///
  /// Represents a message sender, which can be used to send messages in a chat.
  ///
  /// * [sender]: Available message senders.
  /// * [needsPremium]: True, if Telegram Premium is needed to use the message sender.
  const ChatMessageSender({
    required this.sender,
    required this.needsPremium,
  });
  
  /// Available message senders 
  final MessageSender sender;

  /// True, if Telegram Premium is needed to use the message sender
  final bool needsPremium;
  
  /// Parse from a json
  factory ChatMessageSender.fromJson(Map<String, dynamic> json) => ChatMessageSender(
    sender: MessageSender.fromJson(json['sender']),
    needsPremium: json['needs_premium'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "sender": sender.toJson(),
      "needs_premium": needsPremium,
		};
	}

  
  ChatMessageSender copyWith({
    MessageSender? sender,
    bool? needsPremium,
  }) => ChatMessageSender(
    sender: sender ?? this.sender,
    needsPremium: needsPremium ?? this.needsPremium,
  );

  static const String objectType = 'chatMessageSender';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

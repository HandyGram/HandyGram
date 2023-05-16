part of '../tdapi.dart';

/// **ToggleMessageSenderIsBlocked** *(toggleMessageSenderIsBlocked)* - TDLib function
///
/// Changes the block state of a message sender. Currently, only users and supergroup chats can be blocked.
///
/// * [senderId]: Identifier of a message sender to block/unblock.
/// * [isBlocked]: New value of is_blocked.
///
/// [Ok] is returned on completion.
final class ToggleMessageSenderIsBlocked extends TdFunction {
  
  /// **ToggleMessageSenderIsBlocked** *(toggleMessageSenderIsBlocked)* - TDLib function
  ///
  /// Changes the block state of a message sender. Currently, only users and supergroup chats can be blocked.
  ///
  /// * [senderId]: Identifier of a message sender to block/unblock.
  /// * [isBlocked]: New value of is_blocked.
  ///
  /// [Ok] is returned on completion.
  const ToggleMessageSenderIsBlocked({
    required this.senderId,
    required this.isBlocked,
  });
  
  /// Identifier of a message sender to block/unblock 
  final MessageSender senderId;

  /// New value of is_blocked
  final bool isBlocked;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "sender_id": senderId.toJson(),
      "is_blocked": isBlocked,
      "@extra": extra,
		};
	}

  
  ToggleMessageSenderIsBlocked copyWith({
    MessageSender? senderId,
    bool? isBlocked,
  }) => ToggleMessageSenderIsBlocked(
    senderId: senderId ?? this.senderId,
    isBlocked: isBlocked ?? this.isBlocked,
  );

  static const String objectType = 'toggleMessageSenderIsBlocked';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

part of '../tdapi.dart';

/// **ToggleSupergroupJoinToSendMessages** *(toggleSupergroupJoinToSendMessages)* - TDLib function
///
/// Toggles whether joining is mandatory to send messages to a discussion supergroup; requires can_restrict_members administrator right.
///
/// * [supergroupId]: Identifier of the supergroup.
/// * [joinToSendMessages]: New value of join_to_send_messages.
///
/// [Ok] is returned on completion.
final class ToggleSupergroupJoinToSendMessages extends TdFunction {
  
  /// **ToggleSupergroupJoinToSendMessages** *(toggleSupergroupJoinToSendMessages)* - TDLib function
  ///
  /// Toggles whether joining is mandatory to send messages to a discussion supergroup; requires can_restrict_members administrator right.
  ///
  /// * [supergroupId]: Identifier of the supergroup.
  /// * [joinToSendMessages]: New value of join_to_send_messages.
  ///
  /// [Ok] is returned on completion.
  const ToggleSupergroupJoinToSendMessages({
    required this.supergroupId,
    required this.joinToSendMessages,
  });
  
  /// Identifier of the supergroup 
  final int supergroupId;

  /// New value of join_to_send_messages
  final bool joinToSendMessages;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "supergroup_id": supergroupId,
      "join_to_send_messages": joinToSendMessages,
      "@extra": extra,
		};
	}

  
  ToggleSupergroupJoinToSendMessages copyWith({
    int? supergroupId,
    bool? joinToSendMessages,
  }) => ToggleSupergroupJoinToSendMessages(
    supergroupId: supergroupId ?? this.supergroupId,
    joinToSendMessages: joinToSendMessages ?? this.joinToSendMessages,
  );

  static const String objectType = 'toggleSupergroupJoinToSendMessages';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

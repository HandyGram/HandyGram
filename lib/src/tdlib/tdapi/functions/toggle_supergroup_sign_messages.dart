part of '../tdapi.dart';

/// **ToggleSupergroupSignMessages** *(toggleSupergroupSignMessages)* - TDLib function
///
/// Toggles whether sender signature is added to sent messages in a channel; requires can_change_info administrator right.
///
/// * [supergroupId]: Identifier of the channel.
/// * [signMessages]: New value of sign_messages.
///
/// [Ok] is returned on completion.
final class ToggleSupergroupSignMessages extends TdFunction {
  
  /// **ToggleSupergroupSignMessages** *(toggleSupergroupSignMessages)* - TDLib function
  ///
  /// Toggles whether sender signature is added to sent messages in a channel; requires can_change_info administrator right.
  ///
  /// * [supergroupId]: Identifier of the channel.
  /// * [signMessages]: New value of sign_messages.
  ///
  /// [Ok] is returned on completion.
  const ToggleSupergroupSignMessages({
    required this.supergroupId,
    required this.signMessages,
  });
  
  /// Identifier of the channel 
  final int supergroupId;

  /// New value of sign_messages
  final bool signMessages;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "supergroup_id": supergroupId,
      "sign_messages": signMessages,
      "@extra": extra,
		};
	}

  
  ToggleSupergroupSignMessages copyWith({
    int? supergroupId,
    bool? signMessages,
  }) => ToggleSupergroupSignMessages(
    supergroupId: supergroupId ?? this.supergroupId,
    signMessages: signMessages ?? this.signMessages,
  );

  static const String objectType = 'toggleSupergroupSignMessages';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

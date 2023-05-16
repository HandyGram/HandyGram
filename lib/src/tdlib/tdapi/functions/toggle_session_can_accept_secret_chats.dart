part of '../tdapi.dart';

/// **ToggleSessionCanAcceptSecretChats** *(toggleSessionCanAcceptSecretChats)* - TDLib function
///
/// Toggles whether a session can accept incoming secret chats.
///
/// * [sessionId]: Session identifier.
/// * [canAcceptSecretChats]: Pass true to allow accepring secret chats by the session; pass false otherwise.
///
/// [Ok] is returned on completion.
final class ToggleSessionCanAcceptSecretChats extends TdFunction {
  
  /// **ToggleSessionCanAcceptSecretChats** *(toggleSessionCanAcceptSecretChats)* - TDLib function
  ///
  /// Toggles whether a session can accept incoming secret chats.
  ///
  /// * [sessionId]: Session identifier.
  /// * [canAcceptSecretChats]: Pass true to allow accepring secret chats by the session; pass false otherwise.
  ///
  /// [Ok] is returned on completion.
  const ToggleSessionCanAcceptSecretChats({
    required this.sessionId,
    required this.canAcceptSecretChats,
  });
  
  /// Session identifier 
  final int sessionId;

  /// Pass true to allow accepring secret chats by the session; pass false otherwise
  final bool canAcceptSecretChats;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "session_id": sessionId,
      "can_accept_secret_chats": canAcceptSecretChats,
      "@extra": extra,
		};
	}

  
  ToggleSessionCanAcceptSecretChats copyWith({
    int? sessionId,
    bool? canAcceptSecretChats,
  }) => ToggleSessionCanAcceptSecretChats(
    sessionId: sessionId ?? this.sessionId,
    canAcceptSecretChats: canAcceptSecretChats ?? this.canAcceptSecretChats,
  );

  static const String objectType = 'toggleSessionCanAcceptSecretChats';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

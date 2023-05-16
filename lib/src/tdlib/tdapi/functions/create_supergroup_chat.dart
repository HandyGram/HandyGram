part of '../tdapi.dart';

/// **CreateSupergroupChat** *(createSupergroupChat)* - TDLib function
///
/// Returns an existing chat corresponding to a known supergroup or channel.
///
/// * [supergroupId]: Supergroup or channel identifier.
/// * [force]: Pass true to create the chat without a network request. In this case all information about the chat except its type, title and photo can be incorrect.
///
/// [Chat] is returned on completion.
final class CreateSupergroupChat extends TdFunction {
  
  /// **CreateSupergroupChat** *(createSupergroupChat)* - TDLib function
  ///
  /// Returns an existing chat corresponding to a known supergroup or channel.
  ///
  /// * [supergroupId]: Supergroup or channel identifier.
  /// * [force]: Pass true to create the chat without a network request. In this case all information about the chat except its type, title and photo can be incorrect.
  ///
  /// [Chat] is returned on completion.
  const CreateSupergroupChat({
    required this.supergroupId,
    required this.force,
  });
  
  /// Supergroup or channel identifier 
  final int supergroupId;

  /// Pass true to create the chat without a network request. In this case all information about the chat except its type, title and photo can be incorrect
  final bool force;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "supergroup_id": supergroupId,
      "force": force,
      "@extra": extra,
		};
	}

  
  CreateSupergroupChat copyWith({
    int? supergroupId,
    bool? force,
  }) => CreateSupergroupChat(
    supergroupId: supergroupId ?? this.supergroupId,
    force: force ?? this.force,
  );

  static const String objectType = 'createSupergroupChat';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

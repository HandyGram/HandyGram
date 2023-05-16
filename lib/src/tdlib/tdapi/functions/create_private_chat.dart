part of '../tdapi.dart';

/// **CreatePrivateChat** *(createPrivateChat)* - TDLib function
///
/// Returns an existing chat corresponding to a given user.
///
/// * [userId]: User identifier.
/// * [force]: Pass true to create the chat without a network request. In this case all information about the chat except its type, title and photo can be incorrect.
///
/// [Chat] is returned on completion.
final class CreatePrivateChat extends TdFunction {
  
  /// **CreatePrivateChat** *(createPrivateChat)* - TDLib function
  ///
  /// Returns an existing chat corresponding to a given user.
  ///
  /// * [userId]: User identifier.
  /// * [force]: Pass true to create the chat without a network request. In this case all information about the chat except its type, title and photo can be incorrect.
  ///
  /// [Chat] is returned on completion.
  const CreatePrivateChat({
    required this.userId,
    required this.force,
  });
  
  /// User identifier 
  final int userId;

  /// Pass true to create the chat without a network request. In this case all information about the chat except its type, title and photo can be incorrect
  final bool force;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "user_id": userId,
      "force": force,
      "@extra": extra,
		};
	}

  
  CreatePrivateChat copyWith({
    int? userId,
    bool? force,
  }) => CreatePrivateChat(
    userId: userId ?? this.userId,
    force: force ?? this.force,
  );

  static const String objectType = 'createPrivateChat';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

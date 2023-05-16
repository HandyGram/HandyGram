part of '../tdapi.dart';

/// **CreateBasicGroupChat** *(createBasicGroupChat)* - TDLib function
///
/// Returns an existing chat corresponding to a known basic group.
///
/// * [basicGroupId]: Basic group identifier.
/// * [force]: Pass true to create the chat without a network request. In this case all information about the chat except its type, title and photo can be incorrect.
///
/// [Chat] is returned on completion.
final class CreateBasicGroupChat extends TdFunction {
  
  /// **CreateBasicGroupChat** *(createBasicGroupChat)* - TDLib function
  ///
  /// Returns an existing chat corresponding to a known basic group.
  ///
  /// * [basicGroupId]: Basic group identifier.
  /// * [force]: Pass true to create the chat without a network request. In this case all information about the chat except its type, title and photo can be incorrect.
  ///
  /// [Chat] is returned on completion.
  const CreateBasicGroupChat({
    required this.basicGroupId,
    required this.force,
  });
  
  /// Basic group identifier 
  final int basicGroupId;

  /// Pass true to create the chat without a network request. In this case all information about the chat except its type, title and photo can be incorrect
  final bool force;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "basic_group_id": basicGroupId,
      "force": force,
      "@extra": extra,
		};
	}

  
  CreateBasicGroupChat copyWith({
    int? basicGroupId,
    bool? force,
  }) => CreateBasicGroupChat(
    basicGroupId: basicGroupId ?? this.basicGroupId,
    force: force ?? this.force,
  );

  static const String objectType = 'createBasicGroupChat';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

part of '../tdapi.dart';

/// **SecretChatState** *(secretChatState)* - parent
///
/// Describes the current secret chat state.
sealed class SecretChatState extends TdObject {
  
  /// **SecretChatState** *(secretChatState)* - parent
  ///
  /// Describes the current secret chat state.
  const SecretChatState();
  
  /// a SecretChatState return type can be :
  /// * [SecretChatStatePending]
  /// * [SecretChatStateReady]
  /// * [SecretChatStateClosed]
  factory SecretChatState.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case SecretChatStatePending.objectType:
        return SecretChatStatePending.fromJson(json);
      case SecretChatStateReady.objectType:
        return SecretChatStateReady.fromJson(json);
      case SecretChatStateClosed.objectType:
        return SecretChatStateClosed.fromJson(json);
      default:
        throw FormatException(
          "Unknown object ${json["@type"]} (expected child of SecretChatState)",
          json,
        );
    }
  }
  
  @override
  Map<String, dynamic> toJson();

  
  SecretChatState copyWith();

  static const String objectType = 'secretChatState';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **SecretChatStatePending** *(secretChatStatePending)* - child of SecretChatState
///
/// The secret chat is not yet created; waiting for the other user to get online.
final class SecretChatStatePending extends SecretChatState {
  
  /// **SecretChatStatePending** *(secretChatStatePending)* - child of SecretChatState
  ///
  /// The secret chat is not yet created; waiting for the other user to get online.
  const SecretChatStatePending();
  
  /// Parse from a json
  factory SecretChatStatePending.fromJson(Map<String, dynamic> json) => const SecretChatStatePending();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  SecretChatStatePending copyWith() => const SecretChatStatePending();

  static const String objectType = 'secretChatStatePending';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **SecretChatStateReady** *(secretChatStateReady)* - child of SecretChatState
///
/// The secret chat is ready to use.
final class SecretChatStateReady extends SecretChatState {
  
  /// **SecretChatStateReady** *(secretChatStateReady)* - child of SecretChatState
  ///
  /// The secret chat is ready to use.
  const SecretChatStateReady();
  
  /// Parse from a json
  factory SecretChatStateReady.fromJson(Map<String, dynamic> json) => const SecretChatStateReady();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  SecretChatStateReady copyWith() => const SecretChatStateReady();

  static const String objectType = 'secretChatStateReady';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **SecretChatStateClosed** *(secretChatStateClosed)* - child of SecretChatState
///
/// The secret chat is closed.
final class SecretChatStateClosed extends SecretChatState {
  
  /// **SecretChatStateClosed** *(secretChatStateClosed)* - child of SecretChatState
  ///
  /// The secret chat is closed.
  const SecretChatStateClosed();
  
  /// Parse from a json
  factory SecretChatStateClosed.fromJson(Map<String, dynamic> json) => const SecretChatStateClosed();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  SecretChatStateClosed copyWith() => const SecretChatStateClosed();

  static const String objectType = 'secretChatStateClosed';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

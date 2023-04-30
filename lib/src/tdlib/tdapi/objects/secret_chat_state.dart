part of '../tdapi.dart';

/// **SecretChatState** *(secretChatState)* - parent
  ///
  /// Describes the current secret chat state.
class SecretChatState extends TdObject {
  
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
      case SecretChatStatePending.constructor:
        return SecretChatStatePending.fromJson(json);
      case SecretChatStateReady.constructor:
        return SecretChatStateReady.fromJson(json);
      case SecretChatStateClosed.constructor:
        return SecretChatStateClosed.fromJson(json);
      default:
        return const SecretChatState();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  SecretChatState copyWith() => const SecretChatState();

  static const String constructor = 'secretChatState';
  
  @override
  String getConstructor() => constructor;
}


/// **SecretChatStatePending** *(secretChatStatePending)* - child of SecretChatState
  ///
  /// The secret chat is not yet created; waiting for the other user to get online.
class SecretChatStatePending extends SecretChatState {
  
  /// **SecretChatStatePending** *(secretChatStatePending)* - child of SecretChatState
  ///
  /// The secret chat is not yet created; waiting for the other user to get online.
  const SecretChatStatePending();
  
  /// Parse from a json
  factory SecretChatStatePending.fromJson(Map<String, dynamic> json) => const SecretChatStatePending();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  SecretChatStatePending copyWith() => const SecretChatStatePending();

  static const String constructor = 'secretChatStatePending';
  
  @override
  String getConstructor() => constructor;
}


/// **SecretChatStateReady** *(secretChatStateReady)* - child of SecretChatState
  ///
  /// The secret chat is ready to use.
class SecretChatStateReady extends SecretChatState {
  
  /// **SecretChatStateReady** *(secretChatStateReady)* - child of SecretChatState
  ///
  /// The secret chat is ready to use.
  const SecretChatStateReady();
  
  /// Parse from a json
  factory SecretChatStateReady.fromJson(Map<String, dynamic> json) => const SecretChatStateReady();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  SecretChatStateReady copyWith() => const SecretChatStateReady();

  static const String constructor = 'secretChatStateReady';
  
  @override
  String getConstructor() => constructor;
}


/// **SecretChatStateClosed** *(secretChatStateClosed)* - child of SecretChatState
  ///
  /// The secret chat is closed.
class SecretChatStateClosed extends SecretChatState {
  
  /// **SecretChatStateClosed** *(secretChatStateClosed)* - child of SecretChatState
  ///
  /// The secret chat is closed.
  const SecretChatStateClosed();
  
  /// Parse from a json
  factory SecretChatStateClosed.fromJson(Map<String, dynamic> json) => const SecretChatStateClosed();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  SecretChatStateClosed copyWith() => const SecretChatStateClosed();

  static const String constructor = 'secretChatStateClosed';
  
  @override
  String getConstructor() => constructor;
}

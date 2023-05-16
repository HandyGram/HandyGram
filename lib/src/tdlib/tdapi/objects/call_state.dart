part of '../tdapi.dart';

/// **CallState** *(callState)* - parent
///
/// Describes the current call state.
sealed class CallState extends TdObject {
  
  /// **CallState** *(callState)* - parent
  ///
  /// Describes the current call state.
  const CallState();
  
  /// a CallState return type can be :
  /// * [CallStatePending]
  /// * [CallStateExchangingKeys]
  /// * [CallStateReady]
  /// * [CallStateHangingUp]
  /// * [CallStateDiscarded]
  /// * [CallStateError]
  factory CallState.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case CallStatePending.objectType:
        return CallStatePending.fromJson(json);
      case CallStateExchangingKeys.objectType:
        return CallStateExchangingKeys.fromJson(json);
      case CallStateReady.objectType:
        return CallStateReady.fromJson(json);
      case CallStateHangingUp.objectType:
        return CallStateHangingUp.fromJson(json);
      case CallStateDiscarded.objectType:
        return CallStateDiscarded.fromJson(json);
      case CallStateError.objectType:
        return CallStateError.fromJson(json);
      default:
        throw FormatException(
          "Unknown object ${json["@type"]} (expected child of CallState)",
          json,
        );
    }
  }
  
  @override
  Map<String, dynamic> toJson();

  
  CallState copyWith();

  static const String objectType = 'callState';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **CallStatePending** *(callStatePending)* - child of CallState
///
/// The call is pending, waiting to be accepted by a user.
///
/// * [isCreated]: True, if the call has already been created by the server.
/// * [isReceived]: True, if the call has already been received by the other party.
final class CallStatePending extends CallState {
  
  /// **CallStatePending** *(callStatePending)* - child of CallState
  ///
  /// The call is pending, waiting to be accepted by a user.
  ///
  /// * [isCreated]: True, if the call has already been created by the server.
  /// * [isReceived]: True, if the call has already been received by the other party.
  const CallStatePending({
    required this.isCreated,
    required this.isReceived,
  });
  
  /// True, if the call has already been created by the server 
  final bool isCreated;

  /// True, if the call has already been received by the other party
  final bool isReceived;
  
  /// Parse from a json
  factory CallStatePending.fromJson(Map<String, dynamic> json) => CallStatePending(
    isCreated: json['is_created'],
    isReceived: json['is_received'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "is_created": isCreated,
      "is_received": isReceived,
		};
	}

  
  @override
  CallStatePending copyWith({
    bool? isCreated,
    bool? isReceived,
  }) => CallStatePending(
    isCreated: isCreated ?? this.isCreated,
    isReceived: isReceived ?? this.isReceived,
  );

  static const String objectType = 'callStatePending';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **CallStateExchangingKeys** *(callStateExchangingKeys)* - child of CallState
///
/// The call has been answered and encryption keys are being exchanged.
final class CallStateExchangingKeys extends CallState {
  
  /// **CallStateExchangingKeys** *(callStateExchangingKeys)* - child of CallState
  ///
  /// The call has been answered and encryption keys are being exchanged.
  const CallStateExchangingKeys();
  
  /// Parse from a json
  factory CallStateExchangingKeys.fromJson(Map<String, dynamic> json) => const CallStateExchangingKeys();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  CallStateExchangingKeys copyWith() => const CallStateExchangingKeys();

  static const String objectType = 'callStateExchangingKeys';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **CallStateReady** *(callStateReady)* - child of CallState
///
/// The call is ready to use.
///
/// * [protocol]: Call protocols supported by the peer.
/// * [servers]: List of available call servers.
/// * [config]: A JSON-encoded call config.
/// * [encryptionKey]: Call encryption key.
/// * [emojis]: Encryption key emojis fingerprint.
/// * [allowP2p]: True, if peer-to-peer connection is allowed by users privacy settings.
final class CallStateReady extends CallState {
  
  /// **CallStateReady** *(callStateReady)* - child of CallState
  ///
  /// The call is ready to use.
  ///
  /// * [protocol]: Call protocols supported by the peer.
  /// * [servers]: List of available call servers.
  /// * [config]: A JSON-encoded call config.
  /// * [encryptionKey]: Call encryption key.
  /// * [emojis]: Encryption key emojis fingerprint.
  /// * [allowP2p]: True, if peer-to-peer connection is allowed by users privacy settings.
  const CallStateReady({
    required this.protocol,
    required this.servers,
    required this.config,
    required this.encryptionKey,
    required this.emojis,
    required this.allowP2p,
  });
  
  /// Call protocols supported by the peer
  final CallProtocol protocol;

  /// List of available call servers
  final List<CallServer> servers;

  /// A JSON-encoded call config
  final String config;

  /// Call encryption key
  final String encryptionKey;

  /// Encryption key emojis fingerprint
  final List<String> emojis;

  /// True, if peer-to-peer connection is allowed by users privacy settings
  final bool allowP2p;
  
  /// Parse from a json
  factory CallStateReady.fromJson(Map<String, dynamic> json) => CallStateReady(
    protocol: CallProtocol.fromJson(json['protocol']),
    servers: List<CallServer>.from((json['servers'] ?? []).map((item) => CallServer.fromJson(item)).toList()),
    config: json['config'],
    encryptionKey: json['encryption_key'],
    emojis: List<String>.from((json['emojis'] ?? []).map((item) => item).toList()),
    allowP2p: json['allow_p2p'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "protocol": protocol.toJson(),
      "servers": servers.map((i) => i.toJson()).toList(),
      "config": config,
      "encryption_key": encryptionKey,
      "emojis": emojis.map((i) => i).toList(),
      "allow_p2p": allowP2p,
		};
	}

  
  @override
  CallStateReady copyWith({
    CallProtocol? protocol,
    List<CallServer>? servers,
    String? config,
    String? encryptionKey,
    List<String>? emojis,
    bool? allowP2p,
  }) => CallStateReady(
    protocol: protocol ?? this.protocol,
    servers: servers ?? this.servers,
    config: config ?? this.config,
    encryptionKey: encryptionKey ?? this.encryptionKey,
    emojis: emojis ?? this.emojis,
    allowP2p: allowP2p ?? this.allowP2p,
  );

  static const String objectType = 'callStateReady';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **CallStateHangingUp** *(callStateHangingUp)* - child of CallState
///
/// The call is hanging up after discardCall has been called.
final class CallStateHangingUp extends CallState {
  
  /// **CallStateHangingUp** *(callStateHangingUp)* - child of CallState
  ///
  /// The call is hanging up after discardCall has been called.
  const CallStateHangingUp();
  
  /// Parse from a json
  factory CallStateHangingUp.fromJson(Map<String, dynamic> json) => const CallStateHangingUp();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  CallStateHangingUp copyWith() => const CallStateHangingUp();

  static const String objectType = 'callStateHangingUp';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **CallStateDiscarded** *(callStateDiscarded)* - child of CallState
///
/// The call has ended successfully.
///
/// * [reason]: The reason, why the call has ended.
/// * [needRating]: True, if the call rating must be sent to the server.
/// * [needDebugInformation]: True, if the call debug information must be sent to the server.
/// * [needLog]: True, if the call log must be sent to the server.
final class CallStateDiscarded extends CallState {
  
  /// **CallStateDiscarded** *(callStateDiscarded)* - child of CallState
  ///
  /// The call has ended successfully.
  ///
  /// * [reason]: The reason, why the call has ended.
  /// * [needRating]: True, if the call rating must be sent to the server.
  /// * [needDebugInformation]: True, if the call debug information must be sent to the server.
  /// * [needLog]: True, if the call log must be sent to the server.
  const CallStateDiscarded({
    required this.reason,
    required this.needRating,
    required this.needDebugInformation,
    required this.needLog,
  });
  
  /// The reason, why the call has ended
  final CallDiscardReason reason;

  /// True, if the call rating must be sent to the server
  final bool needRating;

  /// True, if the call debug information must be sent to the server
  final bool needDebugInformation;

  /// True, if the call log must be sent to the server
  final bool needLog;
  
  /// Parse from a json
  factory CallStateDiscarded.fromJson(Map<String, dynamic> json) => CallStateDiscarded(
    reason: CallDiscardReason.fromJson(json['reason']),
    needRating: json['need_rating'],
    needDebugInformation: json['need_debug_information'],
    needLog: json['need_log'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "reason": reason.toJson(),
      "need_rating": needRating,
      "need_debug_information": needDebugInformation,
      "need_log": needLog,
		};
	}

  
  @override
  CallStateDiscarded copyWith({
    CallDiscardReason? reason,
    bool? needRating,
    bool? needDebugInformation,
    bool? needLog,
  }) => CallStateDiscarded(
    reason: reason ?? this.reason,
    needRating: needRating ?? this.needRating,
    needDebugInformation: needDebugInformation ?? this.needDebugInformation,
    needLog: needLog ?? this.needLog,
  );

  static const String objectType = 'callStateDiscarded';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **CallStateError** *(callStateError)* - child of CallState
///
/// The call has ended with an error.
///
/// * [error]: Error. An error with the code 4005000 will be returned if an outgoing call is missed because of an expired timeout.
final class CallStateError extends CallState {
  
  /// **CallStateError** *(callStateError)* - child of CallState
  ///
  /// The call has ended with an error.
  ///
  /// * [error]: Error. An error with the code 4005000 will be returned if an outgoing call is missed because of an expired timeout.
  const CallStateError({
    required this.error,
  });
  
  /// Error. An error with the code 4005000 will be returned if an outgoing call is missed because of an expired timeout
  final TdError error;
  
  /// Parse from a json
  factory CallStateError.fromJson(Map<String, dynamic> json) => CallStateError(
    error: TdError.fromJson(json['error']),
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "error": error.toJson(),
		};
	}

  
  @override
  CallStateError copyWith({
    TdError? error,
  }) => CallStateError(
    error: error ?? this.error,
  );

  static const String objectType = 'callStateError';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

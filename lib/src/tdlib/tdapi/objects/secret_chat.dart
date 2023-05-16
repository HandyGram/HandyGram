part of '../tdapi.dart';

/// **SecretChat** *(secretChat)* - basic class
///
/// Represents a secret chat.
///
/// * [id]: Secret chat identifier.
/// * [userId]: Identifier of the chat partner.
/// * [state]: State of the secret chat.
/// * [isOutbound]: True, if the chat was created by the current user; false otherwise.
/// * [keyHash]: Hash of the currently used key for comparison with the hash of the chat partner's key. This is a string of 36 little-endian bytes, which must be split into groups of 2 bits, each denoting a pixel of one of 4 colors FFFFFF, D5E6F3, 2D5775, and 2F99C9.. The pixels must be used to make a 12x12 square image filled from left to right, top to bottom. Alternatively, the first 32 bytes of the hash can be converted to the hexadecimal format and printed as 32 2-digit hex numbers.
/// * [layer]: Secret chat layer; determines features supported by the chat partner's application. Nested text entities and underline and strikethrough entities are supported if the layer. files bigger than 2000MB are supported if the layer.
final class SecretChat extends TdObject {
  
  /// **SecretChat** *(secretChat)* - basic class
  ///
  /// Represents a secret chat.
  ///
  /// * [id]: Secret chat identifier.
  /// * [userId]: Identifier of the chat partner.
  /// * [state]: State of the secret chat.
  /// * [isOutbound]: True, if the chat was created by the current user; false otherwise.
  /// * [keyHash]: Hash of the currently used key for comparison with the hash of the chat partner's key. This is a string of 36 little-endian bytes, which must be split into groups of 2 bits, each denoting a pixel of one of 4 colors FFFFFF, D5E6F3, 2D5775, and 2F99C9.. The pixels must be used to make a 12x12 square image filled from left to right, top to bottom. Alternatively, the first 32 bytes of the hash can be converted to the hexadecimal format and printed as 32 2-digit hex numbers.
  /// * [layer]: Secret chat layer; determines features supported by the chat partner's application. Nested text entities and underline and strikethrough entities are supported if the layer. files bigger than 2000MB are supported if the layer.
  const SecretChat({
    required this.id,
    required this.userId,
    required this.state,
    required this.isOutbound,
    required this.keyHash,
    required this.layer,
    this.extra,
    this.clientId,
  });
  
  /// Secret chat identifier
  final int id;

  /// Identifier of the chat partner
  final int userId;

  /// State of the secret chat
  final SecretChatState state;

  /// True, if the chat was created by the current user; false otherwise
  final bool isOutbound;

  /// Hash of the currently used key for comparison with the hash of the chat partner's key. This is a string of 36 little-endian bytes, which must be split into groups of 2 bits, each denoting a pixel of one of 4 colors FFFFFF, D5E6F3, 2D5775, and 2F99C9.. The pixels must be used to make a 12x12 square image filled from left to right, top to bottom. Alternatively, the first 32 bytes of the hash can be converted to the hexadecimal format and printed as 32 2-digit hex numbers
  final String keyHash;

  /// Secret chat layer; determines features supported by the chat partner's application. Nested text entities and underline and strikethrough entities are supported if the layer. files bigger than 2000MB are supported if the layer
  final int layer;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory SecretChat.fromJson(Map<String, dynamic> json) => SecretChat(
    id: json['id'],
    userId: json['user_id'],
    state: SecretChatState.fromJson(json['state']),
    isOutbound: json['is_outbound'],
    keyHash: json['key_hash'],
    layer: json['layer'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "id": id,
      "user_id": userId,
      "state": state.toJson(),
      "is_outbound": isOutbound,
      "key_hash": keyHash,
      "layer": layer,
		};
	}

  
  SecretChat copyWith({
    int? id,
    int? userId,
    SecretChatState? state,
    bool? isOutbound,
    String? keyHash,
    int? layer,
    dynamic extra,
    int? clientId,
  }) => SecretChat(
    id: id ?? this.id,
    userId: userId ?? this.userId,
    state: state ?? this.state,
    isOutbound: isOutbound ?? this.isOutbound,
    keyHash: keyHash ?? this.keyHash,
    layer: layer ?? this.layer,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'secretChat';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

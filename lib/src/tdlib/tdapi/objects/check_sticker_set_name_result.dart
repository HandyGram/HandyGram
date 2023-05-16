part of '../tdapi.dart';

/// **CheckStickerSetNameResult** *(checkStickerSetNameResult)* - parent
///
/// Represents result of checking whether a name can be used for a new sticker set.
sealed class CheckStickerSetNameResult extends TdObject {
  
  /// **CheckStickerSetNameResult** *(checkStickerSetNameResult)* - parent
  ///
  /// Represents result of checking whether a name can be used for a new sticker set.
  const CheckStickerSetNameResult();
  
  /// a CheckStickerSetNameResult return type can be :
  /// * [CheckStickerSetNameResultOk]
  /// * [CheckStickerSetNameResultNameInvalid]
  /// * [CheckStickerSetNameResultNameOccupied]
  factory CheckStickerSetNameResult.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case CheckStickerSetNameResultOk.objectType:
        return CheckStickerSetNameResultOk.fromJson(json);
      case CheckStickerSetNameResultNameInvalid.objectType:
        return CheckStickerSetNameResultNameInvalid.fromJson(json);
      case CheckStickerSetNameResultNameOccupied.objectType:
        return CheckStickerSetNameResultNameOccupied.fromJson(json);
      default:
        throw FormatException(
          "Unknown object ${json["@type"]} (expected child of CheckStickerSetNameResult)",
          json,
        );
    }
  }
  
  @override
  Map<String, dynamic> toJson();

  
  CheckStickerSetNameResult copyWith();

  static const String objectType = 'checkStickerSetNameResult';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **CheckStickerSetNameResultOk** *(checkStickerSetNameResultOk)* - child of CheckStickerSetNameResult
///
/// The name can be set.
final class CheckStickerSetNameResultOk extends CheckStickerSetNameResult {
  
  /// **CheckStickerSetNameResultOk** *(checkStickerSetNameResultOk)* - child of CheckStickerSetNameResult
  ///
  /// The name can be set.
  const CheckStickerSetNameResultOk({
    this.extra,
    this.clientId,
  });
  
  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory CheckStickerSetNameResultOk.fromJson(Map<String, dynamic> json) => CheckStickerSetNameResultOk(
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  CheckStickerSetNameResultOk copyWith({
    dynamic extra,
    int? clientId,
  }) => CheckStickerSetNameResultOk(
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'checkStickerSetNameResultOk';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **CheckStickerSetNameResultNameInvalid** *(checkStickerSetNameResultNameInvalid)* - child of CheckStickerSetNameResult
///
/// The name is invalid.
final class CheckStickerSetNameResultNameInvalid extends CheckStickerSetNameResult {
  
  /// **CheckStickerSetNameResultNameInvalid** *(checkStickerSetNameResultNameInvalid)* - child of CheckStickerSetNameResult
  ///
  /// The name is invalid.
  const CheckStickerSetNameResultNameInvalid({
    this.extra,
    this.clientId,
  });
  
  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory CheckStickerSetNameResultNameInvalid.fromJson(Map<String, dynamic> json) => CheckStickerSetNameResultNameInvalid(
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  CheckStickerSetNameResultNameInvalid copyWith({
    dynamic extra,
    int? clientId,
  }) => CheckStickerSetNameResultNameInvalid(
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'checkStickerSetNameResultNameInvalid';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **CheckStickerSetNameResultNameOccupied** *(checkStickerSetNameResultNameOccupied)* - child of CheckStickerSetNameResult
///
/// The name is occupied.
final class CheckStickerSetNameResultNameOccupied extends CheckStickerSetNameResult {
  
  /// **CheckStickerSetNameResultNameOccupied** *(checkStickerSetNameResultNameOccupied)* - child of CheckStickerSetNameResult
  ///
  /// The name is occupied.
  const CheckStickerSetNameResultNameOccupied({
    this.extra,
    this.clientId,
  });
  
  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory CheckStickerSetNameResultNameOccupied.fromJson(Map<String, dynamic> json) => CheckStickerSetNameResultNameOccupied(
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  CheckStickerSetNameResultNameOccupied copyWith({
    dynamic extra,
    int? clientId,
  }) => CheckStickerSetNameResultNameOccupied(
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'checkStickerSetNameResultNameOccupied';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

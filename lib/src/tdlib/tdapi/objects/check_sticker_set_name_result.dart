part of '../tdapi.dart';

/// **CheckStickerSetNameResult** *(checkStickerSetNameResult)* - parent
  ///
  /// Represents result of checking whether a name can be used for a new sticker set.
class CheckStickerSetNameResult extends TdObject {
  
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
      case CheckStickerSetNameResultOk.constructor:
        return CheckStickerSetNameResultOk.fromJson(json);
      case CheckStickerSetNameResultNameInvalid.constructor:
        return CheckStickerSetNameResultNameInvalid.fromJson(json);
      case CheckStickerSetNameResultNameOccupied.constructor:
        return CheckStickerSetNameResultNameOccupied.fromJson(json);
      default:
        return const CheckStickerSetNameResult();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  CheckStickerSetNameResult copyWith() => const CheckStickerSetNameResult();

  static const String constructor = 'checkStickerSetNameResult';
  
  @override
  String getConstructor() => constructor;
}


/// **CheckStickerSetNameResultOk** *(checkStickerSetNameResultOk)* - child of CheckStickerSetNameResult
  ///
  /// The name can be set.
class CheckStickerSetNameResultOk extends CheckStickerSetNameResult {
  
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
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
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

  static const String constructor = 'checkStickerSetNameResultOk';
  
  @override
  String getConstructor() => constructor;
}


/// **CheckStickerSetNameResultNameInvalid** *(checkStickerSetNameResultNameInvalid)* - child of CheckStickerSetNameResult
  ///
  /// The name is invalid.
class CheckStickerSetNameResultNameInvalid extends CheckStickerSetNameResult {
  
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
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
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

  static const String constructor = 'checkStickerSetNameResultNameInvalid';
  
  @override
  String getConstructor() => constructor;
}


/// **CheckStickerSetNameResultNameOccupied** *(checkStickerSetNameResultNameOccupied)* - child of CheckStickerSetNameResult
  ///
  /// The name is occupied.
class CheckStickerSetNameResultNameOccupied extends CheckStickerSetNameResult {
  
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
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
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

  static const String constructor = 'checkStickerSetNameResultNameOccupied';
  
  @override
  String getConstructor() => constructor;
}

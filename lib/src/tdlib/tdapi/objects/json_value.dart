part of '../tdapi.dart';

/// **JsonValue** *(jsonValue)* - parent
  ///
  /// Represents a JSON value.
class JsonValue extends TdObject {
  
  /// **JsonValue** *(jsonValue)* - parent
  ///
  /// Represents a JSON value.
  const JsonValue();
  
  /// a JsonValue return type can be :
  /// * [JsonValueNull]
  /// * [JsonValueBoolean]
  /// * [JsonValueNumber]
  /// * [JsonValueString]
  /// * [JsonValueArray]
  /// * [JsonValueObject]
  factory JsonValue.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case JsonValueNull.constructor:
        return JsonValueNull.fromJson(json);
      case JsonValueBoolean.constructor:
        return JsonValueBoolean.fromJson(json);
      case JsonValueNumber.constructor:
        return JsonValueNumber.fromJson(json);
      case JsonValueString.constructor:
        return JsonValueString.fromJson(json);
      case JsonValueArray.constructor:
        return JsonValueArray.fromJson(json);
      case JsonValueObject.constructor:
        return JsonValueObject.fromJson(json);
      default:
        return const JsonValue();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  JsonValue copyWith() => const JsonValue();

  static const String constructor = 'jsonValue';
  
  @override
  String getConstructor() => constructor;
}


/// **JsonValueNull** *(jsonValueNull)* - child of JsonValue
  ///
  /// Represents a null JSON value.
class JsonValueNull extends JsonValue {
  
  /// **JsonValueNull** *(jsonValueNull)* - child of JsonValue
  ///
  /// Represents a null JSON value.
  const JsonValueNull({
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
  factory JsonValueNull.fromJson(Map<String, dynamic> json) => JsonValueNull(
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
  JsonValueNull copyWith({
    dynamic extra,
    int? clientId,
  }) => JsonValueNull(
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String constructor = 'jsonValueNull';
  
  @override
  String getConstructor() => constructor;
}


/// **JsonValueBoolean** *(jsonValueBoolean)* - child of JsonValue
  ///
  /// Represents a boolean JSON value.
  ///
  /// * [value]: The value.
class JsonValueBoolean extends JsonValue {
  
  /// **JsonValueBoolean** *(jsonValueBoolean)* - child of JsonValue
  ///
  /// Represents a boolean JSON value.
  ///
  /// * [value]: The value.
  const JsonValueBoolean({
    required this.value,
    this.extra,
    this.clientId,
  });
  
  /// The value
  final bool value;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory JsonValueBoolean.fromJson(Map<String, dynamic> json) => JsonValueBoolean(
    value: json['value'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "value": value,
    };
  }
  
  @override
  JsonValueBoolean copyWith({
    bool? value,
    dynamic extra,
    int? clientId,
  }) => JsonValueBoolean(
    value: value ?? this.value,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String constructor = 'jsonValueBoolean';
  
  @override
  String getConstructor() => constructor;
}


/// **JsonValueNumber** *(jsonValueNumber)* - child of JsonValue
  ///
  /// Represents a numeric JSON value.
  ///
  /// * [value]: The value.
class JsonValueNumber extends JsonValue {
  
  /// **JsonValueNumber** *(jsonValueNumber)* - child of JsonValue
  ///
  /// Represents a numeric JSON value.
  ///
  /// * [value]: The value.
  const JsonValueNumber({
    required this.value,
    this.extra,
    this.clientId,
  });
  
  /// The value
  final double value;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory JsonValueNumber.fromJson(Map<String, dynamic> json) => JsonValueNumber(
    value: json['value'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "value": value,
    };
  }
  
  @override
  JsonValueNumber copyWith({
    double? value,
    dynamic extra,
    int? clientId,
  }) => JsonValueNumber(
    value: value ?? this.value,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String constructor = 'jsonValueNumber';
  
  @override
  String getConstructor() => constructor;
}


/// **JsonValueString** *(jsonValueString)* - child of JsonValue
  ///
  /// Represents a string JSON value.
  ///
  /// * [value]: The value.
class JsonValueString extends JsonValue {
  
  /// **JsonValueString** *(jsonValueString)* - child of JsonValue
  ///
  /// Represents a string JSON value.
  ///
  /// * [value]: The value.
  const JsonValueString({
    required this.value,
    this.extra,
    this.clientId,
  });
  
  /// The value
  final String value;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory JsonValueString.fromJson(Map<String, dynamic> json) => JsonValueString(
    value: json['value'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "value": value,
    };
  }
  
  @override
  JsonValueString copyWith({
    String? value,
    dynamic extra,
    int? clientId,
  }) => JsonValueString(
    value: value ?? this.value,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String constructor = 'jsonValueString';
  
  @override
  String getConstructor() => constructor;
}


/// **JsonValueArray** *(jsonValueArray)* - child of JsonValue
  ///
  /// Represents a JSON array.
  ///
  /// * [values]: The list of array elements.
class JsonValueArray extends JsonValue {
  
  /// **JsonValueArray** *(jsonValueArray)* - child of JsonValue
  ///
  /// Represents a JSON array.
  ///
  /// * [values]: The list of array elements.
  const JsonValueArray({
    required this.values,
    this.extra,
    this.clientId,
  });
  
  /// The list of array elements
  final List<JsonValue> values;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory JsonValueArray.fromJson(Map<String, dynamic> json) => JsonValueArray(
    values: List<JsonValue>.from((json['values'] ?? []).map((item) => JsonValue.fromJson(item)).toList()),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "values": values.map((i) => i.toJson()).toList(),
    };
  }
  
  @override
  JsonValueArray copyWith({
    List<JsonValue>? values,
    dynamic extra,
    int? clientId,
  }) => JsonValueArray(
    values: values ?? this.values,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String constructor = 'jsonValueArray';
  
  @override
  String getConstructor() => constructor;
}


/// **JsonValueObject** *(jsonValueObject)* - child of JsonValue
  ///
  /// Represents a JSON object.
  ///
  /// * [members]: The list of object members.
class JsonValueObject extends JsonValue {
  
  /// **JsonValueObject** *(jsonValueObject)* - child of JsonValue
  ///
  /// Represents a JSON object.
  ///
  /// * [members]: The list of object members.
  const JsonValueObject({
    required this.members,
    this.extra,
    this.clientId,
  });
  
  /// The list of object members
  final List<JsonObjectMember> members;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory JsonValueObject.fromJson(Map<String, dynamic> json) => JsonValueObject(
    members: List<JsonObjectMember>.from((json['members'] ?? []).map((item) => JsonObjectMember.fromJson(item)).toList()),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "members": members.map((i) => i.toJson()).toList(),
    };
  }
  
  @override
  JsonValueObject copyWith({
    List<JsonObjectMember>? members,
    dynamic extra,
    int? clientId,
  }) => JsonValueObject(
    members: members ?? this.members,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String constructor = 'jsonValueObject';
  
  @override
  String getConstructor() => constructor;
}

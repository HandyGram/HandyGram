part of '../tdapi.dart';

/// **OptionValue** *(optionValue)* - parent
  ///
  /// Represents the value of an option.
class OptionValue extends TdObject {
  
  /// **OptionValue** *(optionValue)* - parent
  ///
  /// Represents the value of an option.
  const OptionValue();
  
  /// a OptionValue return type can be :
  /// * [OptionValueBoolean]
  /// * [OptionValueEmpty]
  /// * [OptionValueInteger]
  /// * [OptionValueString]
  factory OptionValue.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case OptionValueBoolean.constructor:
        return OptionValueBoolean.fromJson(json);
      case OptionValueEmpty.constructor:
        return OptionValueEmpty.fromJson(json);
      case OptionValueInteger.constructor:
        return OptionValueInteger.fromJson(json);
      case OptionValueString.constructor:
        return OptionValueString.fromJson(json);
      default:
        return const OptionValue();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  OptionValue copyWith() => const OptionValue();

  static const String constructor = 'optionValue';
  
  @override
  String getConstructor() => constructor;
}


/// **OptionValueBoolean** *(optionValueBoolean)* - child of OptionValue
  ///
  /// Represents a boolean option.
  ///
  /// * [value]: The value of the option.
class OptionValueBoolean extends OptionValue {
  
  /// **OptionValueBoolean** *(optionValueBoolean)* - child of OptionValue
  ///
  /// Represents a boolean option.
  ///
  /// * [value]: The value of the option.
  const OptionValueBoolean({
    required this.value,
    this.extra,
    this.clientId,
  });
  
  /// The value of the option
  final bool value;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory OptionValueBoolean.fromJson(Map<String, dynamic> json) => OptionValueBoolean(
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
  OptionValueBoolean copyWith({
    bool? value,
    dynamic extra,
    int? clientId,
  }) => OptionValueBoolean(
    value: value ?? this.value,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String constructor = 'optionValueBoolean';
  
  @override
  String getConstructor() => constructor;
}


/// **OptionValueEmpty** *(optionValueEmpty)* - child of OptionValue
  ///
  /// Represents an unknown option or an option which has a default value.
class OptionValueEmpty extends OptionValue {
  
  /// **OptionValueEmpty** *(optionValueEmpty)* - child of OptionValue
  ///
  /// Represents an unknown option or an option which has a default value.
  const OptionValueEmpty({
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
  factory OptionValueEmpty.fromJson(Map<String, dynamic> json) => OptionValueEmpty(
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
  OptionValueEmpty copyWith({
    dynamic extra,
    int? clientId,
  }) => OptionValueEmpty(
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String constructor = 'optionValueEmpty';
  
  @override
  String getConstructor() => constructor;
}


/// **OptionValueInteger** *(optionValueInteger)* - child of OptionValue
  ///
  /// Represents an integer option.
  ///
  /// * [value]: The value of the option.
class OptionValueInteger extends OptionValue {
  
  /// **OptionValueInteger** *(optionValueInteger)* - child of OptionValue
  ///
  /// Represents an integer option.
  ///
  /// * [value]: The value of the option.
  const OptionValueInteger({
    required this.value,
    this.extra,
    this.clientId,
  });
  
  /// The value of the option
  final int value;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory OptionValueInteger.fromJson(Map<String, dynamic> json) => OptionValueInteger(
    value: int.parse(json['value']),
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
  OptionValueInteger copyWith({
    int? value,
    dynamic extra,
    int? clientId,
  }) => OptionValueInteger(
    value: value ?? this.value,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String constructor = 'optionValueInteger';
  
  @override
  String getConstructor() => constructor;
}


/// **OptionValueString** *(optionValueString)* - child of OptionValue
  ///
  /// Represents a string option.
  ///
  /// * [value]: The value of the option.
class OptionValueString extends OptionValue {
  
  /// **OptionValueString** *(optionValueString)* - child of OptionValue
  ///
  /// Represents a string option.
  ///
  /// * [value]: The value of the option.
  const OptionValueString({
    required this.value,
    this.extra,
    this.clientId,
  });
  
  /// The value of the option
  final String value;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory OptionValueString.fromJson(Map<String, dynamic> json) => OptionValueString(
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
  OptionValueString copyWith({
    String? value,
    dynamic extra,
    int? clientId,
  }) => OptionValueString(
    value: value ?? this.value,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String constructor = 'optionValueString';
  
  @override
  String getConstructor() => constructor;
}

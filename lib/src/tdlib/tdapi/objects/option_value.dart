part of '../tdapi.dart';

/// **OptionValue** *(optionValue)* - parent
///
/// Represents the value of an option.
sealed class OptionValue extends TdObject {
  
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
      case OptionValueBoolean.objectType:
        return OptionValueBoolean.fromJson(json);
      case OptionValueEmpty.objectType:
        return OptionValueEmpty.fromJson(json);
      case OptionValueInteger.objectType:
        return OptionValueInteger.fromJson(json);
      case OptionValueString.objectType:
        return OptionValueString.fromJson(json);
      default:
        throw FormatException(
          "Unknown object ${json["@type"]} (expected child of OptionValue)",
          json,
        );
    }
  }
  
  @override
  Map<String, dynamic> toJson();

  
  OptionValue copyWith();

  static const String objectType = 'optionValue';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **OptionValueBoolean** *(optionValueBoolean)* - child of OptionValue
///
/// Represents a boolean option.
///
/// * [value]: The value of the option.
final class OptionValueBoolean extends OptionValue {
  
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
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
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

  static const String objectType = 'optionValueBoolean';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **OptionValueEmpty** *(optionValueEmpty)* - child of OptionValue
///
/// Represents an unknown option or an option which has a default value.
final class OptionValueEmpty extends OptionValue {
  
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
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
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

  static const String objectType = 'optionValueEmpty';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **OptionValueInteger** *(optionValueInteger)* - child of OptionValue
///
/// Represents an integer option.
///
/// * [value]: The value of the option.
final class OptionValueInteger extends OptionValue {
  
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
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
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

  static const String objectType = 'optionValueInteger';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **OptionValueString** *(optionValueString)* - child of OptionValue
///
/// Represents a string option.
///
/// * [value]: The value of the option.
final class OptionValueString extends OptionValue {
  
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
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
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

  static const String objectType = 'optionValueString';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

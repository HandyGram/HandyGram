part of '../tdapi.dart';

/// **KeyboardButtonType** *(keyboardButtonType)* - parent
///
/// Describes a keyboard button type.
sealed class KeyboardButtonType extends TdObject {
  
  /// **KeyboardButtonType** *(keyboardButtonType)* - parent
  ///
  /// Describes a keyboard button type.
  const KeyboardButtonType();
  
  /// a KeyboardButtonType return type can be :
  /// * [KeyboardButtonTypeText]
  /// * [KeyboardButtonTypeRequestPhoneNumber]
  /// * [KeyboardButtonTypeRequestLocation]
  /// * [KeyboardButtonTypeRequestPoll]
  /// * [KeyboardButtonTypeWebApp]
  factory KeyboardButtonType.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case KeyboardButtonTypeText.objectType:
        return KeyboardButtonTypeText.fromJson(json);
      case KeyboardButtonTypeRequestPhoneNumber.objectType:
        return KeyboardButtonTypeRequestPhoneNumber.fromJson(json);
      case KeyboardButtonTypeRequestLocation.objectType:
        return KeyboardButtonTypeRequestLocation.fromJson(json);
      case KeyboardButtonTypeRequestPoll.objectType:
        return KeyboardButtonTypeRequestPoll.fromJson(json);
      case KeyboardButtonTypeWebApp.objectType:
        return KeyboardButtonTypeWebApp.fromJson(json);
      default:
        throw FormatException(
          "Unknown object ${json["@type"]} (expected child of KeyboardButtonType)",
          json,
        );
    }
  }
  
  @override
  Map<String, dynamic> toJson();

  
  KeyboardButtonType copyWith();

  static const String objectType = 'keyboardButtonType';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **KeyboardButtonTypeText** *(keyboardButtonTypeText)* - child of KeyboardButtonType
///
/// A simple button, with text that must be sent when the button is pressed.
final class KeyboardButtonTypeText extends KeyboardButtonType {
  
  /// **KeyboardButtonTypeText** *(keyboardButtonTypeText)* - child of KeyboardButtonType
  ///
  /// A simple button, with text that must be sent when the button is pressed.
  const KeyboardButtonTypeText();
  
  /// Parse from a json
  factory KeyboardButtonTypeText.fromJson(Map<String, dynamic> json) => const KeyboardButtonTypeText();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  KeyboardButtonTypeText copyWith() => const KeyboardButtonTypeText();

  static const String objectType = 'keyboardButtonTypeText';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **KeyboardButtonTypeRequestPhoneNumber** *(keyboardButtonTypeRequestPhoneNumber)* - child of KeyboardButtonType
///
/// A button that sends the user's phone number when pressed; available only in private chats.
final class KeyboardButtonTypeRequestPhoneNumber extends KeyboardButtonType {
  
  /// **KeyboardButtonTypeRequestPhoneNumber** *(keyboardButtonTypeRequestPhoneNumber)* - child of KeyboardButtonType
  ///
  /// A button that sends the user's phone number when pressed; available only in private chats.
  const KeyboardButtonTypeRequestPhoneNumber();
  
  /// Parse from a json
  factory KeyboardButtonTypeRequestPhoneNumber.fromJson(Map<String, dynamic> json) => const KeyboardButtonTypeRequestPhoneNumber();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  KeyboardButtonTypeRequestPhoneNumber copyWith() => const KeyboardButtonTypeRequestPhoneNumber();

  static const String objectType = 'keyboardButtonTypeRequestPhoneNumber';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **KeyboardButtonTypeRequestLocation** *(keyboardButtonTypeRequestLocation)* - child of KeyboardButtonType
///
/// A button that sends the user's location when pressed; available only in private chats.
final class KeyboardButtonTypeRequestLocation extends KeyboardButtonType {
  
  /// **KeyboardButtonTypeRequestLocation** *(keyboardButtonTypeRequestLocation)* - child of KeyboardButtonType
  ///
  /// A button that sends the user's location when pressed; available only in private chats.
  const KeyboardButtonTypeRequestLocation();
  
  /// Parse from a json
  factory KeyboardButtonTypeRequestLocation.fromJson(Map<String, dynamic> json) => const KeyboardButtonTypeRequestLocation();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  KeyboardButtonTypeRequestLocation copyWith() => const KeyboardButtonTypeRequestLocation();

  static const String objectType = 'keyboardButtonTypeRequestLocation';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **KeyboardButtonTypeRequestPoll** *(keyboardButtonTypeRequestPoll)* - child of KeyboardButtonType
///
/// A button that allows the user to create and send a poll when pressed; available only in private chats.
///
/// * [forceRegular]: If true, only regular polls must be allowed to create.
/// * [forceQuiz]: If true, only polls in quiz mode must be allowed to create.
final class KeyboardButtonTypeRequestPoll extends KeyboardButtonType {
  
  /// **KeyboardButtonTypeRequestPoll** *(keyboardButtonTypeRequestPoll)* - child of KeyboardButtonType
  ///
  /// A button that allows the user to create and send a poll when pressed; available only in private chats.
  ///
  /// * [forceRegular]: If true, only regular polls must be allowed to create.
  /// * [forceQuiz]: If true, only polls in quiz mode must be allowed to create.
  const KeyboardButtonTypeRequestPoll({
    required this.forceRegular,
    required this.forceQuiz,
  });
  
  /// If true, only regular polls must be allowed to create 
  final bool forceRegular;

  /// If true, only polls in quiz mode must be allowed to create
  final bool forceQuiz;
  
  /// Parse from a json
  factory KeyboardButtonTypeRequestPoll.fromJson(Map<String, dynamic> json) => KeyboardButtonTypeRequestPoll(
    forceRegular: json['force_regular'],
    forceQuiz: json['force_quiz'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "force_regular": forceRegular,
      "force_quiz": forceQuiz,
		};
	}

  
  @override
  KeyboardButtonTypeRequestPoll copyWith({
    bool? forceRegular,
    bool? forceQuiz,
  }) => KeyboardButtonTypeRequestPoll(
    forceRegular: forceRegular ?? this.forceRegular,
    forceQuiz: forceQuiz ?? this.forceQuiz,
  );

  static const String objectType = 'keyboardButtonTypeRequestPoll';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **KeyboardButtonTypeWebApp** *(keyboardButtonTypeWebApp)* - child of KeyboardButtonType
///
/// A button that opens a Web App by calling getWebAppUrl.
///
/// * [url]: An HTTP URL to pass to getWebAppUrl.
final class KeyboardButtonTypeWebApp extends KeyboardButtonType {
  
  /// **KeyboardButtonTypeWebApp** *(keyboardButtonTypeWebApp)* - child of KeyboardButtonType
  ///
  /// A button that opens a Web App by calling getWebAppUrl.
  ///
  /// * [url]: An HTTP URL to pass to getWebAppUrl.
  const KeyboardButtonTypeWebApp({
    required this.url,
  });
  
  /// An HTTP URL to pass to getWebAppUrl
  final String url;
  
  /// Parse from a json
  factory KeyboardButtonTypeWebApp.fromJson(Map<String, dynamic> json) => KeyboardButtonTypeWebApp(
    url: json['url'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "url": url,
		};
	}

  
  @override
  KeyboardButtonTypeWebApp copyWith({
    String? url,
  }) => KeyboardButtonTypeWebApp(
    url: url ?? this.url,
  );

  static const String objectType = 'keyboardButtonTypeWebApp';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

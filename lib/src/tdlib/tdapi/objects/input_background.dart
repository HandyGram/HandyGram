part of '../tdapi.dart';

/// **InputBackground** *(inputBackground)* - parent
///
/// Contains information about background to set.
sealed class InputBackground extends TdObject {
  
  /// **InputBackground** *(inputBackground)* - parent
  ///
  /// Contains information about background to set.
  const InputBackground();
  
  /// a InputBackground return type can be :
  /// * [InputBackgroundLocal]
  /// * [InputBackgroundRemote]
  factory InputBackground.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case InputBackgroundLocal.objectType:
        return InputBackgroundLocal.fromJson(json);
      case InputBackgroundRemote.objectType:
        return InputBackgroundRemote.fromJson(json);
      default:
        throw FormatException(
          "Unknown object ${json["@type"]} (expected child of InputBackground)",
          json,
        );
    }
  }
  
  @override
  Map<String, dynamic> toJson();

  
  InputBackground copyWith();

  static const String objectType = 'inputBackground';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **InputBackgroundLocal** *(inputBackgroundLocal)* - child of InputBackground
///
/// A background from a local file.
///
/// * [background]: Background file to use. Only inputFileLocal and inputFileGenerated are supported. The file must be in JPEG format for wallpapers and in PNG format for patterns.
final class InputBackgroundLocal extends InputBackground {
  
  /// **InputBackgroundLocal** *(inputBackgroundLocal)* - child of InputBackground
  ///
  /// A background from a local file.
  ///
  /// * [background]: Background file to use. Only inputFileLocal and inputFileGenerated are supported. The file must be in JPEG format for wallpapers and in PNG format for patterns.
  const InputBackgroundLocal({
    required this.background,
  });
  
  /// Background file to use. Only inputFileLocal and inputFileGenerated are supported. The file must be in JPEG format for wallpapers and in PNG format for patterns
  final InputFile background;
  
  /// Parse from a json
  factory InputBackgroundLocal.fromJson(Map<String, dynamic> json) => InputBackgroundLocal(
    background: InputFile.fromJson(json['background']),
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "background": background.toJson(),
		};
	}

  
  @override
  InputBackgroundLocal copyWith({
    InputFile? background,
  }) => InputBackgroundLocal(
    background: background ?? this.background,
  );

  static const String objectType = 'inputBackgroundLocal';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **InputBackgroundRemote** *(inputBackgroundRemote)* - child of InputBackground
///
/// A background from the server.
///
/// * [backgroundId]: The background identifier.
final class InputBackgroundRemote extends InputBackground {
  
  /// **InputBackgroundRemote** *(inputBackgroundRemote)* - child of InputBackground
  ///
  /// A background from the server.
  ///
  /// * [backgroundId]: The background identifier.
  const InputBackgroundRemote({
    required this.backgroundId,
  });
  
  /// The background identifier
  final int backgroundId;
  
  /// Parse from a json
  factory InputBackgroundRemote.fromJson(Map<String, dynamic> json) => InputBackgroundRemote(
    backgroundId: int.parse(json['background_id']),
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "background_id": backgroundId,
		};
	}

  
  @override
  InputBackgroundRemote copyWith({
    int? backgroundId,
  }) => InputBackgroundRemote(
    backgroundId: backgroundId ?? this.backgroundId,
  );

  static const String objectType = 'inputBackgroundRemote';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

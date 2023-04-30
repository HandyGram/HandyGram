part of '../tdapi.dart';

/// **InputBackground** *(inputBackground)* - parent
  ///
  /// Contains information about background to set.
class InputBackground extends TdObject {
  
  /// **InputBackground** *(inputBackground)* - parent
  ///
  /// Contains information about background to set.
  const InputBackground();
  
  /// a InputBackground return type can be :
  /// * [InputBackgroundLocal]
  /// * [InputBackgroundRemote]
  factory InputBackground.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case InputBackgroundLocal.constructor:
        return InputBackgroundLocal.fromJson(json);
      case InputBackgroundRemote.constructor:
        return InputBackgroundRemote.fromJson(json);
      default:
        return const InputBackground();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  InputBackground copyWith() => const InputBackground();

  static const String constructor = 'inputBackground';
  
  @override
  String getConstructor() => constructor;
}


/// **InputBackgroundLocal** *(inputBackgroundLocal)* - child of InputBackground
  ///
  /// A background from a local file.
  ///
  /// * [background]: Background file to use. Only inputFileLocal and inputFileGenerated are supported. The file must be in JPEG format for wallpapers and in PNG format for patterns.
class InputBackgroundLocal extends InputBackground {
  
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
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "background": background.toJson(),
    };
  }
  
  @override
  InputBackgroundLocal copyWith({
    InputFile? background,
  }) => InputBackgroundLocal(
    background: background ?? this.background,
  );

  static const String constructor = 'inputBackgroundLocal';
  
  @override
  String getConstructor() => constructor;
}


/// **InputBackgroundRemote** *(inputBackgroundRemote)* - child of InputBackground
  ///
  /// A background from the server.
  ///
  /// * [backgroundId]: The background identifier.
class InputBackgroundRemote extends InputBackground {
  
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
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "background_id": backgroundId,
    };
  }
  
  @override
  InputBackgroundRemote copyWith({
    int? backgroundId,
  }) => InputBackgroundRemote(
    backgroundId: backgroundId ?? this.backgroundId,
  );

  static const String constructor = 'inputBackgroundRemote';
  
  @override
  String getConstructor() => constructor;
}

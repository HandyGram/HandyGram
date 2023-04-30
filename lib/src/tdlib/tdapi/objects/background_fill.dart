part of '../tdapi.dart';

/// **BackgroundFill** *(backgroundFill)* - parent
  ///
  /// Describes a fill of a background.
class BackgroundFill extends TdObject {
  
  /// **BackgroundFill** *(backgroundFill)* - parent
  ///
  /// Describes a fill of a background.
  const BackgroundFill();
  
  /// a BackgroundFill return type can be :
  /// * [BackgroundFillSolid]
  /// * [BackgroundFillGradient]
  /// * [BackgroundFillFreeformGradient]
  factory BackgroundFill.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case BackgroundFillSolid.constructor:
        return BackgroundFillSolid.fromJson(json);
      case BackgroundFillGradient.constructor:
        return BackgroundFillGradient.fromJson(json);
      case BackgroundFillFreeformGradient.constructor:
        return BackgroundFillFreeformGradient.fromJson(json);
      default:
        return const BackgroundFill();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  BackgroundFill copyWith() => const BackgroundFill();

  static const String constructor = 'backgroundFill';
  
  @override
  String getConstructor() => constructor;
}


/// **BackgroundFillSolid** *(backgroundFillSolid)* - child of BackgroundFill
  ///
  /// Describes a solid fill of a background.
  ///
  /// * [color]: A color of the background in the RGB24 format.
class BackgroundFillSolid extends BackgroundFill {
  
  /// **BackgroundFillSolid** *(backgroundFillSolid)* - child of BackgroundFill
  ///
  /// Describes a solid fill of a background.
  ///
  /// * [color]: A color of the background in the RGB24 format.
  const BackgroundFillSolid({
    required this.color,
  });
  
  /// A color of the background in the RGB24 format
  final int color;
  
  /// Parse from a json
  factory BackgroundFillSolid.fromJson(Map<String, dynamic> json) => BackgroundFillSolid(
    color: json['color'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "color": color,
    };
  }
  
  @override
  BackgroundFillSolid copyWith({
    int? color,
  }) => BackgroundFillSolid(
    color: color ?? this.color,
  );

  static const String constructor = 'backgroundFillSolid';
  
  @override
  String getConstructor() => constructor;
}


/// **BackgroundFillGradient** *(backgroundFillGradient)* - child of BackgroundFill
  ///
  /// Describes a gradient fill of a background.
  ///
  /// * [topColor]: A top color of the background in the RGB24 format.
  /// * [bottomColor]: A bottom color of the background in the RGB24 format.
  /// * [rotationAngle]: Clockwise rotation angle of the gradient, in degrees; 0-359. Must always be divisible by 45.
class BackgroundFillGradient extends BackgroundFill {
  
  /// **BackgroundFillGradient** *(backgroundFillGradient)* - child of BackgroundFill
  ///
  /// Describes a gradient fill of a background.
  ///
  /// * [topColor]: A top color of the background in the RGB24 format.
  /// * [bottomColor]: A bottom color of the background in the RGB24 format.
  /// * [rotationAngle]: Clockwise rotation angle of the gradient, in degrees; 0-359. Must always be divisible by 45.
  const BackgroundFillGradient({
    required this.topColor,
    required this.bottomColor,
    required this.rotationAngle,
  });
  
  /// A top color of the background in the RGB24 format
  final int topColor;

  /// A bottom color of the background in the RGB24 format
  final int bottomColor;

  /// Clockwise rotation angle of the gradient, in degrees; 0-359. Must always be divisible by 45
  final int rotationAngle;
  
  /// Parse from a json
  factory BackgroundFillGradient.fromJson(Map<String, dynamic> json) => BackgroundFillGradient(
    topColor: json['top_color'],
    bottomColor: json['bottom_color'],
    rotationAngle: json['rotation_angle'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "top_color": topColor,
      "bottom_color": bottomColor,
      "rotation_angle": rotationAngle,
    };
  }
  
  @override
  BackgroundFillGradient copyWith({
    int? topColor,
    int? bottomColor,
    int? rotationAngle,
  }) => BackgroundFillGradient(
    topColor: topColor ?? this.topColor,
    bottomColor: bottomColor ?? this.bottomColor,
    rotationAngle: rotationAngle ?? this.rotationAngle,
  );

  static const String constructor = 'backgroundFillGradient';
  
  @override
  String getConstructor() => constructor;
}


/// **BackgroundFillFreeformGradient** *(backgroundFillFreeformGradient)* - child of BackgroundFill
  ///
  /// Describes a freeform gradient fill of a background.
  ///
  /// * [colors]: A list of 3 or 4 colors of the freeform gradients in the RGB24 format.
class BackgroundFillFreeformGradient extends BackgroundFill {
  
  /// **BackgroundFillFreeformGradient** *(backgroundFillFreeformGradient)* - child of BackgroundFill
  ///
  /// Describes a freeform gradient fill of a background.
  ///
  /// * [colors]: A list of 3 or 4 colors of the freeform gradients in the RGB24 format.
  const BackgroundFillFreeformGradient({
    required this.colors,
  });
  
  /// A list of 3 or 4 colors of the freeform gradients in the RGB24 format
  final List<int> colors;
  
  /// Parse from a json
  factory BackgroundFillFreeformGradient.fromJson(Map<String, dynamic> json) => BackgroundFillFreeformGradient(
    colors: List<int>.from((json['colors'] ?? []).map((item) => item).toList()),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "colors": colors.map((i) => i).toList(),
    };
  }
  
  @override
  BackgroundFillFreeformGradient copyWith({
    List<int>? colors,
  }) => BackgroundFillFreeformGradient(
    colors: colors ?? this.colors,
  );

  static const String constructor = 'backgroundFillFreeformGradient';
  
  @override
  String getConstructor() => constructor;
}

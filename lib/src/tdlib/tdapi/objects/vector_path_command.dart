part of '../tdapi.dart';

/// **VectorPathCommand** *(vectorPathCommand)* - parent
  ///
  /// Represents a vector path command.
class VectorPathCommand extends TdObject {
  
  /// **VectorPathCommand** *(vectorPathCommand)* - parent
  ///
  /// Represents a vector path command.
  const VectorPathCommand();
  
  /// a VectorPathCommand return type can be :
  /// * [VectorPathCommandLine]
  /// * [VectorPathCommandCubicBezierCurve]
  factory VectorPathCommand.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case VectorPathCommandLine.constructor:
        return VectorPathCommandLine.fromJson(json);
      case VectorPathCommandCubicBezierCurve.constructor:
        return VectorPathCommandCubicBezierCurve.fromJson(json);
      default:
        return const VectorPathCommand();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  VectorPathCommand copyWith() => const VectorPathCommand();

  static const String constructor = 'vectorPathCommand';
  
  @override
  String getConstructor() => constructor;
}


/// **VectorPathCommandLine** *(vectorPathCommandLine)* - child of VectorPathCommand
  ///
  /// A straight line to a given point.
  ///
  /// * [endPoint]: The end point of the straight line.
class VectorPathCommandLine extends VectorPathCommand {
  
  /// **VectorPathCommandLine** *(vectorPathCommandLine)* - child of VectorPathCommand
  ///
  /// A straight line to a given point.
  ///
  /// * [endPoint]: The end point of the straight line.
  const VectorPathCommandLine({
    required this.endPoint,
  });
  
  /// The end point of the straight line
  final Point endPoint;
  
  /// Parse from a json
  factory VectorPathCommandLine.fromJson(Map<String, dynamic> json) => VectorPathCommandLine(
    endPoint: Point.fromJson(json['end_point']),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "end_point": endPoint.toJson(),
    };
  }
  
  @override
  VectorPathCommandLine copyWith({
    Point? endPoint,
  }) => VectorPathCommandLine(
    endPoint: endPoint ?? this.endPoint,
  );

  static const String constructor = 'vectorPathCommandLine';
  
  @override
  String getConstructor() => constructor;
}


/// **VectorPathCommandCubicBezierCurve** *(vectorPathCommandCubicBezierCurve)* - child of VectorPathCommand
  ///
  /// A cubic B.
class VectorPathCommandCubicBezierCurve extends VectorPathCommand {
  
  /// **VectorPathCommandCubicBezierCurve** *(vectorPathCommandCubicBezierCurve)* - child of VectorPathCommand
  ///
  /// A cubic B.
  const VectorPathCommandCubicBezierCurve();
  
  /// Parse from a json
  factory VectorPathCommandCubicBezierCurve.fromJson(Map<String, dynamic> json) => const VectorPathCommandCubicBezierCurve();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  VectorPathCommandCubicBezierCurve copyWith() => const VectorPathCommandCubicBezierCurve();

  static const String constructor = 'vectorPathCommandCubicBezierCurve';
  
  @override
  String getConstructor() => constructor;
}

part of '../tdapi.dart';

/// **VectorPathCommand** *(vectorPathCommand)* - parent
///
/// Represents a vector path command.
sealed class VectorPathCommand extends TdObject {
  
  /// **VectorPathCommand** *(vectorPathCommand)* - parent
  ///
  /// Represents a vector path command.
  const VectorPathCommand();
  
  /// a VectorPathCommand return type can be :
  /// * [VectorPathCommandLine]
  /// * [VectorPathCommandCubicBezierCurve]
  factory VectorPathCommand.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case VectorPathCommandLine.objectType:
        return VectorPathCommandLine.fromJson(json);
      case VectorPathCommandCubicBezierCurve.objectType:
        return VectorPathCommandCubicBezierCurve.fromJson(json);
      default:
        throw FormatException(
          "Unknown object ${json["@type"]} (expected child of VectorPathCommand)",
          json,
        );
    }
  }
  
  @override
  Map<String, dynamic> toJson();

  
  VectorPathCommand copyWith();

  static const String objectType = 'vectorPathCommand';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **VectorPathCommandLine** *(vectorPathCommandLine)* - child of VectorPathCommand
///
/// A straight line to a given point.
///
/// * [endPoint]: The end point of the straight line.
final class VectorPathCommandLine extends VectorPathCommand {
  
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
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "end_point": endPoint.toJson(),
		};
	}

  
  @override
  VectorPathCommandLine copyWith({
    Point? endPoint,
  }) => VectorPathCommandLine(
    endPoint: endPoint ?? this.endPoint,
  );

  static const String objectType = 'vectorPathCommandLine';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **VectorPathCommandCubicBezierCurve** *(vectorPathCommandCubicBezierCurve)* - child of VectorPathCommand
///
/// A cubic B.
final class VectorPathCommandCubicBezierCurve extends VectorPathCommand {
  
  /// **VectorPathCommandCubicBezierCurve** *(vectorPathCommandCubicBezierCurve)* - child of VectorPathCommand
  ///
  /// A cubic B.
  const VectorPathCommandCubicBezierCurve();
  
  /// Parse from a json
  factory VectorPathCommandCubicBezierCurve.fromJson(Map<String, dynamic> json) => const VectorPathCommandCubicBezierCurve();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  VectorPathCommandCubicBezierCurve copyWith() => const VectorPathCommandCubicBezierCurve();

  static const String objectType = 'vectorPathCommandCubicBezierCurve';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

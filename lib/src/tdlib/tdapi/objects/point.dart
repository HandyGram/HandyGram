part of '../tdapi.dart';

/// **Point** *(point)* - basic class
  ///
  /// A point on a Cartesian plane.
  ///
  /// * [x]: The point's first coordinate.
  /// * [y]: The point's second coordinate.
class Point extends TdObject {
  
  /// **Point** *(point)* - basic class
  ///
  /// A point on a Cartesian plane.
  ///
  /// * [x]: The point's first coordinate.
  /// * [y]: The point's second coordinate.
  const Point({
    required this.x,
    required this.y,
  });
  
  /// The point's first coordinate 
  final double x;

  /// The point's second coordinate
  final double y;
  
  /// Parse from a json
  factory Point.fromJson(Map<String, dynamic> json) => Point(
    x: json['x'],
    y: json['y'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "x": x,
      "y": y,
    };
  }
  
  Point copyWith({
    double? x,
    double? y,
  }) => Point(
    x: x ?? this.x,
    y: y ?? this.y,
  );

  static const String constructor = 'point';
  
  @override
  String getConstructor() => constructor;
}

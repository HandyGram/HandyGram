part of '../tdapi.dart';

/// **ClosedVectorPath** *(closedVectorPath)* - basic class
///
/// Represents a closed vector path. The path begins at the end point of the last command.
///
/// * [commands]: List of vector path commands.
final class ClosedVectorPath extends TdObject {
  
  /// **ClosedVectorPath** *(closedVectorPath)* - basic class
  ///
  /// Represents a closed vector path. The path begins at the end point of the last command.
  ///
  /// * [commands]: List of vector path commands.
  const ClosedVectorPath({
    required this.commands,
  });
  
  /// List of vector path commands
  final List<VectorPathCommand> commands;
  
  /// Parse from a json
  factory ClosedVectorPath.fromJson(Map<String, dynamic> json) => ClosedVectorPath(
    commands: List<VectorPathCommand>.from((json['commands'] ?? []).map((item) => VectorPathCommand.fromJson(item)).toList()),
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "commands": commands.map((i) => i.toJson()).toList(),
		};
	}

  
  ClosedVectorPath copyWith({
    List<VectorPathCommand>? commands,
  }) => ClosedVectorPath(
    commands: commands ?? this.commands,
  );

  static const String objectType = 'closedVectorPath';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

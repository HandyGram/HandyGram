part of '../tdapi.dart';

/// **SearchBackground** *(searchBackground)* - TDLib function
///
/// Searches for a background by its name.
///
/// * [name]: The name of the background.
///
/// [Background] is returned on completion.
final class SearchBackground extends TdFunction {
  
  /// **SearchBackground** *(searchBackground)* - TDLib function
  ///
  /// Searches for a background by its name.
  ///
  /// * [name]: The name of the background.
  ///
  /// [Background] is returned on completion.
  const SearchBackground({
    required this.name,
  });
  
  /// The name of the background
  final String name;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "name": name,
      "@extra": extra,
		};
	}

  
  SearchBackground copyWith({
    String? name,
  }) => SearchBackground(
    name: name ?? this.name,
  );

  static const String objectType = 'searchBackground';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

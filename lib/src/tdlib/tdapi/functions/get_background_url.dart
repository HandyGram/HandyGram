part of '../tdapi.dart';

/// **GetBackgroundUrl** *(getBackgroundUrl)* - TDLib function
///
/// Constructs a persistent HTTP URL for a background.
///
/// * [name]: Background name.
/// * [type]: Background type.
///
/// [HttpUrl] is returned on completion.
final class GetBackgroundUrl extends TdFunction {
  
  /// **GetBackgroundUrl** *(getBackgroundUrl)* - TDLib function
  ///
  /// Constructs a persistent HTTP URL for a background.
  ///
  /// * [name]: Background name.
  /// * [type]: Background type.
  ///
  /// [HttpUrl] is returned on completion.
  const GetBackgroundUrl({
    required this.name,
    required this.type,
  });
  
  /// Background name 
  final String name;

  /// Background type
  final BackgroundType type;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "name": name,
      "type": type.toJson(),
      "@extra": extra,
		};
	}

  
  GetBackgroundUrl copyWith({
    String? name,
    BackgroundType? type,
  }) => GetBackgroundUrl(
    name: name ?? this.name,
    type: type ?? this.type,
  );

  static const String objectType = 'getBackgroundUrl';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

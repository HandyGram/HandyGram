part of '../tdapi.dart';

/// **GetBackgroundUrl** *(getBackgroundUrl)* - TDLib function
  ///
  /// Constructs a persistent HTTP URL for a background.
  ///
  /// * [name]: Background name.
  /// * [type]: Background type.
  ///
  /// [HttpUrl] is returned on completion.
class GetBackgroundUrl extends TdFunction {
  
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
      "@type": constructor,
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

  static const String constructor = 'getBackgroundUrl';
  
  @override
  String getConstructor() => constructor;
}

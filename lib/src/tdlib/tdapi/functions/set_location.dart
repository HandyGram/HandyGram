part of '../tdapi.dart';

/// **SetLocation** *(setLocation)* - TDLib function
  ///
  /// Changes the location of the current user. Needs to be called if getOption("is_location_visible") is true and location changes for more than 1 kilometer.
  ///
  /// * [location]: The new location of the user.
  ///
  /// [Ok] is returned on completion.
class SetLocation extends TdFunction {
  
  /// **SetLocation** *(setLocation)* - TDLib function
  ///
  /// Changes the location of the current user. Needs to be called if getOption("is_location_visible") is true and location changes for more than 1 kilometer.
  ///
  /// * [location]: The new location of the user.
  ///
  /// [Ok] is returned on completion.
  const SetLocation({
    required this.location,
  });
  
  /// The new location of the user
  final Location location;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "location": location.toJson(),
      "@extra": extra,
    };
  }
  
  SetLocation copyWith({
    Location? location,
  }) => SetLocation(
    location: location ?? this.location,
  );

  static const String constructor = 'setLocation';
  
  @override
  String getConstructor() => constructor;
}

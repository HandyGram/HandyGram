part of '../tdapi.dart';

/// **SetBio** *(setBio)* - TDLib function
///
/// Changes the bio of the current user.
///
/// * [bio]: The new value of the user bio; 0-getOption("bio_length_max") characters without line feeds.
///
/// [Ok] is returned on completion.
final class SetBio extends TdFunction {
  
  /// **SetBio** *(setBio)* - TDLib function
  ///
  /// Changes the bio of the current user.
  ///
  /// * [bio]: The new value of the user bio; 0-getOption("bio_length_max") characters without line feeds.
  ///
  /// [Ok] is returned on completion.
  const SetBio({
    required this.bio,
  });
  
  /// The new value of the user bio; 0-getOption("bio_length_max") characters without line feeds
  final String bio;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "bio": bio,
      "@extra": extra,
		};
	}

  
  SetBio copyWith({
    String? bio,
  }) => SetBio(
    bio: bio ?? this.bio,
  );

  static const String objectType = 'setBio';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

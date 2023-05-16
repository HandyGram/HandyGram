part of '../tdapi.dart';

/// **UserStatus** *(userStatus)* - parent
///
/// Describes the last time the user was online.
sealed class UserStatus extends TdObject {
  
  /// **UserStatus** *(userStatus)* - parent
  ///
  /// Describes the last time the user was online.
  const UserStatus();
  
  /// a UserStatus return type can be :
  /// * [UserStatusEmpty]
  /// * [UserStatusOnline]
  /// * [UserStatusOffline]
  /// * [UserStatusRecently]
  /// * [UserStatusLastWeek]
  /// * [UserStatusLastMonth]
  factory UserStatus.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case UserStatusEmpty.objectType:
        return UserStatusEmpty.fromJson(json);
      case UserStatusOnline.objectType:
        return UserStatusOnline.fromJson(json);
      case UserStatusOffline.objectType:
        return UserStatusOffline.fromJson(json);
      case UserStatusRecently.objectType:
        return UserStatusRecently.fromJson(json);
      case UserStatusLastWeek.objectType:
        return UserStatusLastWeek.fromJson(json);
      case UserStatusLastMonth.objectType:
        return UserStatusLastMonth.fromJson(json);
      default:
        throw FormatException(
          "Unknown object ${json["@type"]} (expected child of UserStatus)",
          json,
        );
    }
  }
  
  @override
  Map<String, dynamic> toJson();

  
  UserStatus copyWith();

  static const String objectType = 'userStatus';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **UserStatusEmpty** *(userStatusEmpty)* - child of UserStatus
///
/// The user status was never changed.
final class UserStatusEmpty extends UserStatus {
  
  /// **UserStatusEmpty** *(userStatusEmpty)* - child of UserStatus
  ///
  /// The user status was never changed.
  const UserStatusEmpty();
  
  /// Parse from a json
  factory UserStatusEmpty.fromJson(Map<String, dynamic> json) => const UserStatusEmpty();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  UserStatusEmpty copyWith() => const UserStatusEmpty();

  static const String objectType = 'userStatusEmpty';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **UserStatusOnline** *(userStatusOnline)* - child of UserStatus
///
/// The user is online.
///
/// * [expires]: Point in time (Unix timestamp) when the user's online status will expire.
final class UserStatusOnline extends UserStatus {
  
  /// **UserStatusOnline** *(userStatusOnline)* - child of UserStatus
  ///
  /// The user is online.
  ///
  /// * [expires]: Point in time (Unix timestamp) when the user's online status will expire.
  const UserStatusOnline({
    required this.expires,
  });
  
  /// Point in time (Unix timestamp) when the user's online status will expire
  final int expires;
  
  /// Parse from a json
  factory UserStatusOnline.fromJson(Map<String, dynamic> json) => UserStatusOnline(
    expires: json['expires'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "expires": expires,
		};
	}

  
  @override
  UserStatusOnline copyWith({
    int? expires,
  }) => UserStatusOnline(
    expires: expires ?? this.expires,
  );

  static const String objectType = 'userStatusOnline';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **UserStatusOffline** *(userStatusOffline)* - child of UserStatus
///
/// The user is offline.
///
/// * [wasOnline]: Point in time (Unix timestamp) when the user was last online.
final class UserStatusOffline extends UserStatus {
  
  /// **UserStatusOffline** *(userStatusOffline)* - child of UserStatus
  ///
  /// The user is offline.
  ///
  /// * [wasOnline]: Point in time (Unix timestamp) when the user was last online.
  const UserStatusOffline({
    required this.wasOnline,
  });
  
  /// Point in time (Unix timestamp) when the user was last online
  final int wasOnline;
  
  /// Parse from a json
  factory UserStatusOffline.fromJson(Map<String, dynamic> json) => UserStatusOffline(
    wasOnline: json['was_online'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "was_online": wasOnline,
		};
	}

  
  @override
  UserStatusOffline copyWith({
    int? wasOnline,
  }) => UserStatusOffline(
    wasOnline: wasOnline ?? this.wasOnline,
  );

  static const String objectType = 'userStatusOffline';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **UserStatusRecently** *(userStatusRecently)* - child of UserStatus
///
/// The user was online recently.
final class UserStatusRecently extends UserStatus {
  
  /// **UserStatusRecently** *(userStatusRecently)* - child of UserStatus
  ///
  /// The user was online recently.
  const UserStatusRecently();
  
  /// Parse from a json
  factory UserStatusRecently.fromJson(Map<String, dynamic> json) => const UserStatusRecently();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  UserStatusRecently copyWith() => const UserStatusRecently();

  static const String objectType = 'userStatusRecently';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **UserStatusLastWeek** *(userStatusLastWeek)* - child of UserStatus
///
/// The user is offline, but was online last week.
final class UserStatusLastWeek extends UserStatus {
  
  /// **UserStatusLastWeek** *(userStatusLastWeek)* - child of UserStatus
  ///
  /// The user is offline, but was online last week.
  const UserStatusLastWeek();
  
  /// Parse from a json
  factory UserStatusLastWeek.fromJson(Map<String, dynamic> json) => const UserStatusLastWeek();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  UserStatusLastWeek copyWith() => const UserStatusLastWeek();

  static const String objectType = 'userStatusLastWeek';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **UserStatusLastMonth** *(userStatusLastMonth)* - child of UserStatus
///
/// The user is offline, but was online last month.
final class UserStatusLastMonth extends UserStatus {
  
  /// **UserStatusLastMonth** *(userStatusLastMonth)* - child of UserStatus
  ///
  /// The user is offline, but was online last month.
  const UserStatusLastMonth();
  
  /// Parse from a json
  factory UserStatusLastMonth.fromJson(Map<String, dynamic> json) => const UserStatusLastMonth();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  UserStatusLastMonth copyWith() => const UserStatusLastMonth();

  static const String objectType = 'userStatusLastMonth';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

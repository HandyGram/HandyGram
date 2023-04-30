part of '../tdapi.dart';

/// **UserStatus** *(userStatus)* - parent
  ///
  /// Describes the last time the user was online.
class UserStatus extends TdObject {
  
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
      case UserStatusEmpty.constructor:
        return UserStatusEmpty.fromJson(json);
      case UserStatusOnline.constructor:
        return UserStatusOnline.fromJson(json);
      case UserStatusOffline.constructor:
        return UserStatusOffline.fromJson(json);
      case UserStatusRecently.constructor:
        return UserStatusRecently.fromJson(json);
      case UserStatusLastWeek.constructor:
        return UserStatusLastWeek.fromJson(json);
      case UserStatusLastMonth.constructor:
        return UserStatusLastMonth.fromJson(json);
      default:
        return const UserStatus();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  UserStatus copyWith() => const UserStatus();

  static const String constructor = 'userStatus';
  
  @override
  String getConstructor() => constructor;
}


/// **UserStatusEmpty** *(userStatusEmpty)* - child of UserStatus
  ///
  /// The user status was never changed.
class UserStatusEmpty extends UserStatus {
  
  /// **UserStatusEmpty** *(userStatusEmpty)* - child of UserStatus
  ///
  /// The user status was never changed.
  const UserStatusEmpty();
  
  /// Parse from a json
  factory UserStatusEmpty.fromJson(Map<String, dynamic> json) => const UserStatusEmpty();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  UserStatusEmpty copyWith() => const UserStatusEmpty();

  static const String constructor = 'userStatusEmpty';
  
  @override
  String getConstructor() => constructor;
}


/// **UserStatusOnline** *(userStatusOnline)* - child of UserStatus
  ///
  /// The user is online.
  ///
  /// * [expires]: Point in time (Unix timestamp) when the user's online status will expire.
class UserStatusOnline extends UserStatus {
  
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
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "expires": expires,
    };
  }
  
  @override
  UserStatusOnline copyWith({
    int? expires,
  }) => UserStatusOnline(
    expires: expires ?? this.expires,
  );

  static const String constructor = 'userStatusOnline';
  
  @override
  String getConstructor() => constructor;
}


/// **UserStatusOffline** *(userStatusOffline)* - child of UserStatus
  ///
  /// The user is offline.
  ///
  /// * [wasOnline]: Point in time (Unix timestamp) when the user was last online.
class UserStatusOffline extends UserStatus {
  
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
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "was_online": wasOnline,
    };
  }
  
  @override
  UserStatusOffline copyWith({
    int? wasOnline,
  }) => UserStatusOffline(
    wasOnline: wasOnline ?? this.wasOnline,
  );

  static const String constructor = 'userStatusOffline';
  
  @override
  String getConstructor() => constructor;
}


/// **UserStatusRecently** *(userStatusRecently)* - child of UserStatus
  ///
  /// The user was online recently.
class UserStatusRecently extends UserStatus {
  
  /// **UserStatusRecently** *(userStatusRecently)* - child of UserStatus
  ///
  /// The user was online recently.
  const UserStatusRecently();
  
  /// Parse from a json
  factory UserStatusRecently.fromJson(Map<String, dynamic> json) => const UserStatusRecently();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  UserStatusRecently copyWith() => const UserStatusRecently();

  static const String constructor = 'userStatusRecently';
  
  @override
  String getConstructor() => constructor;
}


/// **UserStatusLastWeek** *(userStatusLastWeek)* - child of UserStatus
  ///
  /// The user is offline, but was online last week.
class UserStatusLastWeek extends UserStatus {
  
  /// **UserStatusLastWeek** *(userStatusLastWeek)* - child of UserStatus
  ///
  /// The user is offline, but was online last week.
  const UserStatusLastWeek();
  
  /// Parse from a json
  factory UserStatusLastWeek.fromJson(Map<String, dynamic> json) => const UserStatusLastWeek();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  UserStatusLastWeek copyWith() => const UserStatusLastWeek();

  static const String constructor = 'userStatusLastWeek';
  
  @override
  String getConstructor() => constructor;
}


/// **UserStatusLastMonth** *(userStatusLastMonth)* - child of UserStatus
  ///
  /// The user is offline, but was online last month.
class UserStatusLastMonth extends UserStatus {
  
  /// **UserStatusLastMonth** *(userStatusLastMonth)* - child of UserStatus
  ///
  /// The user is offline, but was online last month.
  const UserStatusLastMonth();
  
  /// Parse from a json
  factory UserStatusLastMonth.fromJson(Map<String, dynamic> json) => const UserStatusLastMonth();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  UserStatusLastMonth copyWith() => const UserStatusLastMonth();

  static const String constructor = 'userStatusLastMonth';
  
  @override
  String getConstructor() => constructor;
}

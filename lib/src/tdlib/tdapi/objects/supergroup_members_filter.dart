part of '../tdapi.dart';

/// **SupergroupMembersFilter** *(supergroupMembersFilter)* - parent
///
/// Specifies the kind of chat members to return in getSupergroupMembers.
sealed class SupergroupMembersFilter extends TdObject {
  
  /// **SupergroupMembersFilter** *(supergroupMembersFilter)* - parent
  ///
  /// Specifies the kind of chat members to return in getSupergroupMembers.
  const SupergroupMembersFilter();
  
  /// a SupergroupMembersFilter return type can be :
  /// * [SupergroupMembersFilterRecent]
  /// * [SupergroupMembersFilterContacts]
  /// * [SupergroupMembersFilterAdministrators]
  /// * [SupergroupMembersFilterSearch]
  /// * [SupergroupMembersFilterRestricted]
  /// * [SupergroupMembersFilterBanned]
  /// * [SupergroupMembersFilterMention]
  /// * [SupergroupMembersFilterBots]
  factory SupergroupMembersFilter.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case SupergroupMembersFilterRecent.objectType:
        return SupergroupMembersFilterRecent.fromJson(json);
      case SupergroupMembersFilterContacts.objectType:
        return SupergroupMembersFilterContacts.fromJson(json);
      case SupergroupMembersFilterAdministrators.objectType:
        return SupergroupMembersFilterAdministrators.fromJson(json);
      case SupergroupMembersFilterSearch.objectType:
        return SupergroupMembersFilterSearch.fromJson(json);
      case SupergroupMembersFilterRestricted.objectType:
        return SupergroupMembersFilterRestricted.fromJson(json);
      case SupergroupMembersFilterBanned.objectType:
        return SupergroupMembersFilterBanned.fromJson(json);
      case SupergroupMembersFilterMention.objectType:
        return SupergroupMembersFilterMention.fromJson(json);
      case SupergroupMembersFilterBots.objectType:
        return SupergroupMembersFilterBots.fromJson(json);
      default:
        throw FormatException(
          "Unknown object ${json["@type"]} (expected child of SupergroupMembersFilter)",
          json,
        );
    }
  }
  
  @override
  Map<String, dynamic> toJson();

  
  SupergroupMembersFilter copyWith();

  static const String objectType = 'supergroupMembersFilter';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **SupergroupMembersFilterRecent** *(supergroupMembersFilterRecent)* - child of SupergroupMembersFilter
///
/// Returns recently active users in reverse chronological order.
final class SupergroupMembersFilterRecent extends SupergroupMembersFilter {
  
  /// **SupergroupMembersFilterRecent** *(supergroupMembersFilterRecent)* - child of SupergroupMembersFilter
  ///
  /// Returns recently active users in reverse chronological order.
  const SupergroupMembersFilterRecent();
  
  /// Parse from a json
  factory SupergroupMembersFilterRecent.fromJson(Map<String, dynamic> json) => const SupergroupMembersFilterRecent();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  SupergroupMembersFilterRecent copyWith() => const SupergroupMembersFilterRecent();

  static const String objectType = 'supergroupMembersFilterRecent';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **SupergroupMembersFilterContacts** *(supergroupMembersFilterContacts)* - child of SupergroupMembersFilter
///
/// Returns contacts of the user, which are members of the supergroup or channel.
///
/// * [query]: Query to search for.
final class SupergroupMembersFilterContacts extends SupergroupMembersFilter {
  
  /// **SupergroupMembersFilterContacts** *(supergroupMembersFilterContacts)* - child of SupergroupMembersFilter
  ///
  /// Returns contacts of the user, which are members of the supergroup or channel.
  ///
  /// * [query]: Query to search for.
  const SupergroupMembersFilterContacts({
    required this.query,
  });
  
  /// Query to search for
  final String query;
  
  /// Parse from a json
  factory SupergroupMembersFilterContacts.fromJson(Map<String, dynamic> json) => SupergroupMembersFilterContacts(
    query: json['query'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "query": query,
		};
	}

  
  @override
  SupergroupMembersFilterContacts copyWith({
    String? query,
  }) => SupergroupMembersFilterContacts(
    query: query ?? this.query,
  );

  static const String objectType = 'supergroupMembersFilterContacts';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **SupergroupMembersFilterAdministrators** *(supergroupMembersFilterAdministrators)* - child of SupergroupMembersFilter
///
/// Returns the owner and administrators.
final class SupergroupMembersFilterAdministrators extends SupergroupMembersFilter {
  
  /// **SupergroupMembersFilterAdministrators** *(supergroupMembersFilterAdministrators)* - child of SupergroupMembersFilter
  ///
  /// Returns the owner and administrators.
  const SupergroupMembersFilterAdministrators();
  
  /// Parse from a json
  factory SupergroupMembersFilterAdministrators.fromJson(Map<String, dynamic> json) => const SupergroupMembersFilterAdministrators();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  SupergroupMembersFilterAdministrators copyWith() => const SupergroupMembersFilterAdministrators();

  static const String objectType = 'supergroupMembersFilterAdministrators';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **SupergroupMembersFilterSearch** *(supergroupMembersFilterSearch)* - child of SupergroupMembersFilter
///
/// Used to search for supergroup or channel members via a (string) query.
///
/// * [query]: Query to search for.
final class SupergroupMembersFilterSearch extends SupergroupMembersFilter {
  
  /// **SupergroupMembersFilterSearch** *(supergroupMembersFilterSearch)* - child of SupergroupMembersFilter
  ///
  /// Used to search for supergroup or channel members via a (string) query.
  ///
  /// * [query]: Query to search for.
  const SupergroupMembersFilterSearch({
    required this.query,
  });
  
  /// Query to search for
  final String query;
  
  /// Parse from a json
  factory SupergroupMembersFilterSearch.fromJson(Map<String, dynamic> json) => SupergroupMembersFilterSearch(
    query: json['query'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "query": query,
		};
	}

  
  @override
  SupergroupMembersFilterSearch copyWith({
    String? query,
  }) => SupergroupMembersFilterSearch(
    query: query ?? this.query,
  );

  static const String objectType = 'supergroupMembersFilterSearch';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **SupergroupMembersFilterRestricted** *(supergroupMembersFilterRestricted)* - child of SupergroupMembersFilter
///
/// Returns restricted supergroup members; can be used only by administrators.
///
/// * [query]: Query to search for.
final class SupergroupMembersFilterRestricted extends SupergroupMembersFilter {
  
  /// **SupergroupMembersFilterRestricted** *(supergroupMembersFilterRestricted)* - child of SupergroupMembersFilter
  ///
  /// Returns restricted supergroup members; can be used only by administrators.
  ///
  /// * [query]: Query to search for.
  const SupergroupMembersFilterRestricted({
    required this.query,
  });
  
  /// Query to search for
  final String query;
  
  /// Parse from a json
  factory SupergroupMembersFilterRestricted.fromJson(Map<String, dynamic> json) => SupergroupMembersFilterRestricted(
    query: json['query'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "query": query,
		};
	}

  
  @override
  SupergroupMembersFilterRestricted copyWith({
    String? query,
  }) => SupergroupMembersFilterRestricted(
    query: query ?? this.query,
  );

  static const String objectType = 'supergroupMembersFilterRestricted';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **SupergroupMembersFilterBanned** *(supergroupMembersFilterBanned)* - child of SupergroupMembersFilter
///
/// Returns users banned from the supergroup or channel; can be used only by administrators.
///
/// * [query]: Query to search for.
final class SupergroupMembersFilterBanned extends SupergroupMembersFilter {
  
  /// **SupergroupMembersFilterBanned** *(supergroupMembersFilterBanned)* - child of SupergroupMembersFilter
  ///
  /// Returns users banned from the supergroup or channel; can be used only by administrators.
  ///
  /// * [query]: Query to search for.
  const SupergroupMembersFilterBanned({
    required this.query,
  });
  
  /// Query to search for
  final String query;
  
  /// Parse from a json
  factory SupergroupMembersFilterBanned.fromJson(Map<String, dynamic> json) => SupergroupMembersFilterBanned(
    query: json['query'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "query": query,
		};
	}

  
  @override
  SupergroupMembersFilterBanned copyWith({
    String? query,
  }) => SupergroupMembersFilterBanned(
    query: query ?? this.query,
  );

  static const String objectType = 'supergroupMembersFilterBanned';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **SupergroupMembersFilterMention** *(supergroupMembersFilterMention)* - child of SupergroupMembersFilter
///
/// Returns users which can be mentioned in the supergroup.
///
/// * [query]: Query to search for.
/// * [messageThreadId]: If non-zero, the identifier of the current message thread.
final class SupergroupMembersFilterMention extends SupergroupMembersFilter {
  
  /// **SupergroupMembersFilterMention** *(supergroupMembersFilterMention)* - child of SupergroupMembersFilter
  ///
  /// Returns users which can be mentioned in the supergroup.
  ///
  /// * [query]: Query to search for.
  /// * [messageThreadId]: If non-zero, the identifier of the current message thread.
  const SupergroupMembersFilterMention({
    required this.query,
    required this.messageThreadId,
  });
  
  /// Query to search for 
  final String query;

  /// If non-zero, the identifier of the current message thread
  final int messageThreadId;
  
  /// Parse from a json
  factory SupergroupMembersFilterMention.fromJson(Map<String, dynamic> json) => SupergroupMembersFilterMention(
    query: json['query'],
    messageThreadId: json['message_thread_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "query": query,
      "message_thread_id": messageThreadId,
		};
	}

  
  @override
  SupergroupMembersFilterMention copyWith({
    String? query,
    int? messageThreadId,
  }) => SupergroupMembersFilterMention(
    query: query ?? this.query,
    messageThreadId: messageThreadId ?? this.messageThreadId,
  );

  static const String objectType = 'supergroupMembersFilterMention';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **SupergroupMembersFilterBots** *(supergroupMembersFilterBots)* - child of SupergroupMembersFilter
///
/// Returns bot members of the supergroup or channel.
final class SupergroupMembersFilterBots extends SupergroupMembersFilter {
  
  /// **SupergroupMembersFilterBots** *(supergroupMembersFilterBots)* - child of SupergroupMembersFilter
  ///
  /// Returns bot members of the supergroup or channel.
  const SupergroupMembersFilterBots();
  
  /// Parse from a json
  factory SupergroupMembersFilterBots.fromJson(Map<String, dynamic> json) => const SupergroupMembersFilterBots();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  SupergroupMembersFilterBots copyWith() => const SupergroupMembersFilterBots();

  static const String objectType = 'supergroupMembersFilterBots';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

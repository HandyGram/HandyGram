part of '../tdapi.dart';

/// **SupergroupMembersFilter** *(supergroupMembersFilter)* - parent
  ///
  /// Specifies the kind of chat members to return in getSupergroupMembers.
class SupergroupMembersFilter extends TdObject {
  
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
      case SupergroupMembersFilterRecent.constructor:
        return SupergroupMembersFilterRecent.fromJson(json);
      case SupergroupMembersFilterContacts.constructor:
        return SupergroupMembersFilterContacts.fromJson(json);
      case SupergroupMembersFilterAdministrators.constructor:
        return SupergroupMembersFilterAdministrators.fromJson(json);
      case SupergroupMembersFilterSearch.constructor:
        return SupergroupMembersFilterSearch.fromJson(json);
      case SupergroupMembersFilterRestricted.constructor:
        return SupergroupMembersFilterRestricted.fromJson(json);
      case SupergroupMembersFilterBanned.constructor:
        return SupergroupMembersFilterBanned.fromJson(json);
      case SupergroupMembersFilterMention.constructor:
        return SupergroupMembersFilterMention.fromJson(json);
      case SupergroupMembersFilterBots.constructor:
        return SupergroupMembersFilterBots.fromJson(json);
      default:
        return const SupergroupMembersFilter();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  SupergroupMembersFilter copyWith() => const SupergroupMembersFilter();

  static const String constructor = 'supergroupMembersFilter';
  
  @override
  String getConstructor() => constructor;
}


/// **SupergroupMembersFilterRecent** *(supergroupMembersFilterRecent)* - child of SupergroupMembersFilter
  ///
  /// Returns recently active users in reverse chronological order.
class SupergroupMembersFilterRecent extends SupergroupMembersFilter {
  
  /// **SupergroupMembersFilterRecent** *(supergroupMembersFilterRecent)* - child of SupergroupMembersFilter
  ///
  /// Returns recently active users in reverse chronological order.
  const SupergroupMembersFilterRecent();
  
  /// Parse from a json
  factory SupergroupMembersFilterRecent.fromJson(Map<String, dynamic> json) => const SupergroupMembersFilterRecent();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  SupergroupMembersFilterRecent copyWith() => const SupergroupMembersFilterRecent();

  static const String constructor = 'supergroupMembersFilterRecent';
  
  @override
  String getConstructor() => constructor;
}


/// **SupergroupMembersFilterContacts** *(supergroupMembersFilterContacts)* - child of SupergroupMembersFilter
  ///
  /// Returns contacts of the user, which are members of the supergroup or channel.
  ///
  /// * [query]: Query to search for.
class SupergroupMembersFilterContacts extends SupergroupMembersFilter {
  
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
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "query": query,
    };
  }
  
  @override
  SupergroupMembersFilterContacts copyWith({
    String? query,
  }) => SupergroupMembersFilterContacts(
    query: query ?? this.query,
  );

  static const String constructor = 'supergroupMembersFilterContacts';
  
  @override
  String getConstructor() => constructor;
}


/// **SupergroupMembersFilterAdministrators** *(supergroupMembersFilterAdministrators)* - child of SupergroupMembersFilter
  ///
  /// Returns the owner and administrators.
class SupergroupMembersFilterAdministrators extends SupergroupMembersFilter {
  
  /// **SupergroupMembersFilterAdministrators** *(supergroupMembersFilterAdministrators)* - child of SupergroupMembersFilter
  ///
  /// Returns the owner and administrators.
  const SupergroupMembersFilterAdministrators();
  
  /// Parse from a json
  factory SupergroupMembersFilterAdministrators.fromJson(Map<String, dynamic> json) => const SupergroupMembersFilterAdministrators();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  SupergroupMembersFilterAdministrators copyWith() => const SupergroupMembersFilterAdministrators();

  static const String constructor = 'supergroupMembersFilterAdministrators';
  
  @override
  String getConstructor() => constructor;
}


/// **SupergroupMembersFilterSearch** *(supergroupMembersFilterSearch)* - child of SupergroupMembersFilter
  ///
  /// Used to search for supergroup or channel members via a (string) query.
  ///
  /// * [query]: Query to search for.
class SupergroupMembersFilterSearch extends SupergroupMembersFilter {
  
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
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "query": query,
    };
  }
  
  @override
  SupergroupMembersFilterSearch copyWith({
    String? query,
  }) => SupergroupMembersFilterSearch(
    query: query ?? this.query,
  );

  static const String constructor = 'supergroupMembersFilterSearch';
  
  @override
  String getConstructor() => constructor;
}


/// **SupergroupMembersFilterRestricted** *(supergroupMembersFilterRestricted)* - child of SupergroupMembersFilter
  ///
  /// Returns restricted supergroup members; can be used only by administrators.
  ///
  /// * [query]: Query to search for.
class SupergroupMembersFilterRestricted extends SupergroupMembersFilter {
  
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
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "query": query,
    };
  }
  
  @override
  SupergroupMembersFilterRestricted copyWith({
    String? query,
  }) => SupergroupMembersFilterRestricted(
    query: query ?? this.query,
  );

  static const String constructor = 'supergroupMembersFilterRestricted';
  
  @override
  String getConstructor() => constructor;
}


/// **SupergroupMembersFilterBanned** *(supergroupMembersFilterBanned)* - child of SupergroupMembersFilter
  ///
  /// Returns users banned from the supergroup or channel; can be used only by administrators.
  ///
  /// * [query]: Query to search for.
class SupergroupMembersFilterBanned extends SupergroupMembersFilter {
  
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
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "query": query,
    };
  }
  
  @override
  SupergroupMembersFilterBanned copyWith({
    String? query,
  }) => SupergroupMembersFilterBanned(
    query: query ?? this.query,
  );

  static const String constructor = 'supergroupMembersFilterBanned';
  
  @override
  String getConstructor() => constructor;
}


/// **SupergroupMembersFilterMention** *(supergroupMembersFilterMention)* - child of SupergroupMembersFilter
  ///
  /// Returns users which can be mentioned in the supergroup.
  ///
  /// * [query]: Query to search for.
  /// * [messageThreadId]: If non-zero, the identifier of the current message thread.
class SupergroupMembersFilterMention extends SupergroupMembersFilter {
  
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
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
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

  static const String constructor = 'supergroupMembersFilterMention';
  
  @override
  String getConstructor() => constructor;
}


/// **SupergroupMembersFilterBots** *(supergroupMembersFilterBots)* - child of SupergroupMembersFilter
  ///
  /// Returns bot members of the supergroup or channel.
class SupergroupMembersFilterBots extends SupergroupMembersFilter {
  
  /// **SupergroupMembersFilterBots** *(supergroupMembersFilterBots)* - child of SupergroupMembersFilter
  ///
  /// Returns bot members of the supergroup or channel.
  const SupergroupMembersFilterBots();
  
  /// Parse from a json
  factory SupergroupMembersFilterBots.fromJson(Map<String, dynamic> json) => const SupergroupMembersFilterBots();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  SupergroupMembersFilterBots copyWith() => const SupergroupMembersFilterBots();

  static const String constructor = 'supergroupMembersFilterBots';
  
  @override
  String getConstructor() => constructor;
}

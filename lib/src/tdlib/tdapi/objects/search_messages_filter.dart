part of '../tdapi.dart';

/// **SearchMessagesFilter** *(searchMessagesFilter)* - parent
  ///
  /// Represents a filter for message search results.
class SearchMessagesFilter extends TdObject {
  
  /// **SearchMessagesFilter** *(searchMessagesFilter)* - parent
  ///
  /// Represents a filter for message search results.
  const SearchMessagesFilter();
  
  /// a SearchMessagesFilter return type can be :
  /// * [SearchMessagesFilterEmpty]
  /// * [SearchMessagesFilterAnimation]
  /// * [SearchMessagesFilterAudio]
  /// * [SearchMessagesFilterDocument]
  /// * [SearchMessagesFilterPhoto]
  /// * [SearchMessagesFilterVideo]
  /// * [SearchMessagesFilterVoiceNote]
  /// * [SearchMessagesFilterPhotoAndVideo]
  /// * [SearchMessagesFilterUrl]
  /// * [SearchMessagesFilterChatPhoto]
  /// * [SearchMessagesFilterVideoNote]
  /// * [SearchMessagesFilterVoiceAndVideoNote]
  /// * [SearchMessagesFilterMention]
  /// * [SearchMessagesFilterUnreadMention]
  /// * [SearchMessagesFilterUnreadReaction]
  /// * [SearchMessagesFilterFailedToSend]
  /// * [SearchMessagesFilterPinned]
  factory SearchMessagesFilter.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case SearchMessagesFilterEmpty.constructor:
        return SearchMessagesFilterEmpty.fromJson(json);
      case SearchMessagesFilterAnimation.constructor:
        return SearchMessagesFilterAnimation.fromJson(json);
      case SearchMessagesFilterAudio.constructor:
        return SearchMessagesFilterAudio.fromJson(json);
      case SearchMessagesFilterDocument.constructor:
        return SearchMessagesFilterDocument.fromJson(json);
      case SearchMessagesFilterPhoto.constructor:
        return SearchMessagesFilterPhoto.fromJson(json);
      case SearchMessagesFilterVideo.constructor:
        return SearchMessagesFilterVideo.fromJson(json);
      case SearchMessagesFilterVoiceNote.constructor:
        return SearchMessagesFilterVoiceNote.fromJson(json);
      case SearchMessagesFilterPhotoAndVideo.constructor:
        return SearchMessagesFilterPhotoAndVideo.fromJson(json);
      case SearchMessagesFilterUrl.constructor:
        return SearchMessagesFilterUrl.fromJson(json);
      case SearchMessagesFilterChatPhoto.constructor:
        return SearchMessagesFilterChatPhoto.fromJson(json);
      case SearchMessagesFilterVideoNote.constructor:
        return SearchMessagesFilterVideoNote.fromJson(json);
      case SearchMessagesFilterVoiceAndVideoNote.constructor:
        return SearchMessagesFilterVoiceAndVideoNote.fromJson(json);
      case SearchMessagesFilterMention.constructor:
        return SearchMessagesFilterMention.fromJson(json);
      case SearchMessagesFilterUnreadMention.constructor:
        return SearchMessagesFilterUnreadMention.fromJson(json);
      case SearchMessagesFilterUnreadReaction.constructor:
        return SearchMessagesFilterUnreadReaction.fromJson(json);
      case SearchMessagesFilterFailedToSend.constructor:
        return SearchMessagesFilterFailedToSend.fromJson(json);
      case SearchMessagesFilterPinned.constructor:
        return SearchMessagesFilterPinned.fromJson(json);
      default:
        return const SearchMessagesFilter();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  SearchMessagesFilter copyWith() => const SearchMessagesFilter();

  static const String constructor = 'searchMessagesFilter';
  
  @override
  String getConstructor() => constructor;
}


/// **SearchMessagesFilterEmpty** *(searchMessagesFilterEmpty)* - child of SearchMessagesFilter
  ///
  /// Returns all found messages, no filter is applied.
class SearchMessagesFilterEmpty extends SearchMessagesFilter {
  
  /// **SearchMessagesFilterEmpty** *(searchMessagesFilterEmpty)* - child of SearchMessagesFilter
  ///
  /// Returns all found messages, no filter is applied.
  const SearchMessagesFilterEmpty();
  
  /// Parse from a json
  factory SearchMessagesFilterEmpty.fromJson(Map<String, dynamic> json) => const SearchMessagesFilterEmpty();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  SearchMessagesFilterEmpty copyWith() => const SearchMessagesFilterEmpty();

  static const String constructor = 'searchMessagesFilterEmpty';
  
  @override
  String getConstructor() => constructor;
}


/// **SearchMessagesFilterAnimation** *(searchMessagesFilterAnimation)* - child of SearchMessagesFilter
  ///
  /// Returns only animation messages.
class SearchMessagesFilterAnimation extends SearchMessagesFilter {
  
  /// **SearchMessagesFilterAnimation** *(searchMessagesFilterAnimation)* - child of SearchMessagesFilter
  ///
  /// Returns only animation messages.
  const SearchMessagesFilterAnimation();
  
  /// Parse from a json
  factory SearchMessagesFilterAnimation.fromJson(Map<String, dynamic> json) => const SearchMessagesFilterAnimation();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  SearchMessagesFilterAnimation copyWith() => const SearchMessagesFilterAnimation();

  static const String constructor = 'searchMessagesFilterAnimation';
  
  @override
  String getConstructor() => constructor;
}


/// **SearchMessagesFilterAudio** *(searchMessagesFilterAudio)* - child of SearchMessagesFilter
  ///
  /// Returns only audio messages.
class SearchMessagesFilterAudio extends SearchMessagesFilter {
  
  /// **SearchMessagesFilterAudio** *(searchMessagesFilterAudio)* - child of SearchMessagesFilter
  ///
  /// Returns only audio messages.
  const SearchMessagesFilterAudio();
  
  /// Parse from a json
  factory SearchMessagesFilterAudio.fromJson(Map<String, dynamic> json) => const SearchMessagesFilterAudio();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  SearchMessagesFilterAudio copyWith() => const SearchMessagesFilterAudio();

  static const String constructor = 'searchMessagesFilterAudio';
  
  @override
  String getConstructor() => constructor;
}


/// **SearchMessagesFilterDocument** *(searchMessagesFilterDocument)* - child of SearchMessagesFilter
  ///
  /// Returns only document messages.
class SearchMessagesFilterDocument extends SearchMessagesFilter {
  
  /// **SearchMessagesFilterDocument** *(searchMessagesFilterDocument)* - child of SearchMessagesFilter
  ///
  /// Returns only document messages.
  const SearchMessagesFilterDocument();
  
  /// Parse from a json
  factory SearchMessagesFilterDocument.fromJson(Map<String, dynamic> json) => const SearchMessagesFilterDocument();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  SearchMessagesFilterDocument copyWith() => const SearchMessagesFilterDocument();

  static const String constructor = 'searchMessagesFilterDocument';
  
  @override
  String getConstructor() => constructor;
}


/// **SearchMessagesFilterPhoto** *(searchMessagesFilterPhoto)* - child of SearchMessagesFilter
  ///
  /// Returns only photo messages.
class SearchMessagesFilterPhoto extends SearchMessagesFilter {
  
  /// **SearchMessagesFilterPhoto** *(searchMessagesFilterPhoto)* - child of SearchMessagesFilter
  ///
  /// Returns only photo messages.
  const SearchMessagesFilterPhoto();
  
  /// Parse from a json
  factory SearchMessagesFilterPhoto.fromJson(Map<String, dynamic> json) => const SearchMessagesFilterPhoto();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  SearchMessagesFilterPhoto copyWith() => const SearchMessagesFilterPhoto();

  static const String constructor = 'searchMessagesFilterPhoto';
  
  @override
  String getConstructor() => constructor;
}


/// **SearchMessagesFilterVideo** *(searchMessagesFilterVideo)* - child of SearchMessagesFilter
  ///
  /// Returns only video messages.
class SearchMessagesFilterVideo extends SearchMessagesFilter {
  
  /// **SearchMessagesFilterVideo** *(searchMessagesFilterVideo)* - child of SearchMessagesFilter
  ///
  /// Returns only video messages.
  const SearchMessagesFilterVideo();
  
  /// Parse from a json
  factory SearchMessagesFilterVideo.fromJson(Map<String, dynamic> json) => const SearchMessagesFilterVideo();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  SearchMessagesFilterVideo copyWith() => const SearchMessagesFilterVideo();

  static const String constructor = 'searchMessagesFilterVideo';
  
  @override
  String getConstructor() => constructor;
}


/// **SearchMessagesFilterVoiceNote** *(searchMessagesFilterVoiceNote)* - child of SearchMessagesFilter
  ///
  /// Returns only voice note messages.
class SearchMessagesFilterVoiceNote extends SearchMessagesFilter {
  
  /// **SearchMessagesFilterVoiceNote** *(searchMessagesFilterVoiceNote)* - child of SearchMessagesFilter
  ///
  /// Returns only voice note messages.
  const SearchMessagesFilterVoiceNote();
  
  /// Parse from a json
  factory SearchMessagesFilterVoiceNote.fromJson(Map<String, dynamic> json) => const SearchMessagesFilterVoiceNote();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  SearchMessagesFilterVoiceNote copyWith() => const SearchMessagesFilterVoiceNote();

  static const String constructor = 'searchMessagesFilterVoiceNote';
  
  @override
  String getConstructor() => constructor;
}


/// **SearchMessagesFilterPhotoAndVideo** *(searchMessagesFilterPhotoAndVideo)* - child of SearchMessagesFilter
  ///
  /// Returns only photo and video messages.
class SearchMessagesFilterPhotoAndVideo extends SearchMessagesFilter {
  
  /// **SearchMessagesFilterPhotoAndVideo** *(searchMessagesFilterPhotoAndVideo)* - child of SearchMessagesFilter
  ///
  /// Returns only photo and video messages.
  const SearchMessagesFilterPhotoAndVideo();
  
  /// Parse from a json
  factory SearchMessagesFilterPhotoAndVideo.fromJson(Map<String, dynamic> json) => const SearchMessagesFilterPhotoAndVideo();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  SearchMessagesFilterPhotoAndVideo copyWith() => const SearchMessagesFilterPhotoAndVideo();

  static const String constructor = 'searchMessagesFilterPhotoAndVideo';
  
  @override
  String getConstructor() => constructor;
}


/// **SearchMessagesFilterUrl** *(searchMessagesFilterUrl)* - child of SearchMessagesFilter
  ///
  /// Returns only messages containing URLs.
class SearchMessagesFilterUrl extends SearchMessagesFilter {
  
  /// **SearchMessagesFilterUrl** *(searchMessagesFilterUrl)* - child of SearchMessagesFilter
  ///
  /// Returns only messages containing URLs.
  const SearchMessagesFilterUrl();
  
  /// Parse from a json
  factory SearchMessagesFilterUrl.fromJson(Map<String, dynamic> json) => const SearchMessagesFilterUrl();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  SearchMessagesFilterUrl copyWith() => const SearchMessagesFilterUrl();

  static const String constructor = 'searchMessagesFilterUrl';
  
  @override
  String getConstructor() => constructor;
}


/// **SearchMessagesFilterChatPhoto** *(searchMessagesFilterChatPhoto)* - child of SearchMessagesFilter
  ///
  /// Returns only messages containing chat photos.
class SearchMessagesFilterChatPhoto extends SearchMessagesFilter {
  
  /// **SearchMessagesFilterChatPhoto** *(searchMessagesFilterChatPhoto)* - child of SearchMessagesFilter
  ///
  /// Returns only messages containing chat photos.
  const SearchMessagesFilterChatPhoto();
  
  /// Parse from a json
  factory SearchMessagesFilterChatPhoto.fromJson(Map<String, dynamic> json) => const SearchMessagesFilterChatPhoto();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  SearchMessagesFilterChatPhoto copyWith() => const SearchMessagesFilterChatPhoto();

  static const String constructor = 'searchMessagesFilterChatPhoto';
  
  @override
  String getConstructor() => constructor;
}


/// **SearchMessagesFilterVideoNote** *(searchMessagesFilterVideoNote)* - child of SearchMessagesFilter
  ///
  /// Returns only video note messages.
class SearchMessagesFilterVideoNote extends SearchMessagesFilter {
  
  /// **SearchMessagesFilterVideoNote** *(searchMessagesFilterVideoNote)* - child of SearchMessagesFilter
  ///
  /// Returns only video note messages.
  const SearchMessagesFilterVideoNote();
  
  /// Parse from a json
  factory SearchMessagesFilterVideoNote.fromJson(Map<String, dynamic> json) => const SearchMessagesFilterVideoNote();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  SearchMessagesFilterVideoNote copyWith() => const SearchMessagesFilterVideoNote();

  static const String constructor = 'searchMessagesFilterVideoNote';
  
  @override
  String getConstructor() => constructor;
}


/// **SearchMessagesFilterVoiceAndVideoNote** *(searchMessagesFilterVoiceAndVideoNote)* - child of SearchMessagesFilter
  ///
  /// Returns only voice and video note messages.
class SearchMessagesFilterVoiceAndVideoNote extends SearchMessagesFilter {
  
  /// **SearchMessagesFilterVoiceAndVideoNote** *(searchMessagesFilterVoiceAndVideoNote)* - child of SearchMessagesFilter
  ///
  /// Returns only voice and video note messages.
  const SearchMessagesFilterVoiceAndVideoNote();
  
  /// Parse from a json
  factory SearchMessagesFilterVoiceAndVideoNote.fromJson(Map<String, dynamic> json) => const SearchMessagesFilterVoiceAndVideoNote();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  SearchMessagesFilterVoiceAndVideoNote copyWith() => const SearchMessagesFilterVoiceAndVideoNote();

  static const String constructor = 'searchMessagesFilterVoiceAndVideoNote';
  
  @override
  String getConstructor() => constructor;
}


/// **SearchMessagesFilterMention** *(searchMessagesFilterMention)* - child of SearchMessagesFilter
  ///
  /// Returns only messages with mentions of the current user, or messages that are replies to their messages.
class SearchMessagesFilterMention extends SearchMessagesFilter {
  
  /// **SearchMessagesFilterMention** *(searchMessagesFilterMention)* - child of SearchMessagesFilter
  ///
  /// Returns only messages with mentions of the current user, or messages that are replies to their messages.
  const SearchMessagesFilterMention();
  
  /// Parse from a json
  factory SearchMessagesFilterMention.fromJson(Map<String, dynamic> json) => const SearchMessagesFilterMention();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  SearchMessagesFilterMention copyWith() => const SearchMessagesFilterMention();

  static const String constructor = 'searchMessagesFilterMention';
  
  @override
  String getConstructor() => constructor;
}


/// **SearchMessagesFilterUnreadMention** *(searchMessagesFilterUnreadMention)* - child of SearchMessagesFilter
  ///
  /// Returns only messages with unread mentions of the current user, or messages that are replies to their messages. When using this filter the results can't be additionally filtered by a query, a message thread or by the sending user.
class SearchMessagesFilterUnreadMention extends SearchMessagesFilter {
  
  /// **SearchMessagesFilterUnreadMention** *(searchMessagesFilterUnreadMention)* - child of SearchMessagesFilter
  ///
  /// Returns only messages with unread mentions of the current user, or messages that are replies to their messages. When using this filter the results can't be additionally filtered by a query, a message thread or by the sending user.
  const SearchMessagesFilterUnreadMention();
  
  /// Parse from a json
  factory SearchMessagesFilterUnreadMention.fromJson(Map<String, dynamic> json) => const SearchMessagesFilterUnreadMention();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  SearchMessagesFilterUnreadMention copyWith() => const SearchMessagesFilterUnreadMention();

  static const String constructor = 'searchMessagesFilterUnreadMention';
  
  @override
  String getConstructor() => constructor;
}


/// **SearchMessagesFilterUnreadReaction** *(searchMessagesFilterUnreadReaction)* - child of SearchMessagesFilter
  ///
  /// Returns only messages with unread reactions for the current user. When using this filter the results can't be additionally filtered by a query, a message thread or by the sending user.
class SearchMessagesFilterUnreadReaction extends SearchMessagesFilter {
  
  /// **SearchMessagesFilterUnreadReaction** *(searchMessagesFilterUnreadReaction)* - child of SearchMessagesFilter
  ///
  /// Returns only messages with unread reactions for the current user. When using this filter the results can't be additionally filtered by a query, a message thread or by the sending user.
  const SearchMessagesFilterUnreadReaction();
  
  /// Parse from a json
  factory SearchMessagesFilterUnreadReaction.fromJson(Map<String, dynamic> json) => const SearchMessagesFilterUnreadReaction();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  SearchMessagesFilterUnreadReaction copyWith() => const SearchMessagesFilterUnreadReaction();

  static const String constructor = 'searchMessagesFilterUnreadReaction';
  
  @override
  String getConstructor() => constructor;
}


/// **SearchMessagesFilterFailedToSend** *(searchMessagesFilterFailedToSend)* - child of SearchMessagesFilter
  ///
  /// Returns only failed to send messages. This filter can be used only if the message database is used.
class SearchMessagesFilterFailedToSend extends SearchMessagesFilter {
  
  /// **SearchMessagesFilterFailedToSend** *(searchMessagesFilterFailedToSend)* - child of SearchMessagesFilter
  ///
  /// Returns only failed to send messages. This filter can be used only if the message database is used.
  const SearchMessagesFilterFailedToSend();
  
  /// Parse from a json
  factory SearchMessagesFilterFailedToSend.fromJson(Map<String, dynamic> json) => const SearchMessagesFilterFailedToSend();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  SearchMessagesFilterFailedToSend copyWith() => const SearchMessagesFilterFailedToSend();

  static const String constructor = 'searchMessagesFilterFailedToSend';
  
  @override
  String getConstructor() => constructor;
}


/// **SearchMessagesFilterPinned** *(searchMessagesFilterPinned)* - child of SearchMessagesFilter
  ///
  /// Returns only pinned messages.
class SearchMessagesFilterPinned extends SearchMessagesFilter {
  
  /// **SearchMessagesFilterPinned** *(searchMessagesFilterPinned)* - child of SearchMessagesFilter
  ///
  /// Returns only pinned messages.
  const SearchMessagesFilterPinned();
  
  /// Parse from a json
  factory SearchMessagesFilterPinned.fromJson(Map<String, dynamic> json) => const SearchMessagesFilterPinned();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  SearchMessagesFilterPinned copyWith() => const SearchMessagesFilterPinned();

  static const String constructor = 'searchMessagesFilterPinned';
  
  @override
  String getConstructor() => constructor;
}

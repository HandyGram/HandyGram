part of '../tdapi.dart';

/// **SearchMessagesFilter** *(searchMessagesFilter)* - parent
///
/// Represents a filter for message search results.
sealed class SearchMessagesFilter extends TdObject {
  
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
      case SearchMessagesFilterEmpty.objectType:
        return SearchMessagesFilterEmpty.fromJson(json);
      case SearchMessagesFilterAnimation.objectType:
        return SearchMessagesFilterAnimation.fromJson(json);
      case SearchMessagesFilterAudio.objectType:
        return SearchMessagesFilterAudio.fromJson(json);
      case SearchMessagesFilterDocument.objectType:
        return SearchMessagesFilterDocument.fromJson(json);
      case SearchMessagesFilterPhoto.objectType:
        return SearchMessagesFilterPhoto.fromJson(json);
      case SearchMessagesFilterVideo.objectType:
        return SearchMessagesFilterVideo.fromJson(json);
      case SearchMessagesFilterVoiceNote.objectType:
        return SearchMessagesFilterVoiceNote.fromJson(json);
      case SearchMessagesFilterPhotoAndVideo.objectType:
        return SearchMessagesFilterPhotoAndVideo.fromJson(json);
      case SearchMessagesFilterUrl.objectType:
        return SearchMessagesFilterUrl.fromJson(json);
      case SearchMessagesFilterChatPhoto.objectType:
        return SearchMessagesFilterChatPhoto.fromJson(json);
      case SearchMessagesFilterVideoNote.objectType:
        return SearchMessagesFilterVideoNote.fromJson(json);
      case SearchMessagesFilterVoiceAndVideoNote.objectType:
        return SearchMessagesFilterVoiceAndVideoNote.fromJson(json);
      case SearchMessagesFilterMention.objectType:
        return SearchMessagesFilterMention.fromJson(json);
      case SearchMessagesFilterUnreadMention.objectType:
        return SearchMessagesFilterUnreadMention.fromJson(json);
      case SearchMessagesFilterUnreadReaction.objectType:
        return SearchMessagesFilterUnreadReaction.fromJson(json);
      case SearchMessagesFilterFailedToSend.objectType:
        return SearchMessagesFilterFailedToSend.fromJson(json);
      case SearchMessagesFilterPinned.objectType:
        return SearchMessagesFilterPinned.fromJson(json);
      default:
        throw FormatException(
          "Unknown object ${json["@type"]} (expected child of SearchMessagesFilter)",
          json,
        );
    }
  }
  
  @override
  Map<String, dynamic> toJson();

  
  SearchMessagesFilter copyWith();

  static const String objectType = 'searchMessagesFilter';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **SearchMessagesFilterEmpty** *(searchMessagesFilterEmpty)* - child of SearchMessagesFilter
///
/// Returns all found messages, no filter is applied.
final class SearchMessagesFilterEmpty extends SearchMessagesFilter {
  
  /// **SearchMessagesFilterEmpty** *(searchMessagesFilterEmpty)* - child of SearchMessagesFilter
  ///
  /// Returns all found messages, no filter is applied.
  const SearchMessagesFilterEmpty();
  
  /// Parse from a json
  factory SearchMessagesFilterEmpty.fromJson(Map<String, dynamic> json) => const SearchMessagesFilterEmpty();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  SearchMessagesFilterEmpty copyWith() => const SearchMessagesFilterEmpty();

  static const String objectType = 'searchMessagesFilterEmpty';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **SearchMessagesFilterAnimation** *(searchMessagesFilterAnimation)* - child of SearchMessagesFilter
///
/// Returns only animation messages.
final class SearchMessagesFilterAnimation extends SearchMessagesFilter {
  
  /// **SearchMessagesFilterAnimation** *(searchMessagesFilterAnimation)* - child of SearchMessagesFilter
  ///
  /// Returns only animation messages.
  const SearchMessagesFilterAnimation();
  
  /// Parse from a json
  factory SearchMessagesFilterAnimation.fromJson(Map<String, dynamic> json) => const SearchMessagesFilterAnimation();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  SearchMessagesFilterAnimation copyWith() => const SearchMessagesFilterAnimation();

  static const String objectType = 'searchMessagesFilterAnimation';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **SearchMessagesFilterAudio** *(searchMessagesFilterAudio)* - child of SearchMessagesFilter
///
/// Returns only audio messages.
final class SearchMessagesFilterAudio extends SearchMessagesFilter {
  
  /// **SearchMessagesFilterAudio** *(searchMessagesFilterAudio)* - child of SearchMessagesFilter
  ///
  /// Returns only audio messages.
  const SearchMessagesFilterAudio();
  
  /// Parse from a json
  factory SearchMessagesFilterAudio.fromJson(Map<String, dynamic> json) => const SearchMessagesFilterAudio();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  SearchMessagesFilterAudio copyWith() => const SearchMessagesFilterAudio();

  static const String objectType = 'searchMessagesFilterAudio';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **SearchMessagesFilterDocument** *(searchMessagesFilterDocument)* - child of SearchMessagesFilter
///
/// Returns only document messages.
final class SearchMessagesFilterDocument extends SearchMessagesFilter {
  
  /// **SearchMessagesFilterDocument** *(searchMessagesFilterDocument)* - child of SearchMessagesFilter
  ///
  /// Returns only document messages.
  const SearchMessagesFilterDocument();
  
  /// Parse from a json
  factory SearchMessagesFilterDocument.fromJson(Map<String, dynamic> json) => const SearchMessagesFilterDocument();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  SearchMessagesFilterDocument copyWith() => const SearchMessagesFilterDocument();

  static const String objectType = 'searchMessagesFilterDocument';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **SearchMessagesFilterPhoto** *(searchMessagesFilterPhoto)* - child of SearchMessagesFilter
///
/// Returns only photo messages.
final class SearchMessagesFilterPhoto extends SearchMessagesFilter {
  
  /// **SearchMessagesFilterPhoto** *(searchMessagesFilterPhoto)* - child of SearchMessagesFilter
  ///
  /// Returns only photo messages.
  const SearchMessagesFilterPhoto();
  
  /// Parse from a json
  factory SearchMessagesFilterPhoto.fromJson(Map<String, dynamic> json) => const SearchMessagesFilterPhoto();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  SearchMessagesFilterPhoto copyWith() => const SearchMessagesFilterPhoto();

  static const String objectType = 'searchMessagesFilterPhoto';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **SearchMessagesFilterVideo** *(searchMessagesFilterVideo)* - child of SearchMessagesFilter
///
/// Returns only video messages.
final class SearchMessagesFilterVideo extends SearchMessagesFilter {
  
  /// **SearchMessagesFilterVideo** *(searchMessagesFilterVideo)* - child of SearchMessagesFilter
  ///
  /// Returns only video messages.
  const SearchMessagesFilterVideo();
  
  /// Parse from a json
  factory SearchMessagesFilterVideo.fromJson(Map<String, dynamic> json) => const SearchMessagesFilterVideo();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  SearchMessagesFilterVideo copyWith() => const SearchMessagesFilterVideo();

  static const String objectType = 'searchMessagesFilterVideo';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **SearchMessagesFilterVoiceNote** *(searchMessagesFilterVoiceNote)* - child of SearchMessagesFilter
///
/// Returns only voice note messages.
final class SearchMessagesFilterVoiceNote extends SearchMessagesFilter {
  
  /// **SearchMessagesFilterVoiceNote** *(searchMessagesFilterVoiceNote)* - child of SearchMessagesFilter
  ///
  /// Returns only voice note messages.
  const SearchMessagesFilterVoiceNote();
  
  /// Parse from a json
  factory SearchMessagesFilterVoiceNote.fromJson(Map<String, dynamic> json) => const SearchMessagesFilterVoiceNote();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  SearchMessagesFilterVoiceNote copyWith() => const SearchMessagesFilterVoiceNote();

  static const String objectType = 'searchMessagesFilterVoiceNote';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **SearchMessagesFilterPhotoAndVideo** *(searchMessagesFilterPhotoAndVideo)* - child of SearchMessagesFilter
///
/// Returns only photo and video messages.
final class SearchMessagesFilterPhotoAndVideo extends SearchMessagesFilter {
  
  /// **SearchMessagesFilterPhotoAndVideo** *(searchMessagesFilterPhotoAndVideo)* - child of SearchMessagesFilter
  ///
  /// Returns only photo and video messages.
  const SearchMessagesFilterPhotoAndVideo();
  
  /// Parse from a json
  factory SearchMessagesFilterPhotoAndVideo.fromJson(Map<String, dynamic> json) => const SearchMessagesFilterPhotoAndVideo();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  SearchMessagesFilterPhotoAndVideo copyWith() => const SearchMessagesFilterPhotoAndVideo();

  static const String objectType = 'searchMessagesFilterPhotoAndVideo';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **SearchMessagesFilterUrl** *(searchMessagesFilterUrl)* - child of SearchMessagesFilter
///
/// Returns only messages containing URLs.
final class SearchMessagesFilterUrl extends SearchMessagesFilter {
  
  /// **SearchMessagesFilterUrl** *(searchMessagesFilterUrl)* - child of SearchMessagesFilter
  ///
  /// Returns only messages containing URLs.
  const SearchMessagesFilterUrl();
  
  /// Parse from a json
  factory SearchMessagesFilterUrl.fromJson(Map<String, dynamic> json) => const SearchMessagesFilterUrl();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  SearchMessagesFilterUrl copyWith() => const SearchMessagesFilterUrl();

  static const String objectType = 'searchMessagesFilterUrl';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **SearchMessagesFilterChatPhoto** *(searchMessagesFilterChatPhoto)* - child of SearchMessagesFilter
///
/// Returns only messages containing chat photos.
final class SearchMessagesFilterChatPhoto extends SearchMessagesFilter {
  
  /// **SearchMessagesFilterChatPhoto** *(searchMessagesFilterChatPhoto)* - child of SearchMessagesFilter
  ///
  /// Returns only messages containing chat photos.
  const SearchMessagesFilterChatPhoto();
  
  /// Parse from a json
  factory SearchMessagesFilterChatPhoto.fromJson(Map<String, dynamic> json) => const SearchMessagesFilterChatPhoto();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  SearchMessagesFilterChatPhoto copyWith() => const SearchMessagesFilterChatPhoto();

  static const String objectType = 'searchMessagesFilterChatPhoto';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **SearchMessagesFilterVideoNote** *(searchMessagesFilterVideoNote)* - child of SearchMessagesFilter
///
/// Returns only video note messages.
final class SearchMessagesFilterVideoNote extends SearchMessagesFilter {
  
  /// **SearchMessagesFilterVideoNote** *(searchMessagesFilterVideoNote)* - child of SearchMessagesFilter
  ///
  /// Returns only video note messages.
  const SearchMessagesFilterVideoNote();
  
  /// Parse from a json
  factory SearchMessagesFilterVideoNote.fromJson(Map<String, dynamic> json) => const SearchMessagesFilterVideoNote();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  SearchMessagesFilterVideoNote copyWith() => const SearchMessagesFilterVideoNote();

  static const String objectType = 'searchMessagesFilterVideoNote';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **SearchMessagesFilterVoiceAndVideoNote** *(searchMessagesFilterVoiceAndVideoNote)* - child of SearchMessagesFilter
///
/// Returns only voice and video note messages.
final class SearchMessagesFilterVoiceAndVideoNote extends SearchMessagesFilter {
  
  /// **SearchMessagesFilterVoiceAndVideoNote** *(searchMessagesFilterVoiceAndVideoNote)* - child of SearchMessagesFilter
  ///
  /// Returns only voice and video note messages.
  const SearchMessagesFilterVoiceAndVideoNote();
  
  /// Parse from a json
  factory SearchMessagesFilterVoiceAndVideoNote.fromJson(Map<String, dynamic> json) => const SearchMessagesFilterVoiceAndVideoNote();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  SearchMessagesFilterVoiceAndVideoNote copyWith() => const SearchMessagesFilterVoiceAndVideoNote();

  static const String objectType = 'searchMessagesFilterVoiceAndVideoNote';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **SearchMessagesFilterMention** *(searchMessagesFilterMention)* - child of SearchMessagesFilter
///
/// Returns only messages with mentions of the current user, or messages that are replies to their messages.
final class SearchMessagesFilterMention extends SearchMessagesFilter {
  
  /// **SearchMessagesFilterMention** *(searchMessagesFilterMention)* - child of SearchMessagesFilter
  ///
  /// Returns only messages with mentions of the current user, or messages that are replies to their messages.
  const SearchMessagesFilterMention();
  
  /// Parse from a json
  factory SearchMessagesFilterMention.fromJson(Map<String, dynamic> json) => const SearchMessagesFilterMention();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  SearchMessagesFilterMention copyWith() => const SearchMessagesFilterMention();

  static const String objectType = 'searchMessagesFilterMention';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **SearchMessagesFilterUnreadMention** *(searchMessagesFilterUnreadMention)* - child of SearchMessagesFilter
///
/// Returns only messages with unread mentions of the current user, or messages that are replies to their messages. When using this filter the results can't be additionally filtered by a query, a message thread or by the sending user.
final class SearchMessagesFilterUnreadMention extends SearchMessagesFilter {
  
  /// **SearchMessagesFilterUnreadMention** *(searchMessagesFilterUnreadMention)* - child of SearchMessagesFilter
  ///
  /// Returns only messages with unread mentions of the current user, or messages that are replies to their messages. When using this filter the results can't be additionally filtered by a query, a message thread or by the sending user.
  const SearchMessagesFilterUnreadMention();
  
  /// Parse from a json
  factory SearchMessagesFilterUnreadMention.fromJson(Map<String, dynamic> json) => const SearchMessagesFilterUnreadMention();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  SearchMessagesFilterUnreadMention copyWith() => const SearchMessagesFilterUnreadMention();

  static const String objectType = 'searchMessagesFilterUnreadMention';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **SearchMessagesFilterUnreadReaction** *(searchMessagesFilterUnreadReaction)* - child of SearchMessagesFilter
///
/// Returns only messages with unread reactions for the current user. When using this filter the results can't be additionally filtered by a query, a message thread or by the sending user.
final class SearchMessagesFilterUnreadReaction extends SearchMessagesFilter {
  
  /// **SearchMessagesFilterUnreadReaction** *(searchMessagesFilterUnreadReaction)* - child of SearchMessagesFilter
  ///
  /// Returns only messages with unread reactions for the current user. When using this filter the results can't be additionally filtered by a query, a message thread or by the sending user.
  const SearchMessagesFilterUnreadReaction();
  
  /// Parse from a json
  factory SearchMessagesFilterUnreadReaction.fromJson(Map<String, dynamic> json) => const SearchMessagesFilterUnreadReaction();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  SearchMessagesFilterUnreadReaction copyWith() => const SearchMessagesFilterUnreadReaction();

  static const String objectType = 'searchMessagesFilterUnreadReaction';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **SearchMessagesFilterFailedToSend** *(searchMessagesFilterFailedToSend)* - child of SearchMessagesFilter
///
/// Returns only failed to send messages. This filter can be used only if the message database is used.
final class SearchMessagesFilterFailedToSend extends SearchMessagesFilter {
  
  /// **SearchMessagesFilterFailedToSend** *(searchMessagesFilterFailedToSend)* - child of SearchMessagesFilter
  ///
  /// Returns only failed to send messages. This filter can be used only if the message database is used.
  const SearchMessagesFilterFailedToSend();
  
  /// Parse from a json
  factory SearchMessagesFilterFailedToSend.fromJson(Map<String, dynamic> json) => const SearchMessagesFilterFailedToSend();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  SearchMessagesFilterFailedToSend copyWith() => const SearchMessagesFilterFailedToSend();

  static const String objectType = 'searchMessagesFilterFailedToSend';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **SearchMessagesFilterPinned** *(searchMessagesFilterPinned)* - child of SearchMessagesFilter
///
/// Returns only pinned messages.
final class SearchMessagesFilterPinned extends SearchMessagesFilter {
  
  /// **SearchMessagesFilterPinned** *(searchMessagesFilterPinned)* - child of SearchMessagesFilter
  ///
  /// Returns only pinned messages.
  const SearchMessagesFilterPinned();
  
  /// Parse from a json
  factory SearchMessagesFilterPinned.fromJson(Map<String, dynamic> json) => const SearchMessagesFilterPinned();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  SearchMessagesFilterPinned copyWith() => const SearchMessagesFilterPinned();

  static const String objectType = 'searchMessagesFilterPinned';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

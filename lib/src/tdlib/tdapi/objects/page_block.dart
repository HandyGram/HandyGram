part of '../tdapi.dart';

/// **PageBlock** *(pageBlock)* - parent
///
/// Describes a block of an instant view web page.
sealed class PageBlock extends TdObject {
  
  /// **PageBlock** *(pageBlock)* - parent
  ///
  /// Describes a block of an instant view web page.
  const PageBlock();
  
  /// a PageBlock return type can be :
  /// * [PageBlockTitle]
  /// * [PageBlockSubtitle]
  /// * [PageBlockAuthorDate]
  /// * [PageBlockHeader]
  /// * [PageBlockSubheader]
  /// * [PageBlockKicker]
  /// * [PageBlockParagraph]
  /// * [PageBlockPreformatted]
  /// * [PageBlockFooter]
  /// * [PageBlockDivider]
  /// * [PageBlockAnchor]
  /// * [PageBlockList]
  /// * [PageBlockBlockQuote]
  /// * [PageBlockPullQuote]
  /// * [PageBlockAnimation]
  /// * [PageBlockAudio]
  /// * [PageBlockPhoto]
  /// * [PageBlockVideo]
  /// * [PageBlockVoiceNote]
  /// * [PageBlockCover]
  /// * [PageBlockEmbedded]
  /// * [PageBlockEmbeddedPost]
  /// * [PageBlockCollage]
  /// * [PageBlockSlideshow]
  /// * [PageBlockChatLink]
  /// * [PageBlockTable]
  /// * [PageBlockDetails]
  /// * [PageBlockRelatedArticles]
  /// * [PageBlockMap]
  factory PageBlock.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case PageBlockTitle.objectType:
        return PageBlockTitle.fromJson(json);
      case PageBlockSubtitle.objectType:
        return PageBlockSubtitle.fromJson(json);
      case PageBlockAuthorDate.objectType:
        return PageBlockAuthorDate.fromJson(json);
      case PageBlockHeader.objectType:
        return PageBlockHeader.fromJson(json);
      case PageBlockSubheader.objectType:
        return PageBlockSubheader.fromJson(json);
      case PageBlockKicker.objectType:
        return PageBlockKicker.fromJson(json);
      case PageBlockParagraph.objectType:
        return PageBlockParagraph.fromJson(json);
      case PageBlockPreformatted.objectType:
        return PageBlockPreformatted.fromJson(json);
      case PageBlockFooter.objectType:
        return PageBlockFooter.fromJson(json);
      case PageBlockDivider.objectType:
        return PageBlockDivider.fromJson(json);
      case PageBlockAnchor.objectType:
        return PageBlockAnchor.fromJson(json);
      case PageBlockList.objectType:
        return PageBlockList.fromJson(json);
      case PageBlockBlockQuote.objectType:
        return PageBlockBlockQuote.fromJson(json);
      case PageBlockPullQuote.objectType:
        return PageBlockPullQuote.fromJson(json);
      case PageBlockAnimation.objectType:
        return PageBlockAnimation.fromJson(json);
      case PageBlockAudio.objectType:
        return PageBlockAudio.fromJson(json);
      case PageBlockPhoto.objectType:
        return PageBlockPhoto.fromJson(json);
      case PageBlockVideo.objectType:
        return PageBlockVideo.fromJson(json);
      case PageBlockVoiceNote.objectType:
        return PageBlockVoiceNote.fromJson(json);
      case PageBlockCover.objectType:
        return PageBlockCover.fromJson(json);
      case PageBlockEmbedded.objectType:
        return PageBlockEmbedded.fromJson(json);
      case PageBlockEmbeddedPost.objectType:
        return PageBlockEmbeddedPost.fromJson(json);
      case PageBlockCollage.objectType:
        return PageBlockCollage.fromJson(json);
      case PageBlockSlideshow.objectType:
        return PageBlockSlideshow.fromJson(json);
      case PageBlockChatLink.objectType:
        return PageBlockChatLink.fromJson(json);
      case PageBlockTable.objectType:
        return PageBlockTable.fromJson(json);
      case PageBlockDetails.objectType:
        return PageBlockDetails.fromJson(json);
      case PageBlockRelatedArticles.objectType:
        return PageBlockRelatedArticles.fromJson(json);
      case PageBlockMap.objectType:
        return PageBlockMap.fromJson(json);
      default:
        throw FormatException(
          "Unknown object ${json["@type"]} (expected child of PageBlock)",
          json,
        );
    }
  }
  
  @override
  Map<String, dynamic> toJson();

  
  PageBlock copyWith();

  static const String objectType = 'pageBlock';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **PageBlockTitle** *(pageBlockTitle)* - child of PageBlock
///
/// The title of a page.
///
/// * [title]: Title.
final class PageBlockTitle extends PageBlock {
  
  /// **PageBlockTitle** *(pageBlockTitle)* - child of PageBlock
  ///
  /// The title of a page.
  ///
  /// * [title]: Title.
  const PageBlockTitle({
    required this.title,
  });
  
  /// Title
  final RichText title;
  
  /// Parse from a json
  factory PageBlockTitle.fromJson(Map<String, dynamic> json) => PageBlockTitle(
    title: RichText.fromJson(json['title']),
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "title": title.toJson(),
		};
	}

  
  @override
  PageBlockTitle copyWith({
    RichText? title,
  }) => PageBlockTitle(
    title: title ?? this.title,
  );

  static const String objectType = 'pageBlockTitle';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **PageBlockSubtitle** *(pageBlockSubtitle)* - child of PageBlock
///
/// The subtitle of a page.
///
/// * [subtitle]: Subtitle.
final class PageBlockSubtitle extends PageBlock {
  
  /// **PageBlockSubtitle** *(pageBlockSubtitle)* - child of PageBlock
  ///
  /// The subtitle of a page.
  ///
  /// * [subtitle]: Subtitle.
  const PageBlockSubtitle({
    required this.subtitle,
  });
  
  /// Subtitle
  final RichText subtitle;
  
  /// Parse from a json
  factory PageBlockSubtitle.fromJson(Map<String, dynamic> json) => PageBlockSubtitle(
    subtitle: RichText.fromJson(json['subtitle']),
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "subtitle": subtitle.toJson(),
		};
	}

  
  @override
  PageBlockSubtitle copyWith({
    RichText? subtitle,
  }) => PageBlockSubtitle(
    subtitle: subtitle ?? this.subtitle,
  );

  static const String objectType = 'pageBlockSubtitle';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **PageBlockAuthorDate** *(pageBlockAuthorDate)* - child of PageBlock
///
/// The author and publishing date of a page.
///
/// * [author]: Author.
/// * [publishDate]: Point in time (Unix timestamp) when the article was published; 0 if unknown.
final class PageBlockAuthorDate extends PageBlock {
  
  /// **PageBlockAuthorDate** *(pageBlockAuthorDate)* - child of PageBlock
  ///
  /// The author and publishing date of a page.
  ///
  /// * [author]: Author.
  /// * [publishDate]: Point in time (Unix timestamp) when the article was published; 0 if unknown.
  const PageBlockAuthorDate({
    required this.author,
    required this.publishDate,
  });
  
  /// Author 
  final RichText author;

  /// Point in time (Unix timestamp) when the article was published; 0 if unknown
  final int publishDate;
  
  /// Parse from a json
  factory PageBlockAuthorDate.fromJson(Map<String, dynamic> json) => PageBlockAuthorDate(
    author: RichText.fromJson(json['author']),
    publishDate: json['publish_date'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "author": author.toJson(),
      "publish_date": publishDate,
		};
	}

  
  @override
  PageBlockAuthorDate copyWith({
    RichText? author,
    int? publishDate,
  }) => PageBlockAuthorDate(
    author: author ?? this.author,
    publishDate: publishDate ?? this.publishDate,
  );

  static const String objectType = 'pageBlockAuthorDate';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **PageBlockHeader** *(pageBlockHeader)* - child of PageBlock
///
/// A header.
///
/// * [header]: Header.
final class PageBlockHeader extends PageBlock {
  
  /// **PageBlockHeader** *(pageBlockHeader)* - child of PageBlock
  ///
  /// A header.
  ///
  /// * [header]: Header.
  const PageBlockHeader({
    required this.header,
  });
  
  /// Header
  final RichText header;
  
  /// Parse from a json
  factory PageBlockHeader.fromJson(Map<String, dynamic> json) => PageBlockHeader(
    header: RichText.fromJson(json['header']),
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "header": header.toJson(),
		};
	}

  
  @override
  PageBlockHeader copyWith({
    RichText? header,
  }) => PageBlockHeader(
    header: header ?? this.header,
  );

  static const String objectType = 'pageBlockHeader';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **PageBlockSubheader** *(pageBlockSubheader)* - child of PageBlock
///
/// A subheader.
///
/// * [subheader]: Subheader.
final class PageBlockSubheader extends PageBlock {
  
  /// **PageBlockSubheader** *(pageBlockSubheader)* - child of PageBlock
  ///
  /// A subheader.
  ///
  /// * [subheader]: Subheader.
  const PageBlockSubheader({
    required this.subheader,
  });
  
  /// Subheader
  final RichText subheader;
  
  /// Parse from a json
  factory PageBlockSubheader.fromJson(Map<String, dynamic> json) => PageBlockSubheader(
    subheader: RichText.fromJson(json['subheader']),
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "subheader": subheader.toJson(),
		};
	}

  
  @override
  PageBlockSubheader copyWith({
    RichText? subheader,
  }) => PageBlockSubheader(
    subheader: subheader ?? this.subheader,
  );

  static const String objectType = 'pageBlockSubheader';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **PageBlockKicker** *(pageBlockKicker)* - child of PageBlock
///
/// A kicker.
///
/// * [kicker]: Kicker.
final class PageBlockKicker extends PageBlock {
  
  /// **PageBlockKicker** *(pageBlockKicker)* - child of PageBlock
  ///
  /// A kicker.
  ///
  /// * [kicker]: Kicker.
  const PageBlockKicker({
    required this.kicker,
  });
  
  /// Kicker
  final RichText kicker;
  
  /// Parse from a json
  factory PageBlockKicker.fromJson(Map<String, dynamic> json) => PageBlockKicker(
    kicker: RichText.fromJson(json['kicker']),
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "kicker": kicker.toJson(),
		};
	}

  
  @override
  PageBlockKicker copyWith({
    RichText? kicker,
  }) => PageBlockKicker(
    kicker: kicker ?? this.kicker,
  );

  static const String objectType = 'pageBlockKicker';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **PageBlockParagraph** *(pageBlockParagraph)* - child of PageBlock
///
/// A text paragraph.
///
/// * [text]: Paragraph text.
final class PageBlockParagraph extends PageBlock {
  
  /// **PageBlockParagraph** *(pageBlockParagraph)* - child of PageBlock
  ///
  /// A text paragraph.
  ///
  /// * [text]: Paragraph text.
  const PageBlockParagraph({
    required this.text,
  });
  
  /// Paragraph text
  final RichText text;
  
  /// Parse from a json
  factory PageBlockParagraph.fromJson(Map<String, dynamic> json) => PageBlockParagraph(
    text: RichText.fromJson(json['text']),
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "text": text.toJson(),
		};
	}

  
  @override
  PageBlockParagraph copyWith({
    RichText? text,
  }) => PageBlockParagraph(
    text: text ?? this.text,
  );

  static const String objectType = 'pageBlockParagraph';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **PageBlockPreformatted** *(pageBlockPreformatted)* - child of PageBlock
///
/// A preformatted text paragraph.
///
/// * [text]: Paragraph text.
/// * [language]: Programming language for which the text needs to be formatted.
final class PageBlockPreformatted extends PageBlock {
  
  /// **PageBlockPreformatted** *(pageBlockPreformatted)* - child of PageBlock
  ///
  /// A preformatted text paragraph.
  ///
  /// * [text]: Paragraph text.
  /// * [language]: Programming language for which the text needs to be formatted.
  const PageBlockPreformatted({
    required this.text,
    required this.language,
  });
  
  /// Paragraph text 
  final RichText text;

  /// Programming language for which the text needs to be formatted
  final String language;
  
  /// Parse from a json
  factory PageBlockPreformatted.fromJson(Map<String, dynamic> json) => PageBlockPreformatted(
    text: RichText.fromJson(json['text']),
    language: json['language'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "text": text.toJson(),
      "language": language,
		};
	}

  
  @override
  PageBlockPreformatted copyWith({
    RichText? text,
    String? language,
  }) => PageBlockPreformatted(
    text: text ?? this.text,
    language: language ?? this.language,
  );

  static const String objectType = 'pageBlockPreformatted';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **PageBlockFooter** *(pageBlockFooter)* - child of PageBlock
///
/// The footer of a page.
///
/// * [footer]: Footer.
final class PageBlockFooter extends PageBlock {
  
  /// **PageBlockFooter** *(pageBlockFooter)* - child of PageBlock
  ///
  /// The footer of a page.
  ///
  /// * [footer]: Footer.
  const PageBlockFooter({
    required this.footer,
  });
  
  /// Footer
  final RichText footer;
  
  /// Parse from a json
  factory PageBlockFooter.fromJson(Map<String, dynamic> json) => PageBlockFooter(
    footer: RichText.fromJson(json['footer']),
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "footer": footer.toJson(),
		};
	}

  
  @override
  PageBlockFooter copyWith({
    RichText? footer,
  }) => PageBlockFooter(
    footer: footer ?? this.footer,
  );

  static const String objectType = 'pageBlockFooter';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **PageBlockDivider** *(pageBlockDivider)* - child of PageBlock
///
/// An empty block separating a page.
final class PageBlockDivider extends PageBlock {
  
  /// **PageBlockDivider** *(pageBlockDivider)* - child of PageBlock
  ///
  /// An empty block separating a page.
  const PageBlockDivider();
  
  /// Parse from a json
  factory PageBlockDivider.fromJson(Map<String, dynamic> json) => const PageBlockDivider();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  PageBlockDivider copyWith() => const PageBlockDivider();

  static const String objectType = 'pageBlockDivider';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **PageBlockAnchor** *(pageBlockAnchor)* - child of PageBlock
///
/// An invisible anchor on a page, which can be used in a URL to open the page from the specified anchor.
///
/// * [name]: Name of the anchor.
final class PageBlockAnchor extends PageBlock {
  
  /// **PageBlockAnchor** *(pageBlockAnchor)* - child of PageBlock
  ///
  /// An invisible anchor on a page, which can be used in a URL to open the page from the specified anchor.
  ///
  /// * [name]: Name of the anchor.
  const PageBlockAnchor({
    required this.name,
  });
  
  /// Name of the anchor
  final String name;
  
  /// Parse from a json
  factory PageBlockAnchor.fromJson(Map<String, dynamic> json) => PageBlockAnchor(
    name: json['name'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "name": name,
		};
	}

  
  @override
  PageBlockAnchor copyWith({
    String? name,
  }) => PageBlockAnchor(
    name: name ?? this.name,
  );

  static const String objectType = 'pageBlockAnchor';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **PageBlockList** *(pageBlockList)* - child of PageBlock
///
/// A list of data blocks.
///
/// * [items]: The items of the list.
final class PageBlockList extends PageBlock {
  
  /// **PageBlockList** *(pageBlockList)* - child of PageBlock
  ///
  /// A list of data blocks.
  ///
  /// * [items]: The items of the list.
  const PageBlockList({
    required this.items,
  });
  
  /// The items of the list
  final List<PageBlockListItem> items;
  
  /// Parse from a json
  factory PageBlockList.fromJson(Map<String, dynamic> json) => PageBlockList(
    items: List<PageBlockListItem>.from((json['items'] ?? []).map((item) => PageBlockListItem.fromJson(item)).toList()),
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "items": items.map((i) => i.toJson()).toList(),
		};
	}

  
  @override
  PageBlockList copyWith({
    List<PageBlockListItem>? items,
  }) => PageBlockList(
    items: items ?? this.items,
  );

  static const String objectType = 'pageBlockList';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **PageBlockBlockQuote** *(pageBlockBlockQuote)* - child of PageBlock
///
/// A block quote.
///
/// * [text]: Quote text.
/// * [credit]: Quote credit.
final class PageBlockBlockQuote extends PageBlock {
  
  /// **PageBlockBlockQuote** *(pageBlockBlockQuote)* - child of PageBlock
  ///
  /// A block quote.
  ///
  /// * [text]: Quote text.
  /// * [credit]: Quote credit.
  const PageBlockBlockQuote({
    required this.text,
    required this.credit,
  });
  
  /// Quote text
  final RichText text;

  /// Quote credit
  final RichText credit;
  
  /// Parse from a json
  factory PageBlockBlockQuote.fromJson(Map<String, dynamic> json) => PageBlockBlockQuote(
    text: RichText.fromJson(json['text']),
    credit: RichText.fromJson(json['credit']),
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "text": text.toJson(),
      "credit": credit.toJson(),
		};
	}

  
  @override
  PageBlockBlockQuote copyWith({
    RichText? text,
    RichText? credit,
  }) => PageBlockBlockQuote(
    text: text ?? this.text,
    credit: credit ?? this.credit,
  );

  static const String objectType = 'pageBlockBlockQuote';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **PageBlockPullQuote** *(pageBlockPullQuote)* - child of PageBlock
///
/// A pull quote.
///
/// * [text]: Quote text.
/// * [credit]: Quote credit.
final class PageBlockPullQuote extends PageBlock {
  
  /// **PageBlockPullQuote** *(pageBlockPullQuote)* - child of PageBlock
  ///
  /// A pull quote.
  ///
  /// * [text]: Quote text.
  /// * [credit]: Quote credit.
  const PageBlockPullQuote({
    required this.text,
    required this.credit,
  });
  
  /// Quote text
  final RichText text;

  /// Quote credit
  final RichText credit;
  
  /// Parse from a json
  factory PageBlockPullQuote.fromJson(Map<String, dynamic> json) => PageBlockPullQuote(
    text: RichText.fromJson(json['text']),
    credit: RichText.fromJson(json['credit']),
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "text": text.toJson(),
      "credit": credit.toJson(),
		};
	}

  
  @override
  PageBlockPullQuote copyWith({
    RichText? text,
    RichText? credit,
  }) => PageBlockPullQuote(
    text: text ?? this.text,
    credit: credit ?? this.credit,
  );

  static const String objectType = 'pageBlockPullQuote';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **PageBlockAnimation** *(pageBlockAnimation)* - child of PageBlock
///
/// An animation.
///
/// * [animation]: Animation file; may be null *(optional)*.
/// * [caption]: Animation caption.
/// * [needAutoplay]: True, if the animation must be played automatically.
final class PageBlockAnimation extends PageBlock {
  
  /// **PageBlockAnimation** *(pageBlockAnimation)* - child of PageBlock
  ///
  /// An animation.
  ///
  /// * [animation]: Animation file; may be null *(optional)*.
  /// * [caption]: Animation caption.
  /// * [needAutoplay]: True, if the animation must be played automatically.
  const PageBlockAnimation({
    this.animation,
    required this.caption,
    required this.needAutoplay,
  });
  
  /// Animation file; may be null
  final Animation? animation;

  /// Animation caption
  final PageBlockCaption caption;

  /// True, if the animation must be played automatically
  final bool needAutoplay;
  
  /// Parse from a json
  factory PageBlockAnimation.fromJson(Map<String, dynamic> json) => PageBlockAnimation(
    animation: json['animation'] == null ? null : Animation.fromJson(json['animation']),
    caption: PageBlockCaption.fromJson(json['caption']),
    needAutoplay: json['need_autoplay'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "animation": animation?.toJson(),
      "caption": caption.toJson(),
      "need_autoplay": needAutoplay,
		};
	}

  
  @override
  PageBlockAnimation copyWith({
    Animation? animation,
    PageBlockCaption? caption,
    bool? needAutoplay,
  }) => PageBlockAnimation(
    animation: animation ?? this.animation,
    caption: caption ?? this.caption,
    needAutoplay: needAutoplay ?? this.needAutoplay,
  );

  static const String objectType = 'pageBlockAnimation';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **PageBlockAudio** *(pageBlockAudio)* - child of PageBlock
///
/// An audio file.
///
/// * [audio]: Audio file; may be null *(optional)*.
/// * [caption]: Audio file caption.
final class PageBlockAudio extends PageBlock {
  
  /// **PageBlockAudio** *(pageBlockAudio)* - child of PageBlock
  ///
  /// An audio file.
  ///
  /// * [audio]: Audio file; may be null *(optional)*.
  /// * [caption]: Audio file caption.
  const PageBlockAudio({
    this.audio,
    required this.caption,
  });
  
  /// Audio file; may be null
  final Audio? audio;

  /// Audio file caption
  final PageBlockCaption caption;
  
  /// Parse from a json
  factory PageBlockAudio.fromJson(Map<String, dynamic> json) => PageBlockAudio(
    audio: json['audio'] == null ? null : Audio.fromJson(json['audio']),
    caption: PageBlockCaption.fromJson(json['caption']),
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "audio": audio?.toJson(),
      "caption": caption.toJson(),
		};
	}

  
  @override
  PageBlockAudio copyWith({
    Audio? audio,
    PageBlockCaption? caption,
  }) => PageBlockAudio(
    audio: audio ?? this.audio,
    caption: caption ?? this.caption,
  );

  static const String objectType = 'pageBlockAudio';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **PageBlockPhoto** *(pageBlockPhoto)* - child of PageBlock
///
/// A photo.
///
/// * [photo]: Photo file; may be null *(optional)*.
/// * [caption]: Photo caption.
/// * [url]: URL that needs to be opened when the photo is clicked.
final class PageBlockPhoto extends PageBlock {
  
  /// **PageBlockPhoto** *(pageBlockPhoto)* - child of PageBlock
  ///
  /// A photo.
  ///
  /// * [photo]: Photo file; may be null *(optional)*.
  /// * [caption]: Photo caption.
  /// * [url]: URL that needs to be opened when the photo is clicked.
  const PageBlockPhoto({
    this.photo,
    required this.caption,
    required this.url,
  });
  
  /// Photo file; may be null
  final Photo? photo;

  /// Photo caption
  final PageBlockCaption caption;

  /// URL that needs to be opened when the photo is clicked
  final String url;
  
  /// Parse from a json
  factory PageBlockPhoto.fromJson(Map<String, dynamic> json) => PageBlockPhoto(
    photo: json['photo'] == null ? null : Photo.fromJson(json['photo']),
    caption: PageBlockCaption.fromJson(json['caption']),
    url: json['url'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "photo": photo?.toJson(),
      "caption": caption.toJson(),
      "url": url,
		};
	}

  
  @override
  PageBlockPhoto copyWith({
    Photo? photo,
    PageBlockCaption? caption,
    String? url,
  }) => PageBlockPhoto(
    photo: photo ?? this.photo,
    caption: caption ?? this.caption,
    url: url ?? this.url,
  );

  static const String objectType = 'pageBlockPhoto';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **PageBlockVideo** *(pageBlockVideo)* - child of PageBlock
///
/// A video.
///
/// * [video]: Video file; may be null *(optional)*.
/// * [caption]: Video caption.
/// * [needAutoplay]: True, if the video must be played automatically.
/// * [isLooped]: True, if the video must be looped.
final class PageBlockVideo extends PageBlock {
  
  /// **PageBlockVideo** *(pageBlockVideo)* - child of PageBlock
  ///
  /// A video.
  ///
  /// * [video]: Video file; may be null *(optional)*.
  /// * [caption]: Video caption.
  /// * [needAutoplay]: True, if the video must be played automatically.
  /// * [isLooped]: True, if the video must be looped.
  const PageBlockVideo({
    this.video,
    required this.caption,
    required this.needAutoplay,
    required this.isLooped,
  });
  
  /// Video file; may be null
  final Video? video;

  /// Video caption
  final PageBlockCaption caption;

  /// True, if the video must be played automatically
  final bool needAutoplay;

  /// True, if the video must be looped
  final bool isLooped;
  
  /// Parse from a json
  factory PageBlockVideo.fromJson(Map<String, dynamic> json) => PageBlockVideo(
    video: json['video'] == null ? null : Video.fromJson(json['video']),
    caption: PageBlockCaption.fromJson(json['caption']),
    needAutoplay: json['need_autoplay'],
    isLooped: json['is_looped'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "video": video?.toJson(),
      "caption": caption.toJson(),
      "need_autoplay": needAutoplay,
      "is_looped": isLooped,
		};
	}

  
  @override
  PageBlockVideo copyWith({
    Video? video,
    PageBlockCaption? caption,
    bool? needAutoplay,
    bool? isLooped,
  }) => PageBlockVideo(
    video: video ?? this.video,
    caption: caption ?? this.caption,
    needAutoplay: needAutoplay ?? this.needAutoplay,
    isLooped: isLooped ?? this.isLooped,
  );

  static const String objectType = 'pageBlockVideo';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **PageBlockVoiceNote** *(pageBlockVoiceNote)* - child of PageBlock
///
/// A voice note.
///
/// * [voiceNote]: Voice note; may be null *(optional)*.
/// * [caption]: Voice note caption.
final class PageBlockVoiceNote extends PageBlock {
  
  /// **PageBlockVoiceNote** *(pageBlockVoiceNote)* - child of PageBlock
  ///
  /// A voice note.
  ///
  /// * [voiceNote]: Voice note; may be null *(optional)*.
  /// * [caption]: Voice note caption.
  const PageBlockVoiceNote({
    this.voiceNote,
    required this.caption,
  });
  
  /// Voice note; may be null
  final VoiceNote? voiceNote;

  /// Voice note caption
  final PageBlockCaption caption;
  
  /// Parse from a json
  factory PageBlockVoiceNote.fromJson(Map<String, dynamic> json) => PageBlockVoiceNote(
    voiceNote: json['voice_note'] == null ? null : VoiceNote.fromJson(json['voice_note']),
    caption: PageBlockCaption.fromJson(json['caption']),
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "voice_note": voiceNote?.toJson(),
      "caption": caption.toJson(),
		};
	}

  
  @override
  PageBlockVoiceNote copyWith({
    VoiceNote? voiceNote,
    PageBlockCaption? caption,
  }) => PageBlockVoiceNote(
    voiceNote: voiceNote ?? this.voiceNote,
    caption: caption ?? this.caption,
  );

  static const String objectType = 'pageBlockVoiceNote';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **PageBlockCover** *(pageBlockCover)* - child of PageBlock
///
/// A page cover.
///
/// * [cover]: Cover.
final class PageBlockCover extends PageBlock {
  
  /// **PageBlockCover** *(pageBlockCover)* - child of PageBlock
  ///
  /// A page cover.
  ///
  /// * [cover]: Cover.
  const PageBlockCover({
    required this.cover,
  });
  
  /// Cover
  final PageBlock cover;
  
  /// Parse from a json
  factory PageBlockCover.fromJson(Map<String, dynamic> json) => PageBlockCover(
    cover: PageBlock.fromJson(json['cover']),
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "cover": cover.toJson(),
		};
	}

  
  @override
  PageBlockCover copyWith({
    PageBlock? cover,
  }) => PageBlockCover(
    cover: cover ?? this.cover,
  );

  static const String objectType = 'pageBlockCover';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **PageBlockEmbedded** *(pageBlockEmbedded)* - child of PageBlock
///
/// An embedded web page.
///
/// * [url]: Web page URL, if available.
/// * [html]: HTML-markup of the embedded page.
/// * [posterPhoto]: Poster photo, if available; may be null *(optional)*.
/// * [width]: Block width; 0 if unknown.
/// * [height]: Block height; 0 if unknown.
/// * [caption]: Block caption.
/// * [isFullWidth]: True, if the block must be full width.
/// * [allowScrolling]: True, if scrolling needs to be allowed.
final class PageBlockEmbedded extends PageBlock {
  
  /// **PageBlockEmbedded** *(pageBlockEmbedded)* - child of PageBlock
  ///
  /// An embedded web page.
  ///
  /// * [url]: Web page URL, if available.
  /// * [html]: HTML-markup of the embedded page.
  /// * [posterPhoto]: Poster photo, if available; may be null *(optional)*.
  /// * [width]: Block width; 0 if unknown.
  /// * [height]: Block height; 0 if unknown.
  /// * [caption]: Block caption.
  /// * [isFullWidth]: True, if the block must be full width.
  /// * [allowScrolling]: True, if scrolling needs to be allowed.
  const PageBlockEmbedded({
    required this.url,
    required this.html,
    this.posterPhoto,
    required this.width,
    required this.height,
    required this.caption,
    required this.isFullWidth,
    required this.allowScrolling,
  });
  
  /// Web page URL, if available
  final String url;

  /// HTML-markup of the embedded page
  final String html;

  /// Poster photo, if available; may be null
  final Photo? posterPhoto;

  /// Block width; 0 if unknown
  final int width;

  /// Block height; 0 if unknown
  final int height;

  /// Block caption
  final PageBlockCaption caption;

  /// True, if the block must be full width
  final bool isFullWidth;

  /// True, if scrolling needs to be allowed
  final bool allowScrolling;
  
  /// Parse from a json
  factory PageBlockEmbedded.fromJson(Map<String, dynamic> json) => PageBlockEmbedded(
    url: json['url'],
    html: json['html'],
    posterPhoto: json['poster_photo'] == null ? null : Photo.fromJson(json['poster_photo']),
    width: json['width'],
    height: json['height'],
    caption: PageBlockCaption.fromJson(json['caption']),
    isFullWidth: json['is_full_width'],
    allowScrolling: json['allow_scrolling'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "url": url,
      "html": html,
      "poster_photo": posterPhoto?.toJson(),
      "width": width,
      "height": height,
      "caption": caption.toJson(),
      "is_full_width": isFullWidth,
      "allow_scrolling": allowScrolling,
		};
	}

  
  @override
  PageBlockEmbedded copyWith({
    String? url,
    String? html,
    Photo? posterPhoto,
    int? width,
    int? height,
    PageBlockCaption? caption,
    bool? isFullWidth,
    bool? allowScrolling,
  }) => PageBlockEmbedded(
    url: url ?? this.url,
    html: html ?? this.html,
    posterPhoto: posterPhoto ?? this.posterPhoto,
    width: width ?? this.width,
    height: height ?? this.height,
    caption: caption ?? this.caption,
    isFullWidth: isFullWidth ?? this.isFullWidth,
    allowScrolling: allowScrolling ?? this.allowScrolling,
  );

  static const String objectType = 'pageBlockEmbedded';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **PageBlockEmbeddedPost** *(pageBlockEmbeddedPost)* - child of PageBlock
///
/// An embedded post.
///
/// * [url]: Web page URL.
/// * [author]: Post author.
/// * [authorPhoto]: Post author photo; may be null *(optional)*.
/// * [date]: Point in time (Unix timestamp) when the post was created; 0 if unknown.
/// * [pageBlocks]: Post content.
/// * [caption]: Post caption.
final class PageBlockEmbeddedPost extends PageBlock {
  
  /// **PageBlockEmbeddedPost** *(pageBlockEmbeddedPost)* - child of PageBlock
  ///
  /// An embedded post.
  ///
  /// * [url]: Web page URL.
  /// * [author]: Post author.
  /// * [authorPhoto]: Post author photo; may be null *(optional)*.
  /// * [date]: Point in time (Unix timestamp) when the post was created; 0 if unknown.
  /// * [pageBlocks]: Post content.
  /// * [caption]: Post caption.
  const PageBlockEmbeddedPost({
    required this.url,
    required this.author,
    this.authorPhoto,
    required this.date,
    required this.pageBlocks,
    required this.caption,
  });
  
  /// Web page URL
  final String url;

  /// Post author
  final String author;

  /// Post author photo; may be null
  final Photo? authorPhoto;

  /// Point in time (Unix timestamp) when the post was created; 0 if unknown
  final int date;

  /// Post content
  final List<PageBlock> pageBlocks;

  /// Post caption
  final PageBlockCaption caption;
  
  /// Parse from a json
  factory PageBlockEmbeddedPost.fromJson(Map<String, dynamic> json) => PageBlockEmbeddedPost(
    url: json['url'],
    author: json['author'],
    authorPhoto: json['author_photo'] == null ? null : Photo.fromJson(json['author_photo']),
    date: json['date'],
    pageBlocks: List<PageBlock>.from((json['page_blocks'] ?? []).map((item) => PageBlock.fromJson(item)).toList()),
    caption: PageBlockCaption.fromJson(json['caption']),
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "url": url,
      "author": author,
      "author_photo": authorPhoto?.toJson(),
      "date": date,
      "page_blocks": pageBlocks.map((i) => i.toJson()).toList(),
      "caption": caption.toJson(),
		};
	}

  
  @override
  PageBlockEmbeddedPost copyWith({
    String? url,
    String? author,
    Photo? authorPhoto,
    int? date,
    List<PageBlock>? pageBlocks,
    PageBlockCaption? caption,
  }) => PageBlockEmbeddedPost(
    url: url ?? this.url,
    author: author ?? this.author,
    authorPhoto: authorPhoto ?? this.authorPhoto,
    date: date ?? this.date,
    pageBlocks: pageBlocks ?? this.pageBlocks,
    caption: caption ?? this.caption,
  );

  static const String objectType = 'pageBlockEmbeddedPost';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **PageBlockCollage** *(pageBlockCollage)* - child of PageBlock
///
/// A collage.
///
/// * [pageBlocks]: Collage item contents.
/// * [caption]: Block caption.
final class PageBlockCollage extends PageBlock {
  
  /// **PageBlockCollage** *(pageBlockCollage)* - child of PageBlock
  ///
  /// A collage.
  ///
  /// * [pageBlocks]: Collage item contents.
  /// * [caption]: Block caption.
  const PageBlockCollage({
    required this.pageBlocks,
    required this.caption,
  });
  
  /// Collage item contents
  final List<PageBlock> pageBlocks;

  /// Block caption
  final PageBlockCaption caption;
  
  /// Parse from a json
  factory PageBlockCollage.fromJson(Map<String, dynamic> json) => PageBlockCollage(
    pageBlocks: List<PageBlock>.from((json['page_blocks'] ?? []).map((item) => PageBlock.fromJson(item)).toList()),
    caption: PageBlockCaption.fromJson(json['caption']),
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "page_blocks": pageBlocks.map((i) => i.toJson()).toList(),
      "caption": caption.toJson(),
		};
	}

  
  @override
  PageBlockCollage copyWith({
    List<PageBlock>? pageBlocks,
    PageBlockCaption? caption,
  }) => PageBlockCollage(
    pageBlocks: pageBlocks ?? this.pageBlocks,
    caption: caption ?? this.caption,
  );

  static const String objectType = 'pageBlockCollage';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **PageBlockSlideshow** *(pageBlockSlideshow)* - child of PageBlock
///
/// A slideshow.
///
/// * [pageBlocks]: Slideshow item contents.
/// * [caption]: Block caption.
final class PageBlockSlideshow extends PageBlock {
  
  /// **PageBlockSlideshow** *(pageBlockSlideshow)* - child of PageBlock
  ///
  /// A slideshow.
  ///
  /// * [pageBlocks]: Slideshow item contents.
  /// * [caption]: Block caption.
  const PageBlockSlideshow({
    required this.pageBlocks,
    required this.caption,
  });
  
  /// Slideshow item contents
  final List<PageBlock> pageBlocks;

  /// Block caption
  final PageBlockCaption caption;
  
  /// Parse from a json
  factory PageBlockSlideshow.fromJson(Map<String, dynamic> json) => PageBlockSlideshow(
    pageBlocks: List<PageBlock>.from((json['page_blocks'] ?? []).map((item) => PageBlock.fromJson(item)).toList()),
    caption: PageBlockCaption.fromJson(json['caption']),
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "page_blocks": pageBlocks.map((i) => i.toJson()).toList(),
      "caption": caption.toJson(),
		};
	}

  
  @override
  PageBlockSlideshow copyWith({
    List<PageBlock>? pageBlocks,
    PageBlockCaption? caption,
  }) => PageBlockSlideshow(
    pageBlocks: pageBlocks ?? this.pageBlocks,
    caption: caption ?? this.caption,
  );

  static const String objectType = 'pageBlockSlideshow';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **PageBlockChatLink** *(pageBlockChatLink)* - child of PageBlock
///
/// A link to a chat.
///
/// * [title]: Chat title.
/// * [photo]: Chat photo; may be null *(optional)*.
/// * [username]: Chat username by which all other information about the chat can be resolved.
final class PageBlockChatLink extends PageBlock {
  
  /// **PageBlockChatLink** *(pageBlockChatLink)* - child of PageBlock
  ///
  /// A link to a chat.
  ///
  /// * [title]: Chat title.
  /// * [photo]: Chat photo; may be null *(optional)*.
  /// * [username]: Chat username by which all other information about the chat can be resolved.
  const PageBlockChatLink({
    required this.title,
    this.photo,
    required this.username,
  });
  
  /// Chat title
  final String title;

  /// Chat photo; may be null
  final ChatPhotoInfo? photo;

  /// Chat username by which all other information about the chat can be resolved
  final String username;
  
  /// Parse from a json
  factory PageBlockChatLink.fromJson(Map<String, dynamic> json) => PageBlockChatLink(
    title: json['title'],
    photo: json['photo'] == null ? null : ChatPhotoInfo.fromJson(json['photo']),
    username: json['username'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "title": title,
      "photo": photo?.toJson(),
      "username": username,
		};
	}

  
  @override
  PageBlockChatLink copyWith({
    String? title,
    ChatPhotoInfo? photo,
    String? username,
  }) => PageBlockChatLink(
    title: title ?? this.title,
    photo: photo ?? this.photo,
    username: username ?? this.username,
  );

  static const String objectType = 'pageBlockChatLink';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **PageBlockTable** *(pageBlockTable)* - child of PageBlock
///
/// A table.
///
/// * [caption]: Table caption.
/// * [cells]: Table cells.
/// * [isBordered]: True, if the table is bordered.
/// * [isStriped]: True, if the table is striped.
final class PageBlockTable extends PageBlock {
  
  /// **PageBlockTable** *(pageBlockTable)* - child of PageBlock
  ///
  /// A table.
  ///
  /// * [caption]: Table caption.
  /// * [cells]: Table cells.
  /// * [isBordered]: True, if the table is bordered.
  /// * [isStriped]: True, if the table is striped.
  const PageBlockTable({
    required this.caption,
    required this.cells,
    required this.isBordered,
    required this.isStriped,
  });
  
  /// Table caption
  final RichText caption;

  /// Table cells
  final List<List<PageBlockTableCell>> cells;

  /// True, if the table is bordered
  final bool isBordered;

  /// True, if the table is striped
  final bool isStriped;
  
  /// Parse from a json
  factory PageBlockTable.fromJson(Map<String, dynamic> json) => PageBlockTable(
    caption: RichText.fromJson(json['caption']),
    cells: List<List<PageBlockTableCell>>.from((json['cells'] ?? []).map((item) => List<PageBlockTableCell>.from((item ?? []).map((innerItem) => PageBlockTableCell.fromJson(innerItem)).toList())).toList()),
    isBordered: json['is_bordered'],
    isStriped: json['is_striped'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "caption": caption.toJson(),
      "cells": cells.map((i) => i.map((ii) => ii.toJson()).toList()).toList(),
      "is_bordered": isBordered,
      "is_striped": isStriped,
		};
	}

  
  @override
  PageBlockTable copyWith({
    RichText? caption,
    List<List<PageBlockTableCell>>? cells,
    bool? isBordered,
    bool? isStriped,
  }) => PageBlockTable(
    caption: caption ?? this.caption,
    cells: cells ?? this.cells,
    isBordered: isBordered ?? this.isBordered,
    isStriped: isStriped ?? this.isStriped,
  );

  static const String objectType = 'pageBlockTable';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **PageBlockDetails** *(pageBlockDetails)* - child of PageBlock
///
/// A collapsible block.
///
/// * [header]: Always visible heading for the block.
/// * [pageBlocks]: Block contents.
/// * [isOpen]: True, if the block is open by default.
final class PageBlockDetails extends PageBlock {
  
  /// **PageBlockDetails** *(pageBlockDetails)* - child of PageBlock
  ///
  /// A collapsible block.
  ///
  /// * [header]: Always visible heading for the block.
  /// * [pageBlocks]: Block contents.
  /// * [isOpen]: True, if the block is open by default.
  const PageBlockDetails({
    required this.header,
    required this.pageBlocks,
    required this.isOpen,
  });
  
  /// Always visible heading for the block
  final RichText header;

  /// Block contents
  final List<PageBlock> pageBlocks;

  /// True, if the block is open by default
  final bool isOpen;
  
  /// Parse from a json
  factory PageBlockDetails.fromJson(Map<String, dynamic> json) => PageBlockDetails(
    header: RichText.fromJson(json['header']),
    pageBlocks: List<PageBlock>.from((json['page_blocks'] ?? []).map((item) => PageBlock.fromJson(item)).toList()),
    isOpen: json['is_open'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "header": header.toJson(),
      "page_blocks": pageBlocks.map((i) => i.toJson()).toList(),
      "is_open": isOpen,
		};
	}

  
  @override
  PageBlockDetails copyWith({
    RichText? header,
    List<PageBlock>? pageBlocks,
    bool? isOpen,
  }) => PageBlockDetails(
    header: header ?? this.header,
    pageBlocks: pageBlocks ?? this.pageBlocks,
    isOpen: isOpen ?? this.isOpen,
  );

  static const String objectType = 'pageBlockDetails';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **PageBlockRelatedArticles** *(pageBlockRelatedArticles)* - child of PageBlock
///
/// Related articles.
///
/// * [header]: Block header.
/// * [articles]: List of related articles.
final class PageBlockRelatedArticles extends PageBlock {
  
  /// **PageBlockRelatedArticles** *(pageBlockRelatedArticles)* - child of PageBlock
  ///
  /// Related articles.
  ///
  /// * [header]: Block header.
  /// * [articles]: List of related articles.
  const PageBlockRelatedArticles({
    required this.header,
    required this.articles,
  });
  
  /// Block header
  final RichText header;

  /// List of related articles
  final List<PageBlockRelatedArticle> articles;
  
  /// Parse from a json
  factory PageBlockRelatedArticles.fromJson(Map<String, dynamic> json) => PageBlockRelatedArticles(
    header: RichText.fromJson(json['header']),
    articles: List<PageBlockRelatedArticle>.from((json['articles'] ?? []).map((item) => PageBlockRelatedArticle.fromJson(item)).toList()),
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "header": header.toJson(),
      "articles": articles.map((i) => i.toJson()).toList(),
		};
	}

  
  @override
  PageBlockRelatedArticles copyWith({
    RichText? header,
    List<PageBlockRelatedArticle>? articles,
  }) => PageBlockRelatedArticles(
    header: header ?? this.header,
    articles: articles ?? this.articles,
  );

  static const String objectType = 'pageBlockRelatedArticles';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **PageBlockMap** *(pageBlockMap)* - child of PageBlock
///
/// A map.
///
/// * [location]: Location of the map center.
/// * [zoom]: Map zoom level.
/// * [width]: Map width.
/// * [height]: Map height.
/// * [caption]: Block caption.
final class PageBlockMap extends PageBlock {
  
  /// **PageBlockMap** *(pageBlockMap)* - child of PageBlock
  ///
  /// A map.
  ///
  /// * [location]: Location of the map center.
  /// * [zoom]: Map zoom level.
  /// * [width]: Map width.
  /// * [height]: Map height.
  /// * [caption]: Block caption.
  const PageBlockMap({
    required this.location,
    required this.zoom,
    required this.width,
    required this.height,
    required this.caption,
  });
  
  /// Location of the map center
  final Location location;

  /// Map zoom level
  final int zoom;

  /// Map width
  final int width;

  /// Map height
  final int height;

  /// Block caption
  final PageBlockCaption caption;
  
  /// Parse from a json
  factory PageBlockMap.fromJson(Map<String, dynamic> json) => PageBlockMap(
    location: Location.fromJson(json['location']),
    zoom: json['zoom'],
    width: json['width'],
    height: json['height'],
    caption: PageBlockCaption.fromJson(json['caption']),
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "location": location.toJson(),
      "zoom": zoom,
      "width": width,
      "height": height,
      "caption": caption.toJson(),
		};
	}

  
  @override
  PageBlockMap copyWith({
    Location? location,
    int? zoom,
    int? width,
    int? height,
    PageBlockCaption? caption,
  }) => PageBlockMap(
    location: location ?? this.location,
    zoom: zoom ?? this.zoom,
    width: width ?? this.width,
    height: height ?? this.height,
    caption: caption ?? this.caption,
  );

  static const String objectType = 'pageBlockMap';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

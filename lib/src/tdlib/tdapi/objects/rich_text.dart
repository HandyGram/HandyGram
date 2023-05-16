part of '../tdapi.dart';

/// **RichText** *(richText)* - parent
///
/// Describes a text object inside an instant-view web page.
sealed class RichText extends TdObject {
  
  /// **RichText** *(richText)* - parent
  ///
  /// Describes a text object inside an instant-view web page.
  const RichText();
  
  /// a RichText return type can be :
  /// * [RichTextPlain]
  /// * [RichTextBold]
  /// * [RichTextItalic]
  /// * [RichTextUnderline]
  /// * [RichTextStrikethrough]
  /// * [RichTextFixed]
  /// * [RichTextUrl]
  /// * [RichTextEmailAddress]
  /// * [RichTextSubscript]
  /// * [RichTextSuperscript]
  /// * [RichTextMarked]
  /// * [RichTextPhoneNumber]
  /// * [RichTextIcon]
  /// * [RichTextReference]
  /// * [RichTextAnchor]
  /// * [RichTextAnchorLink]
  /// * [RichTexts]
  factory RichText.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case RichTextPlain.objectType:
        return RichTextPlain.fromJson(json);
      case RichTextBold.objectType:
        return RichTextBold.fromJson(json);
      case RichTextItalic.objectType:
        return RichTextItalic.fromJson(json);
      case RichTextUnderline.objectType:
        return RichTextUnderline.fromJson(json);
      case RichTextStrikethrough.objectType:
        return RichTextStrikethrough.fromJson(json);
      case RichTextFixed.objectType:
        return RichTextFixed.fromJson(json);
      case RichTextUrl.objectType:
        return RichTextUrl.fromJson(json);
      case RichTextEmailAddress.objectType:
        return RichTextEmailAddress.fromJson(json);
      case RichTextSubscript.objectType:
        return RichTextSubscript.fromJson(json);
      case RichTextSuperscript.objectType:
        return RichTextSuperscript.fromJson(json);
      case RichTextMarked.objectType:
        return RichTextMarked.fromJson(json);
      case RichTextPhoneNumber.objectType:
        return RichTextPhoneNumber.fromJson(json);
      case RichTextIcon.objectType:
        return RichTextIcon.fromJson(json);
      case RichTextReference.objectType:
        return RichTextReference.fromJson(json);
      case RichTextAnchor.objectType:
        return RichTextAnchor.fromJson(json);
      case RichTextAnchorLink.objectType:
        return RichTextAnchorLink.fromJson(json);
      case RichTexts.objectType:
        return RichTexts.fromJson(json);
      default:
        throw FormatException(
          "Unknown object ${json["@type"]} (expected child of RichText)",
          json,
        );
    }
  }
  
  @override
  Map<String, dynamic> toJson();

  
  RichText copyWith();

  static const String objectType = 'richText';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **RichTextPlain** *(richTextPlain)* - child of RichText
///
/// A plain text.
///
/// * [text]: Text.
final class RichTextPlain extends RichText {
  
  /// **RichTextPlain** *(richTextPlain)* - child of RichText
  ///
  /// A plain text.
  ///
  /// * [text]: Text.
  const RichTextPlain({
    required this.text,
  });
  
  /// Text
  final String text;
  
  /// Parse from a json
  factory RichTextPlain.fromJson(Map<String, dynamic> json) => RichTextPlain(
    text: json['text'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "text": text,
		};
	}

  
  @override
  RichTextPlain copyWith({
    String? text,
  }) => RichTextPlain(
    text: text ?? this.text,
  );

  static const String objectType = 'richTextPlain';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **RichTextBold** *(richTextBold)* - child of RichText
///
/// A bold rich text.
///
/// * [text]: Text.
final class RichTextBold extends RichText {
  
  /// **RichTextBold** *(richTextBold)* - child of RichText
  ///
  /// A bold rich text.
  ///
  /// * [text]: Text.
  const RichTextBold({
    required this.text,
  });
  
  /// Text
  final RichText text;
  
  /// Parse from a json
  factory RichTextBold.fromJson(Map<String, dynamic> json) => RichTextBold(
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
  RichTextBold copyWith({
    RichText? text,
  }) => RichTextBold(
    text: text ?? this.text,
  );

  static const String objectType = 'richTextBold';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **RichTextItalic** *(richTextItalic)* - child of RichText
///
/// An italicized rich text.
///
/// * [text]: Text.
final class RichTextItalic extends RichText {
  
  /// **RichTextItalic** *(richTextItalic)* - child of RichText
  ///
  /// An italicized rich text.
  ///
  /// * [text]: Text.
  const RichTextItalic({
    required this.text,
  });
  
  /// Text
  final RichText text;
  
  /// Parse from a json
  factory RichTextItalic.fromJson(Map<String, dynamic> json) => RichTextItalic(
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
  RichTextItalic copyWith({
    RichText? text,
  }) => RichTextItalic(
    text: text ?? this.text,
  );

  static const String objectType = 'richTextItalic';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **RichTextUnderline** *(richTextUnderline)* - child of RichText
///
/// An underlined rich text.
///
/// * [text]: Text.
final class RichTextUnderline extends RichText {
  
  /// **RichTextUnderline** *(richTextUnderline)* - child of RichText
  ///
  /// An underlined rich text.
  ///
  /// * [text]: Text.
  const RichTextUnderline({
    required this.text,
  });
  
  /// Text
  final RichText text;
  
  /// Parse from a json
  factory RichTextUnderline.fromJson(Map<String, dynamic> json) => RichTextUnderline(
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
  RichTextUnderline copyWith({
    RichText? text,
  }) => RichTextUnderline(
    text: text ?? this.text,
  );

  static const String objectType = 'richTextUnderline';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **RichTextStrikethrough** *(richTextStrikethrough)* - child of RichText
///
/// A strikethrough rich text.
///
/// * [text]: Text.
final class RichTextStrikethrough extends RichText {
  
  /// **RichTextStrikethrough** *(richTextStrikethrough)* - child of RichText
  ///
  /// A strikethrough rich text.
  ///
  /// * [text]: Text.
  const RichTextStrikethrough({
    required this.text,
  });
  
  /// Text
  final RichText text;
  
  /// Parse from a json
  factory RichTextStrikethrough.fromJson(Map<String, dynamic> json) => RichTextStrikethrough(
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
  RichTextStrikethrough copyWith({
    RichText? text,
  }) => RichTextStrikethrough(
    text: text ?? this.text,
  );

  static const String objectType = 'richTextStrikethrough';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **RichTextFixed** *(richTextFixed)* - child of RichText
///
/// A fixed-width rich text.
///
/// * [text]: Text.
final class RichTextFixed extends RichText {
  
  /// **RichTextFixed** *(richTextFixed)* - child of RichText
  ///
  /// A fixed-width rich text.
  ///
  /// * [text]: Text.
  const RichTextFixed({
    required this.text,
  });
  
  /// Text
  final RichText text;
  
  /// Parse from a json
  factory RichTextFixed.fromJson(Map<String, dynamic> json) => RichTextFixed(
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
  RichTextFixed copyWith({
    RichText? text,
  }) => RichTextFixed(
    text: text ?? this.text,
  );

  static const String objectType = 'richTextFixed';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **RichTextUrl** *(richTextUrl)* - child of RichText
///
/// A rich text URL link.
///
/// * [text]: Text.
/// * [url]: URL.
/// * [isCached]: True, if the URL has cached instant view server-side.
final class RichTextUrl extends RichText {
  
  /// **RichTextUrl** *(richTextUrl)* - child of RichText
  ///
  /// A rich text URL link.
  ///
  /// * [text]: Text.
  /// * [url]: URL.
  /// * [isCached]: True, if the URL has cached instant view server-side.
  const RichTextUrl({
    required this.text,
    required this.url,
    required this.isCached,
  });
  
  /// Text 
  final RichText text;

  /// URL 
  final String url;

  /// True, if the URL has cached instant view server-side
  final bool isCached;
  
  /// Parse from a json
  factory RichTextUrl.fromJson(Map<String, dynamic> json) => RichTextUrl(
    text: RichText.fromJson(json['text']),
    url: json['url'],
    isCached: json['is_cached'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "text": text.toJson(),
      "url": url,
      "is_cached": isCached,
		};
	}

  
  @override
  RichTextUrl copyWith({
    RichText? text,
    String? url,
    bool? isCached,
  }) => RichTextUrl(
    text: text ?? this.text,
    url: url ?? this.url,
    isCached: isCached ?? this.isCached,
  );

  static const String objectType = 'richTextUrl';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **RichTextEmailAddress** *(richTextEmailAddress)* - child of RichText
///
/// A rich text email link.
///
/// * [text]: Text.
/// * [emailAddress]: Email address.
final class RichTextEmailAddress extends RichText {
  
  /// **RichTextEmailAddress** *(richTextEmailAddress)* - child of RichText
  ///
  /// A rich text email link.
  ///
  /// * [text]: Text.
  /// * [emailAddress]: Email address.
  const RichTextEmailAddress({
    required this.text,
    required this.emailAddress,
  });
  
  /// Text 
  final RichText text;

  /// Email address
  final String emailAddress;
  
  /// Parse from a json
  factory RichTextEmailAddress.fromJson(Map<String, dynamic> json) => RichTextEmailAddress(
    text: RichText.fromJson(json['text']),
    emailAddress: json['email_address'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "text": text.toJson(),
      "email_address": emailAddress,
		};
	}

  
  @override
  RichTextEmailAddress copyWith({
    RichText? text,
    String? emailAddress,
  }) => RichTextEmailAddress(
    text: text ?? this.text,
    emailAddress: emailAddress ?? this.emailAddress,
  );

  static const String objectType = 'richTextEmailAddress';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **RichTextSubscript** *(richTextSubscript)* - child of RichText
///
/// A subscript rich text.
///
/// * [text]: Text.
final class RichTextSubscript extends RichText {
  
  /// **RichTextSubscript** *(richTextSubscript)* - child of RichText
  ///
  /// A subscript rich text.
  ///
  /// * [text]: Text.
  const RichTextSubscript({
    required this.text,
  });
  
  /// Text
  final RichText text;
  
  /// Parse from a json
  factory RichTextSubscript.fromJson(Map<String, dynamic> json) => RichTextSubscript(
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
  RichTextSubscript copyWith({
    RichText? text,
  }) => RichTextSubscript(
    text: text ?? this.text,
  );

  static const String objectType = 'richTextSubscript';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **RichTextSuperscript** *(richTextSuperscript)* - child of RichText
///
/// A superscript rich text.
///
/// * [text]: Text.
final class RichTextSuperscript extends RichText {
  
  /// **RichTextSuperscript** *(richTextSuperscript)* - child of RichText
  ///
  /// A superscript rich text.
  ///
  /// * [text]: Text.
  const RichTextSuperscript({
    required this.text,
  });
  
  /// Text
  final RichText text;
  
  /// Parse from a json
  factory RichTextSuperscript.fromJson(Map<String, dynamic> json) => RichTextSuperscript(
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
  RichTextSuperscript copyWith({
    RichText? text,
  }) => RichTextSuperscript(
    text: text ?? this.text,
  );

  static const String objectType = 'richTextSuperscript';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **RichTextMarked** *(richTextMarked)* - child of RichText
///
/// A marked rich text.
///
/// * [text]: Text.
final class RichTextMarked extends RichText {
  
  /// **RichTextMarked** *(richTextMarked)* - child of RichText
  ///
  /// A marked rich text.
  ///
  /// * [text]: Text.
  const RichTextMarked({
    required this.text,
  });
  
  /// Text
  final RichText text;
  
  /// Parse from a json
  factory RichTextMarked.fromJson(Map<String, dynamic> json) => RichTextMarked(
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
  RichTextMarked copyWith({
    RichText? text,
  }) => RichTextMarked(
    text: text ?? this.text,
  );

  static const String objectType = 'richTextMarked';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **RichTextPhoneNumber** *(richTextPhoneNumber)* - child of RichText
///
/// A rich text phone number.
///
/// * [text]: Text.
/// * [phoneNumber]: Phone number.
final class RichTextPhoneNumber extends RichText {
  
  /// **RichTextPhoneNumber** *(richTextPhoneNumber)* - child of RichText
  ///
  /// A rich text phone number.
  ///
  /// * [text]: Text.
  /// * [phoneNumber]: Phone number.
  const RichTextPhoneNumber({
    required this.text,
    required this.phoneNumber,
  });
  
  /// Text 
  final RichText text;

  /// Phone number
  final String phoneNumber;
  
  /// Parse from a json
  factory RichTextPhoneNumber.fromJson(Map<String, dynamic> json) => RichTextPhoneNumber(
    text: RichText.fromJson(json['text']),
    phoneNumber: json['phone_number'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "text": text.toJson(),
      "phone_number": phoneNumber,
		};
	}

  
  @override
  RichTextPhoneNumber copyWith({
    RichText? text,
    String? phoneNumber,
  }) => RichTextPhoneNumber(
    text: text ?? this.text,
    phoneNumber: phoneNumber ?? this.phoneNumber,
  );

  static const String objectType = 'richTextPhoneNumber';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **RichTextIcon** *(richTextIcon)* - child of RichText
///
/// A small image inside the text.
///
/// * [document]: The image represented as a document. The image can be in GIF, JPEG or PNG format.
/// * [width]: Width of a bounding box in which the image must be shown; 0 if unknown.
/// * [height]: Height of a bounding box in which the image must be shown; 0 if unknown.
final class RichTextIcon extends RichText {
  
  /// **RichTextIcon** *(richTextIcon)* - child of RichText
  ///
  /// A small image inside the text.
  ///
  /// * [document]: The image represented as a document. The image can be in GIF, JPEG or PNG format.
  /// * [width]: Width of a bounding box in which the image must be shown; 0 if unknown.
  /// * [height]: Height of a bounding box in which the image must be shown; 0 if unknown.
  const RichTextIcon({
    required this.document,
    required this.width,
    required this.height,
  });
  
  /// The image represented as a document. The image can be in GIF, JPEG or PNG format
  final Document document;

  /// Width of a bounding box in which the image must be shown; 0 if unknown
  final int width;

  /// Height of a bounding box in which the image must be shown; 0 if unknown
  final int height;
  
  /// Parse from a json
  factory RichTextIcon.fromJson(Map<String, dynamic> json) => RichTextIcon(
    document: Document.fromJson(json['document']),
    width: json['width'],
    height: json['height'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "document": document.toJson(),
      "width": width,
      "height": height,
		};
	}

  
  @override
  RichTextIcon copyWith({
    Document? document,
    int? width,
    int? height,
  }) => RichTextIcon(
    document: document ?? this.document,
    width: width ?? this.width,
    height: height ?? this.height,
  );

  static const String objectType = 'richTextIcon';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **RichTextReference** *(richTextReference)* - child of RichText
///
/// A reference to a richTexts object on the same web page.
///
/// * [text]: The text.
/// * [anchorName]: The name of a richTextAnchor object, which is the first element of the target richTexts object.
/// * [url]: An HTTP URL, opening the reference.
final class RichTextReference extends RichText {
  
  /// **RichTextReference** *(richTextReference)* - child of RichText
  ///
  /// A reference to a richTexts object on the same web page.
  ///
  /// * [text]: The text.
  /// * [anchorName]: The name of a richTextAnchor object, which is the first element of the target richTexts object.
  /// * [url]: An HTTP URL, opening the reference.
  const RichTextReference({
    required this.text,
    required this.anchorName,
    required this.url,
  });
  
  /// The text 
  final RichText text;

  /// The name of a richTextAnchor object, which is the first element of the target richTexts object 
  final String anchorName;

  /// An HTTP URL, opening the reference
  final String url;
  
  /// Parse from a json
  factory RichTextReference.fromJson(Map<String, dynamic> json) => RichTextReference(
    text: RichText.fromJson(json['text']),
    anchorName: json['anchor_name'],
    url: json['url'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "text": text.toJson(),
      "anchor_name": anchorName,
      "url": url,
		};
	}

  
  @override
  RichTextReference copyWith({
    RichText? text,
    String? anchorName,
    String? url,
  }) => RichTextReference(
    text: text ?? this.text,
    anchorName: anchorName ?? this.anchorName,
    url: url ?? this.url,
  );

  static const String objectType = 'richTextReference';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **RichTextAnchor** *(richTextAnchor)* - child of RichText
///
/// An anchor.
///
/// * [name]: Anchor name.
final class RichTextAnchor extends RichText {
  
  /// **RichTextAnchor** *(richTextAnchor)* - child of RichText
  ///
  /// An anchor.
  ///
  /// * [name]: Anchor name.
  const RichTextAnchor({
    required this.name,
  });
  
  /// Anchor name
  final String name;
  
  /// Parse from a json
  factory RichTextAnchor.fromJson(Map<String, dynamic> json) => RichTextAnchor(
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
  RichTextAnchor copyWith({
    String? name,
  }) => RichTextAnchor(
    name: name ?? this.name,
  );

  static const String objectType = 'richTextAnchor';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **RichTextAnchorLink** *(richTextAnchorLink)* - child of RichText
///
/// A link to an anchor on the same web page.
///
/// * [text]: The link text.
/// * [anchorName]: The anchor name. If the name is empty, the link must bring back to top.
/// * [url]: An HTTP URL, opening the anchor.
final class RichTextAnchorLink extends RichText {
  
  /// **RichTextAnchorLink** *(richTextAnchorLink)* - child of RichText
  ///
  /// A link to an anchor on the same web page.
  ///
  /// * [text]: The link text.
  /// * [anchorName]: The anchor name. If the name is empty, the link must bring back to top.
  /// * [url]: An HTTP URL, opening the anchor.
  const RichTextAnchorLink({
    required this.text,
    required this.anchorName,
    required this.url,
  });
  
  /// The link text 
  final RichText text;

  /// The anchor name. If the name is empty, the link must bring back to top 
  final String anchorName;

  /// An HTTP URL, opening the anchor
  final String url;
  
  /// Parse from a json
  factory RichTextAnchorLink.fromJson(Map<String, dynamic> json) => RichTextAnchorLink(
    text: RichText.fromJson(json['text']),
    anchorName: json['anchor_name'],
    url: json['url'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "text": text.toJson(),
      "anchor_name": anchorName,
      "url": url,
		};
	}

  
  @override
  RichTextAnchorLink copyWith({
    RichText? text,
    String? anchorName,
    String? url,
  }) => RichTextAnchorLink(
    text: text ?? this.text,
    anchorName: anchorName ?? this.anchorName,
    url: url ?? this.url,
  );

  static const String objectType = 'richTextAnchorLink';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **RichTexts** *(richTexts)* - child of RichText
///
/// A concatenation of rich texts.
///
/// * [texts]: Texts.
final class RichTexts extends RichText {
  
  /// **RichTexts** *(richTexts)* - child of RichText
  ///
  /// A concatenation of rich texts.
  ///
  /// * [texts]: Texts.
  const RichTexts({
    required this.texts,
  });
  
  /// Texts
  final List<RichText> texts;
  
  /// Parse from a json
  factory RichTexts.fromJson(Map<String, dynamic> json) => RichTexts(
    texts: List<RichText>.from((json['texts'] ?? []).map((item) => RichText.fromJson(item)).toList()),
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "texts": texts.map((i) => i.toJson()).toList(),
		};
	}

  
  @override
  RichTexts copyWith({
    List<RichText>? texts,
  }) => RichTexts(
    texts: texts ?? this.texts,
  );

  static const String objectType = 'richTexts';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

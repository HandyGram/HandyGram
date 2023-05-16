part of '../tdapi.dart';

/// **PageBlockVerticalAlignment** *(pageBlockVerticalAlignment)* - parent
///
/// Describes a Vertical alignment of a table cell content.
sealed class PageBlockVerticalAlignment extends TdObject {
  
  /// **PageBlockVerticalAlignment** *(pageBlockVerticalAlignment)* - parent
  ///
  /// Describes a Vertical alignment of a table cell content.
  const PageBlockVerticalAlignment();
  
  /// a PageBlockVerticalAlignment return type can be :
  /// * [PageBlockVerticalAlignmentTop]
  /// * [PageBlockVerticalAlignmentMiddle]
  /// * [PageBlockVerticalAlignmentBottom]
  factory PageBlockVerticalAlignment.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case PageBlockVerticalAlignmentTop.objectType:
        return PageBlockVerticalAlignmentTop.fromJson(json);
      case PageBlockVerticalAlignmentMiddle.objectType:
        return PageBlockVerticalAlignmentMiddle.fromJson(json);
      case PageBlockVerticalAlignmentBottom.objectType:
        return PageBlockVerticalAlignmentBottom.fromJson(json);
      default:
        throw FormatException(
          "Unknown object ${json["@type"]} (expected child of PageBlockVerticalAlignment)",
          json,
        );
    }
  }
  
  @override
  Map<String, dynamic> toJson();

  
  PageBlockVerticalAlignment copyWith();

  static const String objectType = 'pageBlockVerticalAlignment';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **PageBlockVerticalAlignmentTop** *(pageBlockVerticalAlignmentTop)* - child of PageBlockVerticalAlignment
///
/// The content must be top-aligned.
final class PageBlockVerticalAlignmentTop extends PageBlockVerticalAlignment {
  
  /// **PageBlockVerticalAlignmentTop** *(pageBlockVerticalAlignmentTop)* - child of PageBlockVerticalAlignment
  ///
  /// The content must be top-aligned.
  const PageBlockVerticalAlignmentTop();
  
  /// Parse from a json
  factory PageBlockVerticalAlignmentTop.fromJson(Map<String, dynamic> json) => const PageBlockVerticalAlignmentTop();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  PageBlockVerticalAlignmentTop copyWith() => const PageBlockVerticalAlignmentTop();

  static const String objectType = 'pageBlockVerticalAlignmentTop';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **PageBlockVerticalAlignmentMiddle** *(pageBlockVerticalAlignmentMiddle)* - child of PageBlockVerticalAlignment
///
/// The content must be middle-aligned.
final class PageBlockVerticalAlignmentMiddle extends PageBlockVerticalAlignment {
  
  /// **PageBlockVerticalAlignmentMiddle** *(pageBlockVerticalAlignmentMiddle)* - child of PageBlockVerticalAlignment
  ///
  /// The content must be middle-aligned.
  const PageBlockVerticalAlignmentMiddle();
  
  /// Parse from a json
  factory PageBlockVerticalAlignmentMiddle.fromJson(Map<String, dynamic> json) => const PageBlockVerticalAlignmentMiddle();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  PageBlockVerticalAlignmentMiddle copyWith() => const PageBlockVerticalAlignmentMiddle();

  static const String objectType = 'pageBlockVerticalAlignmentMiddle';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **PageBlockVerticalAlignmentBottom** *(pageBlockVerticalAlignmentBottom)* - child of PageBlockVerticalAlignment
///
/// The content must be bottom-aligned.
final class PageBlockVerticalAlignmentBottom extends PageBlockVerticalAlignment {
  
  /// **PageBlockVerticalAlignmentBottom** *(pageBlockVerticalAlignmentBottom)* - child of PageBlockVerticalAlignment
  ///
  /// The content must be bottom-aligned.
  const PageBlockVerticalAlignmentBottom();
  
  /// Parse from a json
  factory PageBlockVerticalAlignmentBottom.fromJson(Map<String, dynamic> json) => const PageBlockVerticalAlignmentBottom();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  PageBlockVerticalAlignmentBottom copyWith() => const PageBlockVerticalAlignmentBottom();

  static const String objectType = 'pageBlockVerticalAlignmentBottom';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

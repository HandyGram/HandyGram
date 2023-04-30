part of '../tdapi.dart';

/// **PageBlockVerticalAlignment** *(pageBlockVerticalAlignment)* - parent
  ///
  /// Describes a Vertical alignment of a table cell content.
class PageBlockVerticalAlignment extends TdObject {
  
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
      case PageBlockVerticalAlignmentTop.constructor:
        return PageBlockVerticalAlignmentTop.fromJson(json);
      case PageBlockVerticalAlignmentMiddle.constructor:
        return PageBlockVerticalAlignmentMiddle.fromJson(json);
      case PageBlockVerticalAlignmentBottom.constructor:
        return PageBlockVerticalAlignmentBottom.fromJson(json);
      default:
        return const PageBlockVerticalAlignment();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  PageBlockVerticalAlignment copyWith() => const PageBlockVerticalAlignment();

  static const String constructor = 'pageBlockVerticalAlignment';
  
  @override
  String getConstructor() => constructor;
}


/// **PageBlockVerticalAlignmentTop** *(pageBlockVerticalAlignmentTop)* - child of PageBlockVerticalAlignment
  ///
  /// The content must be top-aligned.
class PageBlockVerticalAlignmentTop extends PageBlockVerticalAlignment {
  
  /// **PageBlockVerticalAlignmentTop** *(pageBlockVerticalAlignmentTop)* - child of PageBlockVerticalAlignment
  ///
  /// The content must be top-aligned.
  const PageBlockVerticalAlignmentTop();
  
  /// Parse from a json
  factory PageBlockVerticalAlignmentTop.fromJson(Map<String, dynamic> json) => const PageBlockVerticalAlignmentTop();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  PageBlockVerticalAlignmentTop copyWith() => const PageBlockVerticalAlignmentTop();

  static const String constructor = 'pageBlockVerticalAlignmentTop';
  
  @override
  String getConstructor() => constructor;
}


/// **PageBlockVerticalAlignmentMiddle** *(pageBlockVerticalAlignmentMiddle)* - child of PageBlockVerticalAlignment
  ///
  /// The content must be middle-aligned.
class PageBlockVerticalAlignmentMiddle extends PageBlockVerticalAlignment {
  
  /// **PageBlockVerticalAlignmentMiddle** *(pageBlockVerticalAlignmentMiddle)* - child of PageBlockVerticalAlignment
  ///
  /// The content must be middle-aligned.
  const PageBlockVerticalAlignmentMiddle();
  
  /// Parse from a json
  factory PageBlockVerticalAlignmentMiddle.fromJson(Map<String, dynamic> json) => const PageBlockVerticalAlignmentMiddle();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  PageBlockVerticalAlignmentMiddle copyWith() => const PageBlockVerticalAlignmentMiddle();

  static const String constructor = 'pageBlockVerticalAlignmentMiddle';
  
  @override
  String getConstructor() => constructor;
}


/// **PageBlockVerticalAlignmentBottom** *(pageBlockVerticalAlignmentBottom)* - child of PageBlockVerticalAlignment
  ///
  /// The content must be bottom-aligned.
class PageBlockVerticalAlignmentBottom extends PageBlockVerticalAlignment {
  
  /// **PageBlockVerticalAlignmentBottom** *(pageBlockVerticalAlignmentBottom)* - child of PageBlockVerticalAlignment
  ///
  /// The content must be bottom-aligned.
  const PageBlockVerticalAlignmentBottom();
  
  /// Parse from a json
  factory PageBlockVerticalAlignmentBottom.fromJson(Map<String, dynamic> json) => const PageBlockVerticalAlignmentBottom();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  PageBlockVerticalAlignmentBottom copyWith() => const PageBlockVerticalAlignmentBottom();

  static const String constructor = 'pageBlockVerticalAlignmentBottom';
  
  @override
  String getConstructor() => constructor;
}

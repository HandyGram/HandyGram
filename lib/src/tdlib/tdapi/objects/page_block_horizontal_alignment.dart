part of '../tdapi.dart';

/// **PageBlockHorizontalAlignment** *(pageBlockHorizontalAlignment)* - parent
  ///
  /// Describes a horizontal alignment of a table cell content.
class PageBlockHorizontalAlignment extends TdObject {
  
  /// **PageBlockHorizontalAlignment** *(pageBlockHorizontalAlignment)* - parent
  ///
  /// Describes a horizontal alignment of a table cell content.
  const PageBlockHorizontalAlignment();
  
  /// a PageBlockHorizontalAlignment return type can be :
  /// * [PageBlockHorizontalAlignmentLeft]
  /// * [PageBlockHorizontalAlignmentCenter]
  /// * [PageBlockHorizontalAlignmentRight]
  factory PageBlockHorizontalAlignment.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case PageBlockHorizontalAlignmentLeft.constructor:
        return PageBlockHorizontalAlignmentLeft.fromJson(json);
      case PageBlockHorizontalAlignmentCenter.constructor:
        return PageBlockHorizontalAlignmentCenter.fromJson(json);
      case PageBlockHorizontalAlignmentRight.constructor:
        return PageBlockHorizontalAlignmentRight.fromJson(json);
      default:
        return const PageBlockHorizontalAlignment();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  PageBlockHorizontalAlignment copyWith() => const PageBlockHorizontalAlignment();

  static const String constructor = 'pageBlockHorizontalAlignment';
  
  @override
  String getConstructor() => constructor;
}


/// **PageBlockHorizontalAlignmentLeft** *(pageBlockHorizontalAlignmentLeft)* - child of PageBlockHorizontalAlignment
  ///
  /// The content must be left-aligned.
class PageBlockHorizontalAlignmentLeft extends PageBlockHorizontalAlignment {
  
  /// **PageBlockHorizontalAlignmentLeft** *(pageBlockHorizontalAlignmentLeft)* - child of PageBlockHorizontalAlignment
  ///
  /// The content must be left-aligned.
  const PageBlockHorizontalAlignmentLeft();
  
  /// Parse from a json
  factory PageBlockHorizontalAlignmentLeft.fromJson(Map<String, dynamic> json) => const PageBlockHorizontalAlignmentLeft();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  PageBlockHorizontalAlignmentLeft copyWith() => const PageBlockHorizontalAlignmentLeft();

  static const String constructor = 'pageBlockHorizontalAlignmentLeft';
  
  @override
  String getConstructor() => constructor;
}


/// **PageBlockHorizontalAlignmentCenter** *(pageBlockHorizontalAlignmentCenter)* - child of PageBlockHorizontalAlignment
  ///
  /// The content must be center-aligned.
class PageBlockHorizontalAlignmentCenter extends PageBlockHorizontalAlignment {
  
  /// **PageBlockHorizontalAlignmentCenter** *(pageBlockHorizontalAlignmentCenter)* - child of PageBlockHorizontalAlignment
  ///
  /// The content must be center-aligned.
  const PageBlockHorizontalAlignmentCenter();
  
  /// Parse from a json
  factory PageBlockHorizontalAlignmentCenter.fromJson(Map<String, dynamic> json) => const PageBlockHorizontalAlignmentCenter();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  PageBlockHorizontalAlignmentCenter copyWith() => const PageBlockHorizontalAlignmentCenter();

  static const String constructor = 'pageBlockHorizontalAlignmentCenter';
  
  @override
  String getConstructor() => constructor;
}


/// **PageBlockHorizontalAlignmentRight** *(pageBlockHorizontalAlignmentRight)* - child of PageBlockHorizontalAlignment
  ///
  /// The content must be right-aligned.
class PageBlockHorizontalAlignmentRight extends PageBlockHorizontalAlignment {
  
  /// **PageBlockHorizontalAlignmentRight** *(pageBlockHorizontalAlignmentRight)* - child of PageBlockHorizontalAlignment
  ///
  /// The content must be right-aligned.
  const PageBlockHorizontalAlignmentRight();
  
  /// Parse from a json
  factory PageBlockHorizontalAlignmentRight.fromJson(Map<String, dynamic> json) => const PageBlockHorizontalAlignmentRight();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  PageBlockHorizontalAlignmentRight copyWith() => const PageBlockHorizontalAlignmentRight();

  static const String constructor = 'pageBlockHorizontalAlignmentRight';
  
  @override
  String getConstructor() => constructor;
}

part of '../tdapi.dart';

/// **PageBlockHorizontalAlignment** *(pageBlockHorizontalAlignment)* - parent
///
/// Describes a horizontal alignment of a table cell content.
sealed class PageBlockHorizontalAlignment extends TdObject {
  
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
      case PageBlockHorizontalAlignmentLeft.objectType:
        return PageBlockHorizontalAlignmentLeft.fromJson(json);
      case PageBlockHorizontalAlignmentCenter.objectType:
        return PageBlockHorizontalAlignmentCenter.fromJson(json);
      case PageBlockHorizontalAlignmentRight.objectType:
        return PageBlockHorizontalAlignmentRight.fromJson(json);
      default:
        throw FormatException(
          "Unknown object ${json["@type"]} (expected child of PageBlockHorizontalAlignment)",
          json,
        );
    }
  }
  
  @override
  Map<String, dynamic> toJson();

  
  PageBlockHorizontalAlignment copyWith();

  static const String objectType = 'pageBlockHorizontalAlignment';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **PageBlockHorizontalAlignmentLeft** *(pageBlockHorizontalAlignmentLeft)* - child of PageBlockHorizontalAlignment
///
/// The content must be left-aligned.
final class PageBlockHorizontalAlignmentLeft extends PageBlockHorizontalAlignment {
  
  /// **PageBlockHorizontalAlignmentLeft** *(pageBlockHorizontalAlignmentLeft)* - child of PageBlockHorizontalAlignment
  ///
  /// The content must be left-aligned.
  const PageBlockHorizontalAlignmentLeft();
  
  /// Parse from a json
  factory PageBlockHorizontalAlignmentLeft.fromJson(Map<String, dynamic> json) => const PageBlockHorizontalAlignmentLeft();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  PageBlockHorizontalAlignmentLeft copyWith() => const PageBlockHorizontalAlignmentLeft();

  static const String objectType = 'pageBlockHorizontalAlignmentLeft';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **PageBlockHorizontalAlignmentCenter** *(pageBlockHorizontalAlignmentCenter)* - child of PageBlockHorizontalAlignment
///
/// The content must be center-aligned.
final class PageBlockHorizontalAlignmentCenter extends PageBlockHorizontalAlignment {
  
  /// **PageBlockHorizontalAlignmentCenter** *(pageBlockHorizontalAlignmentCenter)* - child of PageBlockHorizontalAlignment
  ///
  /// The content must be center-aligned.
  const PageBlockHorizontalAlignmentCenter();
  
  /// Parse from a json
  factory PageBlockHorizontalAlignmentCenter.fromJson(Map<String, dynamic> json) => const PageBlockHorizontalAlignmentCenter();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  PageBlockHorizontalAlignmentCenter copyWith() => const PageBlockHorizontalAlignmentCenter();

  static const String objectType = 'pageBlockHorizontalAlignmentCenter';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **PageBlockHorizontalAlignmentRight** *(pageBlockHorizontalAlignmentRight)* - child of PageBlockHorizontalAlignment
///
/// The content must be right-aligned.
final class PageBlockHorizontalAlignmentRight extends PageBlockHorizontalAlignment {
  
  /// **PageBlockHorizontalAlignmentRight** *(pageBlockHorizontalAlignmentRight)* - child of PageBlockHorizontalAlignment
  ///
  /// The content must be right-aligned.
  const PageBlockHorizontalAlignmentRight();
  
  /// Parse from a json
  factory PageBlockHorizontalAlignmentRight.fromJson(Map<String, dynamic> json) => const PageBlockHorizontalAlignmentRight();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  PageBlockHorizontalAlignmentRight copyWith() => const PageBlockHorizontalAlignmentRight();

  static const String objectType = 'pageBlockHorizontalAlignmentRight';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

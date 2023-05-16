part of '../tdapi.dart';

/// **PageBlockCaption** *(pageBlockCaption)* - basic class
///
/// Contains a caption of an instant view web page block, consisting of a text and a trailing credit.
///
/// * [text]: Content of the caption.
/// * [credit]: Block credit (like HTML tag <cite>).
final class PageBlockCaption extends TdObject {
  
  /// **PageBlockCaption** *(pageBlockCaption)* - basic class
  ///
  /// Contains a caption of an instant view web page block, consisting of a text and a trailing credit.
  ///
  /// * [text]: Content of the caption.
  /// * [credit]: Block credit (like HTML tag <cite>).
  const PageBlockCaption({
    required this.text,
    required this.credit,
  });
  
  /// Content of the caption 
  final RichText text;

  /// Block credit (like HTML tag <cite>)
  final RichText credit;
  
  /// Parse from a json
  factory PageBlockCaption.fromJson(Map<String, dynamic> json) => PageBlockCaption(
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

  
  PageBlockCaption copyWith({
    RichText? text,
    RichText? credit,
  }) => PageBlockCaption(
    text: text ?? this.text,
    credit: credit ?? this.credit,
  );

  static const String objectType = 'pageBlockCaption';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

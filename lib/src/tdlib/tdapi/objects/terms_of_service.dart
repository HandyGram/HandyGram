part of '../tdapi.dart';

/// **TermsOfService** *(termsOfService)* - basic class
///
/// Contains Telegram terms of service.
///
/// * [text]: Text of the terms of service.
/// * [minUserAge]: The minimum age of a user to be able to accept the terms; 0 if age isn't restricted.
/// * [showPopup]: True, if a blocking popup with terms of service must be shown to the user.
final class TermsOfService extends TdObject {
  
  /// **TermsOfService** *(termsOfService)* - basic class
  ///
  /// Contains Telegram terms of service.
  ///
  /// * [text]: Text of the terms of service.
  /// * [minUserAge]: The minimum age of a user to be able to accept the terms; 0 if age isn't restricted.
  /// * [showPopup]: True, if a blocking popup with terms of service must be shown to the user.
  const TermsOfService({
    required this.text,
    required this.minUserAge,
    required this.showPopup,
  });
  
  /// Text of the terms of service 
  final FormattedText text;

  /// The minimum age of a user to be able to accept the terms; 0 if age isn't restricted 
  final int minUserAge;

  /// True, if a blocking popup with terms of service must be shown to the user
  final bool showPopup;
  
  /// Parse from a json
  factory TermsOfService.fromJson(Map<String, dynamic> json) => TermsOfService(
    text: FormattedText.fromJson(json['text']),
    minUserAge: json['min_user_age'],
    showPopup: json['show_popup'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "text": text.toJson(),
      "min_user_age": minUserAge,
      "show_popup": showPopup,
		};
	}

  
  TermsOfService copyWith({
    FormattedText? text,
    int? minUserAge,
    bool? showPopup,
  }) => TermsOfService(
    text: text ?? this.text,
    minUserAge: minUserAge ?? this.minUserAge,
    showPopup: showPopup ?? this.showPopup,
  );

  static const String objectType = 'termsOfService';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

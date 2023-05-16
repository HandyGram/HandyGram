part of '../tdapi.dart';

/// **Backgrounds** *(backgrounds)* - basic class
///
/// Contains a list of backgrounds.
///
/// * [backgrounds]: A list of backgrounds.
final class Backgrounds extends TdObject {
  
  /// **Backgrounds** *(backgrounds)* - basic class
  ///
  /// Contains a list of backgrounds.
  ///
  /// * [backgrounds]: A list of backgrounds.
  const Backgrounds({
    required this.backgrounds,
    this.extra,
    this.clientId,
  });
  
  /// A list of backgrounds
  final List<Background> backgrounds;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory Backgrounds.fromJson(Map<String, dynamic> json) => Backgrounds(
    backgrounds: List<Background>.from((json['backgrounds'] ?? []).map((item) => Background.fromJson(item)).toList()),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "backgrounds": backgrounds.map((i) => i.toJson()).toList(),
		};
	}

  
  Backgrounds copyWith({
    List<Background>? backgrounds,
    dynamic extra,
    int? clientId,
  }) => Backgrounds(
    backgrounds: backgrounds ?? this.backgrounds,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'backgrounds';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

part of '../tdapi.dart';

/// **ChatFilterInfo** *(chatFilterInfo)* - basic class
///
/// Contains basic information about a chat filter.
///
/// * [id]: Unique chat filter identifier.
/// * [title]: The title of the filter; 1-12 characters without line feeds.
/// * [iconName]: The chosen or default icon name for short filter representation. One of "All", "Unread", "Unmuted", "Bots", "Channels", "Groups", "Private", "Custom", "Setup", "Cat", "Crown",. "Favorite", "Flower", "Game", "Home", "Love", "Mask", "Party", "Sport", "Study", "Trade", "Travel", "Work", "Airplane", "Book", "Light", "Like", "Money", "Note", "Palette".
final class ChatFilterInfo extends TdObject {
  
  /// **ChatFilterInfo** *(chatFilterInfo)* - basic class
  ///
  /// Contains basic information about a chat filter.
  ///
  /// * [id]: Unique chat filter identifier.
  /// * [title]: The title of the filter; 1-12 characters without line feeds.
  /// * [iconName]: The chosen or default icon name for short filter representation. One of "All", "Unread", "Unmuted", "Bots", "Channels", "Groups", "Private", "Custom", "Setup", "Cat", "Crown",. "Favorite", "Flower", "Game", "Home", "Love", "Mask", "Party", "Sport", "Study", "Trade", "Travel", "Work", "Airplane", "Book", "Light", "Like", "Money", "Note", "Palette".
  const ChatFilterInfo({
    required this.id,
    required this.title,
    required this.iconName,
    this.extra,
    this.clientId,
  });
  
  /// Unique chat filter identifier
  final int id;

  /// The title of the filter; 1-12 characters without line feeds
  final String title;

  /// The chosen or default icon name for short filter representation. One of "All", "Unread", "Unmuted", "Bots", "Channels", "Groups", "Private", "Custom", "Setup", "Cat", "Crown",. "Favorite", "Flower", "Game", "Home", "Love", "Mask", "Party", "Sport", "Study", "Trade", "Travel", "Work", "Airplane", "Book", "Light", "Like", "Money", "Note", "Palette"
  final String iconName;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory ChatFilterInfo.fromJson(Map<String, dynamic> json) => ChatFilterInfo(
    id: json['id'],
    title: json['title'],
    iconName: json['icon_name'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "id": id,
      "title": title,
      "icon_name": iconName,
		};
	}

  
  ChatFilterInfo copyWith({
    int? id,
    String? title,
    String? iconName,
    dynamic extra,
    int? clientId,
  }) => ChatFilterInfo(
    id: id ?? this.id,
    title: title ?? this.title,
    iconName: iconName ?? this.iconName,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'chatFilterInfo';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

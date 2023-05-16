part of '../tdapi.dart';

/// **Venue** *(venue)* - basic class
///
/// Describes a venue.
///
/// * [location]: Venue location; as defined by the sender.
/// * [title]: Venue name; as defined by the sender.
/// * [address]: Venue address; as defined by the sender.
/// * [provider]: Provider of the venue database; as defined by the sender. Currently, only "foursquare" and "gplaces" (Google Places) need to be supported.
/// * [id]: Identifier of the venue in the provider database; as defined by the sender.
/// * [type]: Type of the venue in the provider database; as defined by the sender.
final class Venue extends TdObject {
  
  /// **Venue** *(venue)* - basic class
  ///
  /// Describes a venue.
  ///
  /// * [location]: Venue location; as defined by the sender.
  /// * [title]: Venue name; as defined by the sender.
  /// * [address]: Venue address; as defined by the sender.
  /// * [provider]: Provider of the venue database; as defined by the sender. Currently, only "foursquare" and "gplaces" (Google Places) need to be supported.
  /// * [id]: Identifier of the venue in the provider database; as defined by the sender.
  /// * [type]: Type of the venue in the provider database; as defined by the sender.
  const Venue({
    required this.location,
    required this.title,
    required this.address,
    required this.provider,
    required this.id,
    required this.type,
  });
  
  /// Venue location; as defined by the sender
  final Location location;

  /// Venue name; as defined by the sender
  final String title;

  /// Venue address; as defined by the sender
  final String address;

  /// Provider of the venue database; as defined by the sender. Currently, only "foursquare" and "gplaces" (Google Places) need to be supported
  final String provider;

  /// Identifier of the venue in the provider database; as defined by the sender
  final String id;

  /// Type of the venue in the provider database; as defined by the sender
  final String type;
  
  /// Parse from a json
  factory Venue.fromJson(Map<String, dynamic> json) => Venue(
    location: Location.fromJson(json['location']),
    title: json['title'],
    address: json['address'],
    provider: json['provider'],
    id: json['id'],
    type: json['type'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "location": location.toJson(),
      "title": title,
      "address": address,
      "provider": provider,
      "id": id,
      "type": type,
		};
	}

  
  Venue copyWith({
    Location? location,
    String? title,
    String? address,
    String? provider,
    String? id,
    String? type,
  }) => Venue(
    location: location ?? this.location,
    title: title ?? this.title,
    address: address ?? this.address,
    provider: provider ?? this.provider,
    id: id ?? this.id,
    type: type ?? this.type,
  );

  static const String objectType = 'venue';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

part of '../tdapi.dart';

/// **ChatLocation** *(chatLocation)* - basic class
///
/// Represents a location to which a chat is connected.
///
/// * [location]: The location.
/// * [address]: Location address; 1-64 characters, as defined by the chat owner.
final class ChatLocation extends TdObject {
  
  /// **ChatLocation** *(chatLocation)* - basic class
  ///
  /// Represents a location to which a chat is connected.
  ///
  /// * [location]: The location.
  /// * [address]: Location address; 1-64 characters, as defined by the chat owner.
  const ChatLocation({
    required this.location,
    required this.address,
  });
  
  /// The location 
  final Location location;

  /// Location address; 1-64 characters, as defined by the chat owner
  final String address;
  
  /// Parse from a json
  factory ChatLocation.fromJson(Map<String, dynamic> json) => ChatLocation(
    location: Location.fromJson(json['location']),
    address: json['address'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "location": location.toJson(),
      "address": address,
		};
	}

  
  ChatLocation copyWith({
    Location? location,
    String? address,
  }) => ChatLocation(
    location: location ?? this.location,
    address: address ?? this.address,
  );

  static const String objectType = 'chatLocation';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

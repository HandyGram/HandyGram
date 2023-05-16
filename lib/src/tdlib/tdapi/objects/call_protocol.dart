part of '../tdapi.dart';

/// **CallProtocol** *(callProtocol)* - basic class
///
/// Specifies the supported call protocols.
///
/// * [udpP2p]: True, if UDP peer-to-peer connections are supported.
/// * [udpReflector]: True, if connection through UDP reflectors is supported.
/// * [minLayer]: The minimum supported API layer; use 65.
/// * [maxLayer]: The maximum supported API layer; use 65.
/// * [libraryVersions]: List of supported tgcalls versions.
final class CallProtocol extends TdObject {
  
  /// **CallProtocol** *(callProtocol)* - basic class
  ///
  /// Specifies the supported call protocols.
  ///
  /// * [udpP2p]: True, if UDP peer-to-peer connections are supported.
  /// * [udpReflector]: True, if connection through UDP reflectors is supported.
  /// * [minLayer]: The minimum supported API layer; use 65.
  /// * [maxLayer]: The maximum supported API layer; use 65.
  /// * [libraryVersions]: List of supported tgcalls versions.
  const CallProtocol({
    required this.udpP2p,
    required this.udpReflector,
    required this.minLayer,
    required this.maxLayer,
    required this.libraryVersions,
  });
  
  /// True, if UDP peer-to-peer connections are supported
  final bool udpP2p;

  /// True, if connection through UDP reflectors is supported
  final bool udpReflector;

  /// The minimum supported API layer; use 65
  final int minLayer;

  /// The maximum supported API layer; use 65
  final int maxLayer;

  /// List of supported tgcalls versions
  final List<String> libraryVersions;
  
  /// Parse from a json
  factory CallProtocol.fromJson(Map<String, dynamic> json) => CallProtocol(
    udpP2p: json['udp_p2p'],
    udpReflector: json['udp_reflector'],
    minLayer: json['min_layer'],
    maxLayer: json['max_layer'],
    libraryVersions: List<String>.from((json['library_versions'] ?? []).map((item) => item).toList()),
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "udp_p2p": udpP2p,
      "udp_reflector": udpReflector,
      "min_layer": minLayer,
      "max_layer": maxLayer,
      "library_versions": libraryVersions.map((i) => i).toList(),
		};
	}

  
  CallProtocol copyWith({
    bool? udpP2p,
    bool? udpReflector,
    int? minLayer,
    int? maxLayer,
    List<String>? libraryVersions,
  }) => CallProtocol(
    udpP2p: udpP2p ?? this.udpP2p,
    udpReflector: udpReflector ?? this.udpReflector,
    minLayer: minLayer ?? this.minLayer,
    maxLayer: maxLayer ?? this.maxLayer,
    libraryVersions: libraryVersions ?? this.libraryVersions,
  );

  static const String objectType = 'callProtocol';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

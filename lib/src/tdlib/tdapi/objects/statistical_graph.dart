part of '../tdapi.dart';

/// **StatisticalGraph** *(statisticalGraph)* - parent
///
/// Describes a statistical graph.
sealed class StatisticalGraph extends TdObject {
  
  /// **StatisticalGraph** *(statisticalGraph)* - parent
  ///
  /// Describes a statistical graph.
  const StatisticalGraph();
  
  /// a StatisticalGraph return type can be :
  /// * [StatisticalGraphData]
  /// * [StatisticalGraphAsync]
  /// * [StatisticalGraphError]
  factory StatisticalGraph.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case StatisticalGraphData.objectType:
        return StatisticalGraphData.fromJson(json);
      case StatisticalGraphAsync.objectType:
        return StatisticalGraphAsync.fromJson(json);
      case StatisticalGraphError.objectType:
        return StatisticalGraphError.fromJson(json);
      default:
        throw FormatException(
          "Unknown object ${json["@type"]} (expected child of StatisticalGraph)",
          json,
        );
    }
  }
  
  @override
  Map<String, dynamic> toJson();

  
  StatisticalGraph copyWith();

  static const String objectType = 'statisticalGraph';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **StatisticalGraphData** *(statisticalGraphData)* - child of StatisticalGraph
///
/// A graph data.
///
/// * [jsonData]: Graph data in JSON format.
/// * [zoomToken]: If non-empty, a token which can be used to receive a zoomed in graph.
final class StatisticalGraphData extends StatisticalGraph {
  
  /// **StatisticalGraphData** *(statisticalGraphData)* - child of StatisticalGraph
  ///
  /// A graph data.
  ///
  /// * [jsonData]: Graph data in JSON format.
  /// * [zoomToken]: If non-empty, a token which can be used to receive a zoomed in graph.
  const StatisticalGraphData({
    required this.jsonData,
    required this.zoomToken,
    this.extra,
    this.clientId,
  });
  
  /// Graph data in JSON format 
  final String jsonData;

  /// If non-empty, a token which can be used to receive a zoomed in graph
  final String zoomToken;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory StatisticalGraphData.fromJson(Map<String, dynamic> json) => StatisticalGraphData(
    jsonData: json['json_data'],
    zoomToken: json['zoom_token'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "json_data": jsonData,
      "zoom_token": zoomToken,
		};
	}

  
  @override
  StatisticalGraphData copyWith({
    String? jsonData,
    String? zoomToken,
    dynamic extra,
    int? clientId,
  }) => StatisticalGraphData(
    jsonData: jsonData ?? this.jsonData,
    zoomToken: zoomToken ?? this.zoomToken,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'statisticalGraphData';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **StatisticalGraphAsync** *(statisticalGraphAsync)* - child of StatisticalGraph
///
/// The graph data to be asynchronously loaded through getStatisticalGraph.
///
/// * [token]: The token to use for data loading.
final class StatisticalGraphAsync extends StatisticalGraph {
  
  /// **StatisticalGraphAsync** *(statisticalGraphAsync)* - child of StatisticalGraph
  ///
  /// The graph data to be asynchronously loaded through getStatisticalGraph.
  ///
  /// * [token]: The token to use for data loading.
  const StatisticalGraphAsync({
    required this.token,
    this.extra,
    this.clientId,
  });
  
  /// The token to use for data loading
  final String token;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory StatisticalGraphAsync.fromJson(Map<String, dynamic> json) => StatisticalGraphAsync(
    token: json['token'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "token": token,
		};
	}

  
  @override
  StatisticalGraphAsync copyWith({
    String? token,
    dynamic extra,
    int? clientId,
  }) => StatisticalGraphAsync(
    token: token ?? this.token,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'statisticalGraphAsync';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **StatisticalGraphError** *(statisticalGraphError)* - child of StatisticalGraph
///
/// An error message to be shown to the user instead of the graph.
///
/// * [errorMessage]: The error message.
final class StatisticalGraphError extends StatisticalGraph {
  
  /// **StatisticalGraphError** *(statisticalGraphError)* - child of StatisticalGraph
  ///
  /// An error message to be shown to the user instead of the graph.
  ///
  /// * [errorMessage]: The error message.
  const StatisticalGraphError({
    required this.errorMessage,
    this.extra,
    this.clientId,
  });
  
  /// The error message
  final String errorMessage;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory StatisticalGraphError.fromJson(Map<String, dynamic> json) => StatisticalGraphError(
    errorMessage: json['error_message'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "error_message": errorMessage,
		};
	}

  
  @override
  StatisticalGraphError copyWith({
    String? errorMessage,
    dynamic extra,
    int? clientId,
  }) => StatisticalGraphError(
    errorMessage: errorMessage ?? this.errorMessage,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'statisticalGraphError';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

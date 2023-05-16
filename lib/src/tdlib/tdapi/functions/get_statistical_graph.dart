part of '../tdapi.dart';

/// **GetStatisticalGraph** *(getStatisticalGraph)* - TDLib function
///
/// Loads an asynchronous or a zoomed in statistical graph.
///
/// * [chatId]: Chat identifier.
/// * [token]: The token for graph loading.
/// * [x]: X-value for zoomed in graph or 0 otherwise.
///
/// [StatisticalGraph] is returned on completion.
final class GetStatisticalGraph extends TdFunction {
  
  /// **GetStatisticalGraph** *(getStatisticalGraph)* - TDLib function
  ///
  /// Loads an asynchronous or a zoomed in statistical graph.
  ///
  /// * [chatId]: Chat identifier.
  /// * [token]: The token for graph loading.
  /// * [x]: X-value for zoomed in graph or 0 otherwise.
  ///
  /// [StatisticalGraph] is returned on completion.
  const GetStatisticalGraph({
    required this.chatId,
    required this.token,
    required this.x,
  });
  
  /// Chat identifier 
  final int chatId;

  /// The token for graph loading 
  final String token;

  /// X-value for zoomed in graph or 0 otherwise
  final int x;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "chat_id": chatId,
      "token": token,
      "x": x,
      "@extra": extra,
		};
	}

  
  GetStatisticalGraph copyWith({
    int? chatId,
    String? token,
    int? x,
  }) => GetStatisticalGraph(
    chatId: chatId ?? this.chatId,
    token: token ?? this.token,
    x: x ?? this.x,
  );

  static const String objectType = 'getStatisticalGraph';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

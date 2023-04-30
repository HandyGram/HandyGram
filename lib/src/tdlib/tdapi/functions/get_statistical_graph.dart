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
class GetStatisticalGraph extends TdFunction {
  
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
      "@type": constructor,
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

  static const String constructor = 'getStatisticalGraph';
  
  @override
  String getConstructor() => constructor;
}

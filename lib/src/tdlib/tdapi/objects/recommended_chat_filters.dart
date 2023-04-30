part of '../tdapi.dart';

/// **RecommendedChatFilters** *(recommendedChatFilters)* - basic class
  ///
  /// Contains a list of recommended chat filters.
  ///
  /// * [chatFilters]: List of recommended chat filters.
class RecommendedChatFilters extends TdObject {
  
  /// **RecommendedChatFilters** *(recommendedChatFilters)* - basic class
  ///
  /// Contains a list of recommended chat filters.
  ///
  /// * [chatFilters]: List of recommended chat filters.
  const RecommendedChatFilters({
    required this.chatFilters,
    this.extra,
    this.clientId,
  });
  
  /// List of recommended chat filters
  final List<RecommendedChatFilter> chatFilters;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory RecommendedChatFilters.fromJson(Map<String, dynamic> json) => RecommendedChatFilters(
    chatFilters: List<RecommendedChatFilter>.from((json['chat_filters'] ?? []).map((item) => RecommendedChatFilter.fromJson(item)).toList()),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "chat_filters": chatFilters.map((i) => i.toJson()).toList(),
    };
  }
  
  RecommendedChatFilters copyWith({
    List<RecommendedChatFilter>? chatFilters,
    dynamic extra,
    int? clientId,
  }) => RecommendedChatFilters(
    chatFilters: chatFilters ?? this.chatFilters,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String constructor = 'recommendedChatFilters';
  
  @override
  String getConstructor() => constructor;
}

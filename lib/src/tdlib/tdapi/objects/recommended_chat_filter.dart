part of '../tdapi.dart';

/// **RecommendedChatFilter** *(recommendedChatFilter)* - basic class
  ///
  /// Describes a recommended chat filter.
  ///
  /// * [filter]: The chat filter.
  /// * [description]: Chat filter description.
class RecommendedChatFilter extends TdObject {
  
  /// **RecommendedChatFilter** *(recommendedChatFilter)* - basic class
  ///
  /// Describes a recommended chat filter.
  ///
  /// * [filter]: The chat filter.
  /// * [description]: Chat filter description.
  const RecommendedChatFilter({
    required this.filter,
    required this.description,
  });
  
  /// The chat filter 
  final ChatFilter filter;

  /// Chat filter description
  final String description;
  
  /// Parse from a json
  factory RecommendedChatFilter.fromJson(Map<String, dynamic> json) => RecommendedChatFilter(
    filter: ChatFilter.fromJson(json['filter']),
    description: json['description'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "filter": filter.toJson(),
      "description": description,
    };
  }
  
  RecommendedChatFilter copyWith({
    ChatFilter? filter,
    String? description,
  }) => RecommendedChatFilter(
    filter: filter ?? this.filter,
    description: description ?? this.description,
  );

  static const String constructor = 'recommendedChatFilter';
  
  @override
  String getConstructor() => constructor;
}

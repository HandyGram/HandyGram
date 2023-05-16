part of '../tdapi.dart';

/// **GetTopChats** *(getTopChats)* - TDLib function
///
/// Returns a list of frequently used chats. Supported only if the chat info database is enabled.
///
/// * [category]: Category of chats to be returned.
/// * [limit]: The maximum number of chats to be returned; up to 30.
///
/// [Chats] is returned on completion.
final class GetTopChats extends TdFunction {
  
  /// **GetTopChats** *(getTopChats)* - TDLib function
  ///
  /// Returns a list of frequently used chats. Supported only if the chat info database is enabled.
  ///
  /// * [category]: Category of chats to be returned.
  /// * [limit]: The maximum number of chats to be returned; up to 30.
  ///
  /// [Chats] is returned on completion.
  const GetTopChats({
    required this.category,
    required this.limit,
  });
  
  /// Category of chats to be returned 
  final TopChatCategory category;

  /// The maximum number of chats to be returned; up to 30
  final int limit;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "category": category.toJson(),
      "limit": limit,
      "@extra": extra,
		};
	}

  
  GetTopChats copyWith({
    TopChatCategory? category,
    int? limit,
  }) => GetTopChats(
    category: category ?? this.category,
    limit: limit ?? this.limit,
  );

  static const String objectType = 'getTopChats';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

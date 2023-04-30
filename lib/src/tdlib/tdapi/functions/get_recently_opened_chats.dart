part of '../tdapi.dart';

/// **GetRecentlyOpenedChats** *(getRecentlyOpenedChats)* - TDLib function
  ///
  /// Returns recently opened chats, this is an offline request. Returns chats in the order of last opening.
  ///
  /// * [limit]: The maximum number of chats to be returned.
  ///
  /// [Chats] is returned on completion.
class GetRecentlyOpenedChats extends TdFunction {
  
  /// **GetRecentlyOpenedChats** *(getRecentlyOpenedChats)* - TDLib function
  ///
  /// Returns recently opened chats, this is an offline request. Returns chats in the order of last opening.
  ///
  /// * [limit]: The maximum number of chats to be returned.
  ///
  /// [Chats] is returned on completion.
  const GetRecentlyOpenedChats({
    required this.limit,
  });
  
  /// The maximum number of chats to be returned
  final int limit;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "limit": limit,
      "@extra": extra,
    };
  }
  
  GetRecentlyOpenedChats copyWith({
    int? limit,
  }) => GetRecentlyOpenedChats(
    limit: limit ?? this.limit,
  );

  static const String constructor = 'getRecentlyOpenedChats';
  
  @override
  String getConstructor() => constructor;
}

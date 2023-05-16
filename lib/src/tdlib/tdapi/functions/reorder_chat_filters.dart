part of '../tdapi.dart';

/// **ReorderChatFilters** *(reorderChatFilters)* - TDLib function
///
/// Changes the order of chat filters.
///
/// * [chatFilterIds]: Identifiers of chat filters in the new correct order.
/// * [mainChatListPosition]: Position of the main chat list among chat filters, 0-based. Can be non-zero only for Premium users.
///
/// [Ok] is returned on completion.
final class ReorderChatFilters extends TdFunction {
  
  /// **ReorderChatFilters** *(reorderChatFilters)* - TDLib function
  ///
  /// Changes the order of chat filters.
  ///
  /// * [chatFilterIds]: Identifiers of chat filters in the new correct order.
  /// * [mainChatListPosition]: Position of the main chat list among chat filters, 0-based. Can be non-zero only for Premium users.
  ///
  /// [Ok] is returned on completion.
  const ReorderChatFilters({
    required this.chatFilterIds,
    required this.mainChatListPosition,
  });
  
  /// Identifiers of chat filters in the new correct order 
  final List<int> chatFilterIds;

  /// Position of the main chat list among chat filters, 0-based. Can be non-zero only for Premium users
  final int mainChatListPosition;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "chat_filter_ids": chatFilterIds.map((i) => i).toList(),
      "main_chat_list_position": mainChatListPosition,
      "@extra": extra,
		};
	}

  
  ReorderChatFilters copyWith({
    List<int>? chatFilterIds,
    int? mainChatListPosition,
  }) => ReorderChatFilters(
    chatFilterIds: chatFilterIds ?? this.chatFilterIds,
    mainChatListPosition: mainChatListPosition ?? this.mainChatListPosition,
  );

  static const String objectType = 'reorderChatFilters';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

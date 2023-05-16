part of '../tdapi.dart';

/// **GetChatFilter** *(getChatFilter)* - TDLib function
///
/// Returns information about a chat filter by its identifier.
///
/// * [chatFilterId]: Chat filter identifier.
///
/// [ChatFilter] is returned on completion.
final class GetChatFilter extends TdFunction {
  
  /// **GetChatFilter** *(getChatFilter)* - TDLib function
  ///
  /// Returns information about a chat filter by its identifier.
  ///
  /// * [chatFilterId]: Chat filter identifier.
  ///
  /// [ChatFilter] is returned on completion.
  const GetChatFilter({
    required this.chatFilterId,
  });
  
  /// Chat filter identifier
  final int chatFilterId;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "chat_filter_id": chatFilterId,
      "@extra": extra,
		};
	}

  
  GetChatFilter copyWith({
    int? chatFilterId,
  }) => GetChatFilter(
    chatFilterId: chatFilterId ?? this.chatFilterId,
  );

  static const String objectType = 'getChatFilter';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

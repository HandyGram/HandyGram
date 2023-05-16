part of '../tdapi.dart';

/// **EditChatFilter** *(editChatFilter)* - TDLib function
///
/// Edits existing chat filter. Returns information about the edited chat filter.
///
/// * [chatFilterId]: Chat filter identifier.
/// * [filter]: The edited chat filter.
///
/// [ChatFilterInfo] is returned on completion.
final class EditChatFilter extends TdFunction {
  
  /// **EditChatFilter** *(editChatFilter)* - TDLib function
  ///
  /// Edits existing chat filter. Returns information about the edited chat filter.
  ///
  /// * [chatFilterId]: Chat filter identifier.
  /// * [filter]: The edited chat filter.
  ///
  /// [ChatFilterInfo] is returned on completion.
  const EditChatFilter({
    required this.chatFilterId,
    required this.filter,
  });
  
  /// Chat filter identifier 
  final int chatFilterId;

  /// The edited chat filter
  final ChatFilter filter;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "chat_filter_id": chatFilterId,
      "filter": filter.toJson(),
      "@extra": extra,
		};
	}

  
  EditChatFilter copyWith({
    int? chatFilterId,
    ChatFilter? filter,
  }) => EditChatFilter(
    chatFilterId: chatFilterId ?? this.chatFilterId,
    filter: filter ?? this.filter,
  );

  static const String objectType = 'editChatFilter';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

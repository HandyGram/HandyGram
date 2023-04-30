part of '../tdapi.dart';

/// **DeleteChatFilter** *(deleteChatFilter)* - TDLib function
  ///
  /// Deletes existing chat filter.
  ///
  /// * [chatFilterId]: Chat filter identifier.
  ///
  /// [Ok] is returned on completion.
class DeleteChatFilter extends TdFunction {
  
  /// **DeleteChatFilter** *(deleteChatFilter)* - TDLib function
  ///
  /// Deletes existing chat filter.
  ///
  /// * [chatFilterId]: Chat filter identifier.
  ///
  /// [Ok] is returned on completion.
  const DeleteChatFilter({
    required this.chatFilterId,
  });
  
  /// Chat filter identifier
  final int chatFilterId;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "chat_filter_id": chatFilterId,
      "@extra": extra,
    };
  }
  
  DeleteChatFilter copyWith({
    int? chatFilterId,
  }) => DeleteChatFilter(
    chatFilterId: chatFilterId ?? this.chatFilterId,
  );

  static const String constructor = 'deleteChatFilter';
  
  @override
  String getConstructor() => constructor;
}

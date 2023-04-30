part of '../tdapi.dart';

/// **ClearAllDraftMessages** *(clearAllDraftMessages)* - TDLib function
  ///
  /// Clears message drafts in all chats.
  ///
  /// * [excludeSecretChats]: Pass true to keep local message drafts in secret chats.
  ///
  /// [Ok] is returned on completion.
class ClearAllDraftMessages extends TdFunction {
  
  /// **ClearAllDraftMessages** *(clearAllDraftMessages)* - TDLib function
  ///
  /// Clears message drafts in all chats.
  ///
  /// * [excludeSecretChats]: Pass true to keep local message drafts in secret chats.
  ///
  /// [Ok] is returned on completion.
  const ClearAllDraftMessages({
    required this.excludeSecretChats,
  });
  
  /// Pass true to keep local message drafts in secret chats
  final bool excludeSecretChats;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "exclude_secret_chats": excludeSecretChats,
      "@extra": extra,
    };
  }
  
  ClearAllDraftMessages copyWith({
    bool? excludeSecretChats,
  }) => ClearAllDraftMessages(
    excludeSecretChats: excludeSecretChats ?? this.excludeSecretChats,
  );

  static const String constructor = 'clearAllDraftMessages';
  
  @override
  String getConstructor() => constructor;
}

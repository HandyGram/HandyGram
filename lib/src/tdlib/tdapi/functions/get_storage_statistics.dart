part of '../tdapi.dart';

/// **GetStorageStatistics** *(getStorageStatistics)* - TDLib function
///
/// Returns storage usage statistics. Can be called before authorization.
///
/// * [chatLimit]: The maximum number of chats with the largest storage usage for which separate statistics need to be returned. All other chats will be grouped in entries with chat_id == 0. If the chat info database is not used, the chat_limit is ignored and is always set to 0.
///
/// [StorageStatistics] is returned on completion.
final class GetStorageStatistics extends TdFunction {
  
  /// **GetStorageStatistics** *(getStorageStatistics)* - TDLib function
  ///
  /// Returns storage usage statistics. Can be called before authorization.
  ///
  /// * [chatLimit]: The maximum number of chats with the largest storage usage for which separate statistics need to be returned. All other chats will be grouped in entries with chat_id == 0. If the chat info database is not used, the chat_limit is ignored and is always set to 0.
  ///
  /// [StorageStatistics] is returned on completion.
  const GetStorageStatistics({
    required this.chatLimit,
  });
  
  /// The maximum number of chats with the largest storage usage for which separate statistics need to be returned. All other chats will be grouped in entries with chat_id == 0. If the chat info database is not used, the chat_limit is ignored and is always set to 0
  final int chatLimit;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "chat_limit": chatLimit,
      "@extra": extra,
		};
	}

  
  GetStorageStatistics copyWith({
    int? chatLimit,
  }) => GetStorageStatistics(
    chatLimit: chatLimit ?? this.chatLimit,
  );

  static const String objectType = 'getStorageStatistics';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

part of '../tdapi.dart';

/// **StorageStatistics** *(storageStatistics)* - basic class
///
/// Contains the exact storage usage statistics split by chats and file type.
///
/// * [size]: Total size of files, in bytes.
/// * [count]: Total number of files.
/// * [byChat]: Statistics split by chats.
final class StorageStatistics extends TdObject {
  
  /// **StorageStatistics** *(storageStatistics)* - basic class
  ///
  /// Contains the exact storage usage statistics split by chats and file type.
  ///
  /// * [size]: Total size of files, in bytes.
  /// * [count]: Total number of files.
  /// * [byChat]: Statistics split by chats.
  const StorageStatistics({
    required this.size,
    required this.count,
    required this.byChat,
    this.extra,
    this.clientId,
  });
  
  /// Total size of files, in bytes
  final int size;

  /// Total number of files
  final int count;

  /// Statistics split by chats
  final List<StorageStatisticsByChat> byChat;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory StorageStatistics.fromJson(Map<String, dynamic> json) => StorageStatistics(
    size: json['size'],
    count: json['count'],
    byChat: List<StorageStatisticsByChat>.from((json['by_chat'] ?? []).map((item) => StorageStatisticsByChat.fromJson(item)).toList()),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "size": size,
      "count": count,
      "by_chat": byChat.map((i) => i.toJson()).toList(),
		};
	}

  
  StorageStatistics copyWith({
    int? size,
    int? count,
    List<StorageStatisticsByChat>? byChat,
    dynamic extra,
    int? clientId,
  }) => StorageStatistics(
    size: size ?? this.size,
    count: count ?? this.count,
    byChat: byChat ?? this.byChat,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'storageStatistics';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

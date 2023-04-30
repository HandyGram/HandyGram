part of '../tdapi.dart';

/// **CreateNewBasicGroupChat** *(createNewBasicGroupChat)* - TDLib function
  ///
  /// Creates a new basic group and sends a corresponding messageBasicGroupChatCreate. Returns the newly created chat.
  ///
  /// * [userIds]: Identifiers of users to be added to the basic group.
  /// * [title]: Title of the new basic group; 1-128 characters.
  /// * [messageAutoDeleteTime]: Message auto-delete time value, in seconds; must be from 0 up to 365 * 86400 and be divisible by 86400. If 0, then messages aren't deleted automatically.
  ///
  /// [Chat] is returned on completion.
class CreateNewBasicGroupChat extends TdFunction {
  
  /// **CreateNewBasicGroupChat** *(createNewBasicGroupChat)* - TDLib function
  ///
  /// Creates a new basic group and sends a corresponding messageBasicGroupChatCreate. Returns the newly created chat.
  ///
  /// * [userIds]: Identifiers of users to be added to the basic group.
  /// * [title]: Title of the new basic group; 1-128 characters.
  /// * [messageAutoDeleteTime]: Message auto-delete time value, in seconds; must be from 0 up to 365 * 86400 and be divisible by 86400. If 0, then messages aren't deleted automatically.
  ///
  /// [Chat] is returned on completion.
  const CreateNewBasicGroupChat({
    required this.userIds,
    required this.title,
    required this.messageAutoDeleteTime,
  });
  
  /// Identifiers of users to be added to the basic group
  final List<int> userIds;

  /// Title of the new basic group; 1-128 characters
  final String title;

  /// Message auto-delete time value, in seconds; must be from 0 up to 365 * 86400 and be divisible by 86400. If 0, then messages aren't deleted automatically
  final int messageAutoDeleteTime;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "user_ids": userIds.map((i) => i).toList(),
      "title": title,
      "message_auto_delete_time": messageAutoDeleteTime,
      "@extra": extra,
    };
  }
  
  CreateNewBasicGroupChat copyWith({
    List<int>? userIds,
    String? title,
    int? messageAutoDeleteTime,
  }) => CreateNewBasicGroupChat(
    userIds: userIds ?? this.userIds,
    title: title ?? this.title,
    messageAutoDeleteTime: messageAutoDeleteTime ?? this.messageAutoDeleteTime,
  );

  static const String constructor = 'createNewBasicGroupChat';
  
  @override
  String getConstructor() => constructor;
}

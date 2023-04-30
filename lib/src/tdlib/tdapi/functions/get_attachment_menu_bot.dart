part of '../tdapi.dart';

/// **GetAttachmentMenuBot** *(getAttachmentMenuBot)* - TDLib function
  ///
  /// Returns information about a bot that can be added to attachment menu.
  ///
  /// * [botUserId]: Bot's user identifier.
  ///
  /// [AttachmentMenuBot] is returned on completion.
class GetAttachmentMenuBot extends TdFunction {
  
  /// **GetAttachmentMenuBot** *(getAttachmentMenuBot)* - TDLib function
  ///
  /// Returns information about a bot that can be added to attachment menu.
  ///
  /// * [botUserId]: Bot's user identifier.
  ///
  /// [AttachmentMenuBot] is returned on completion.
  const GetAttachmentMenuBot({
    required this.botUserId,
  });
  
  /// Bot's user identifier
  final int botUserId;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "bot_user_id": botUserId,
      "@extra": extra,
    };
  }
  
  GetAttachmentMenuBot copyWith({
    int? botUserId,
  }) => GetAttachmentMenuBot(
    botUserId: botUserId ?? this.botUserId,
  );

  static const String constructor = 'getAttachmentMenuBot';
  
  @override
  String getConstructor() => constructor;
}

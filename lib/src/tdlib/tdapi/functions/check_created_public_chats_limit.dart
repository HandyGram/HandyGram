part of '../tdapi.dart';

/// **CheckCreatedPublicChatsLimit** *(checkCreatedPublicChatsLimit)* - TDLib function
  ///
  /// Checks whether the maximum number of owned public chats has been reached. Returns corresponding error if the limit was reached. The limit can be increased with Telegram Premium.
  ///
  /// * [type]: Type of the public chats, for which to check the limit.
  ///
  /// [Ok] is returned on completion.
class CheckCreatedPublicChatsLimit extends TdFunction {
  
  /// **CheckCreatedPublicChatsLimit** *(checkCreatedPublicChatsLimit)* - TDLib function
  ///
  /// Checks whether the maximum number of owned public chats has been reached. Returns corresponding error if the limit was reached. The limit can be increased with Telegram Premium.
  ///
  /// * [type]: Type of the public chats, for which to check the limit.
  ///
  /// [Ok] is returned on completion.
  const CheckCreatedPublicChatsLimit({
    required this.type,
  });
  
  /// Type of the public chats, for which to check the limit
  final PublicChatType type;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "type": type.toJson(),
      "@extra": extra,
    };
  }
  
  CheckCreatedPublicChatsLimit copyWith({
    PublicChatType? type,
  }) => CheckCreatedPublicChatsLimit(
    type: type ?? this.type,
  );

  static const String constructor = 'checkCreatedPublicChatsLimit';
  
  @override
  String getConstructor() => constructor;
}

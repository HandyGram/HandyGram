part of '../tdapi.dart';

/// **GetMenuButton** *(getMenuButton)* - TDLib function
  ///
  /// Returns menu button set by the bot for the given user; for bots only.
  ///
  /// * [userId]: Identifier of the user or 0 to get the default menu button.
  ///
  /// [BotMenuButton] is returned on completion.
class GetMenuButton extends TdFunction {
  
  /// **GetMenuButton** *(getMenuButton)* - TDLib function
  ///
  /// Returns menu button set by the bot for the given user; for bots only.
  ///
  /// * [userId]: Identifier of the user or 0 to get the default menu button.
  ///
  /// [BotMenuButton] is returned on completion.
  const GetMenuButton({
    required this.userId,
  });
  
  /// Identifier of the user or 0 to get the default menu button
  final int userId;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "user_id": userId,
      "@extra": extra,
    };
  }
  
  GetMenuButton copyWith({
    int? userId,
  }) => GetMenuButton(
    userId: userId ?? this.userId,
  );

  static const String constructor = 'getMenuButton';
  
  @override
  String getConstructor() => constructor;
}

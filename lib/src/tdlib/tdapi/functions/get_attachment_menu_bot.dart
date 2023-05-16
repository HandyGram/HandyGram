part of '../tdapi.dart';

/// **GetAttachmentMenuBot** *(getAttachmentMenuBot)* - TDLib function
///
/// Returns information about a bot that can be added to attachment menu.
///
/// * [botUserId]: Bot's user identifier.
///
/// [AttachmentMenuBot] is returned on completion.
final class GetAttachmentMenuBot extends TdFunction {
  
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
			"@type": objectType,
      "bot_user_id": botUserId,
      "@extra": extra,
		};
	}

  
  GetAttachmentMenuBot copyWith({
    int? botUserId,
  }) => GetAttachmentMenuBot(
    botUserId: botUserId ?? this.botUserId,
  );

  static const String objectType = 'getAttachmentMenuBot';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

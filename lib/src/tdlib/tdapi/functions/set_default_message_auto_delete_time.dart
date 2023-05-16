part of '../tdapi.dart';

/// **SetDefaultMessageAutoDeleteTime** *(setDefaultMessageAutoDeleteTime)* - TDLib function
///
/// Changes the default message auto-delete time for new chats.
///
/// * [messageAutoDeleteTime]: New default message auto-delete time; must be from 0 up to 365 * 86400 and be divisible by 86400. If 0, then messages aren't deleted automatically.
///
/// [Ok] is returned on completion.
final class SetDefaultMessageAutoDeleteTime extends TdFunction {
  
  /// **SetDefaultMessageAutoDeleteTime** *(setDefaultMessageAutoDeleteTime)* - TDLib function
  ///
  /// Changes the default message auto-delete time for new chats.
  ///
  /// * [messageAutoDeleteTime]: New default message auto-delete time; must be from 0 up to 365 * 86400 and be divisible by 86400. If 0, then messages aren't deleted automatically.
  ///
  /// [Ok] is returned on completion.
  const SetDefaultMessageAutoDeleteTime({
    required this.messageAutoDeleteTime,
  });
  
  /// New default message auto-delete time; must be from 0 up to 365 * 86400 and be divisible by 86400. If 0, then messages aren't deleted automatically
  final MessageAutoDeleteTime messageAutoDeleteTime;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "message_auto_delete_time": messageAutoDeleteTime.toJson(),
      "@extra": extra,
		};
	}

  
  SetDefaultMessageAutoDeleteTime copyWith({
    MessageAutoDeleteTime? messageAutoDeleteTime,
  }) => SetDefaultMessageAutoDeleteTime(
    messageAutoDeleteTime: messageAutoDeleteTime ?? this.messageAutoDeleteTime,
  );

  static const String objectType = 'setDefaultMessageAutoDeleteTime';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

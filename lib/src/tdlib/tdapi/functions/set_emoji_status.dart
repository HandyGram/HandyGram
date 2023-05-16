part of '../tdapi.dart';

/// **SetEmojiStatus** *(setEmojiStatus)* - TDLib function
///
/// Changes the emoji status of the current user; for Telegram Premium users only.
///
/// * [emojiStatus]: New emoji status; pass null to switch to the default badge *(optional)*.
/// * [duration]: Duration of the status, in seconds; pass 0 to keep the status active until it will be changed manually.
///
/// [Ok] is returned on completion.
final class SetEmojiStatus extends TdFunction {
  
  /// **SetEmojiStatus** *(setEmojiStatus)* - TDLib function
  ///
  /// Changes the emoji status of the current user; for Telegram Premium users only.
  ///
  /// * [emojiStatus]: New emoji status; pass null to switch to the default badge *(optional)*.
  /// * [duration]: Duration of the status, in seconds; pass 0 to keep the status active until it will be changed manually.
  ///
  /// [Ok] is returned on completion.
  const SetEmojiStatus({
    this.emojiStatus,
    required this.duration,
  });
  
  /// New emoji status; pass null to switch to the default badge
  final EmojiStatus? emojiStatus;

  /// Duration of the status, in seconds; pass 0 to keep the status active until it will be changed manually
  final int duration;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "emoji_status": emojiStatus?.toJson(),
      "duration": duration,
      "@extra": extra,
		};
	}

  
  SetEmojiStatus copyWith({
    EmojiStatus? emojiStatus,
    int? duration,
  }) => SetEmojiStatus(
    emojiStatus: emojiStatus ?? this.emojiStatus,
    duration: duration ?? this.duration,
  );

  static const String objectType = 'setEmojiStatus';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

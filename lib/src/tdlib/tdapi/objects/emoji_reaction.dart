part of '../tdapi.dart';

/// **EmojiReaction** *(emojiReaction)* - basic class
///
/// Contains information about a emoji reaction.
///
/// * [emoji]: Text representation of the reaction.
/// * [title]: Reaction title.
/// * [isActive]: True, if the reaction can be added to new messages and enabled in chats.
/// * [staticIcon]: Static icon for the reaction.
/// * [appearAnimation]: Appear animation for the reaction.
/// * [selectAnimation]: Select animation for the reaction.
/// * [activateAnimation]: Activate animation for the reaction.
/// * [effectAnimation]: Effect animation for the reaction.
/// * [aroundAnimation]: Around animation for the reaction; may be null *(optional)*.
/// * [centerAnimation]: Center animation for the reaction; may be null *(optional)*.
final class EmojiReaction extends TdObject {
  
  /// **EmojiReaction** *(emojiReaction)* - basic class
  ///
  /// Contains information about a emoji reaction.
  ///
  /// * [emoji]: Text representation of the reaction.
  /// * [title]: Reaction title.
  /// * [isActive]: True, if the reaction can be added to new messages and enabled in chats.
  /// * [staticIcon]: Static icon for the reaction.
  /// * [appearAnimation]: Appear animation for the reaction.
  /// * [selectAnimation]: Select animation for the reaction.
  /// * [activateAnimation]: Activate animation for the reaction.
  /// * [effectAnimation]: Effect animation for the reaction.
  /// * [aroundAnimation]: Around animation for the reaction; may be null *(optional)*.
  /// * [centerAnimation]: Center animation for the reaction; may be null *(optional)*.
  const EmojiReaction({
    required this.emoji,
    required this.title,
    required this.isActive,
    required this.staticIcon,
    required this.appearAnimation,
    required this.selectAnimation,
    required this.activateAnimation,
    required this.effectAnimation,
    this.aroundAnimation,
    this.centerAnimation,
    this.extra,
    this.clientId,
  });
  
  /// Text representation of the reaction
  final String emoji;

  /// Reaction title
  final String title;

  /// True, if the reaction can be added to new messages and enabled in chats
  final bool isActive;

  /// Static icon for the reaction
  final Sticker staticIcon;

  /// Appear animation for the reaction
  final Sticker appearAnimation;

  /// Select animation for the reaction
  final Sticker selectAnimation;

  /// Activate animation for the reaction
  final Sticker activateAnimation;

  /// Effect animation for the reaction
  final Sticker effectAnimation;

  /// Around animation for the reaction; may be null
  final Sticker? aroundAnimation;

  /// Center animation for the reaction; may be null
  final Sticker? centerAnimation;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory EmojiReaction.fromJson(Map<String, dynamic> json) => EmojiReaction(
    emoji: json['emoji'],
    title: json['title'],
    isActive: json['is_active'],
    staticIcon: Sticker.fromJson(json['static_icon']),
    appearAnimation: Sticker.fromJson(json['appear_animation']),
    selectAnimation: Sticker.fromJson(json['select_animation']),
    activateAnimation: Sticker.fromJson(json['activate_animation']),
    effectAnimation: Sticker.fromJson(json['effect_animation']),
    aroundAnimation: json['around_animation'] == null ? null : Sticker.fromJson(json['around_animation']),
    centerAnimation: json['center_animation'] == null ? null : Sticker.fromJson(json['center_animation']),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "emoji": emoji,
      "title": title,
      "is_active": isActive,
      "static_icon": staticIcon.toJson(),
      "appear_animation": appearAnimation.toJson(),
      "select_animation": selectAnimation.toJson(),
      "activate_animation": activateAnimation.toJson(),
      "effect_animation": effectAnimation.toJson(),
      "around_animation": aroundAnimation?.toJson(),
      "center_animation": centerAnimation?.toJson(),
		};
	}

  
  EmojiReaction copyWith({
    String? emoji,
    String? title,
    bool? isActive,
    Sticker? staticIcon,
    Sticker? appearAnimation,
    Sticker? selectAnimation,
    Sticker? activateAnimation,
    Sticker? effectAnimation,
    Sticker? aroundAnimation,
    Sticker? centerAnimation,
    dynamic extra,
    int? clientId,
  }) => EmojiReaction(
    emoji: emoji ?? this.emoji,
    title: title ?? this.title,
    isActive: isActive ?? this.isActive,
    staticIcon: staticIcon ?? this.staticIcon,
    appearAnimation: appearAnimation ?? this.appearAnimation,
    selectAnimation: selectAnimation ?? this.selectAnimation,
    activateAnimation: activateAnimation ?? this.activateAnimation,
    effectAnimation: effectAnimation ?? this.effectAnimation,
    aroundAnimation: aroundAnimation ?? this.aroundAnimation,
    centerAnimation: centerAnimation ?? this.centerAnimation,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'emojiReaction';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

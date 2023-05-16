part of '../tdapi.dart';

/// **DiceStickers** *(diceStickers)* - parent
///
/// Contains animated stickers which must be used for dice animation rendering.
sealed class DiceStickers extends TdObject {
  
  /// **DiceStickers** *(diceStickers)* - parent
  ///
  /// Contains animated stickers which must be used for dice animation rendering.
  const DiceStickers();
  
  /// a DiceStickers return type can be :
  /// * [DiceStickersRegular]
  /// * [DiceStickersSlotMachine]
  factory DiceStickers.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case DiceStickersRegular.objectType:
        return DiceStickersRegular.fromJson(json);
      case DiceStickersSlotMachine.objectType:
        return DiceStickersSlotMachine.fromJson(json);
      default:
        throw FormatException(
          "Unknown object ${json["@type"]} (expected child of DiceStickers)",
          json,
        );
    }
  }
  
  @override
  Map<String, dynamic> toJson();

  
  DiceStickers copyWith();

  static const String objectType = 'diceStickers';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **DiceStickersRegular** *(diceStickersRegular)* - child of DiceStickers
///
/// A regular animated sticker.
///
/// * [sticker]: The animated sticker with the dice animation.
final class DiceStickersRegular extends DiceStickers {
  
  /// **DiceStickersRegular** *(diceStickersRegular)* - child of DiceStickers
  ///
  /// A regular animated sticker.
  ///
  /// * [sticker]: The animated sticker with the dice animation.
  const DiceStickersRegular({
    required this.sticker,
  });
  
  /// The animated sticker with the dice animation
  final Sticker sticker;
  
  /// Parse from a json
  factory DiceStickersRegular.fromJson(Map<String, dynamic> json) => DiceStickersRegular(
    sticker: Sticker.fromJson(json['sticker']),
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "sticker": sticker.toJson(),
		};
	}

  
  @override
  DiceStickersRegular copyWith({
    Sticker? sticker,
  }) => DiceStickersRegular(
    sticker: sticker ?? this.sticker,
  );

  static const String objectType = 'diceStickersRegular';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **DiceStickersSlotMachine** *(diceStickersSlotMachine)* - child of DiceStickers
///
/// Animated stickers to be combined into a slot machine.
///
/// * [background]: The animated sticker with the slot machine background. The background animation must start playing after all reel animations finish.
/// * [lever]: The animated sticker with the lever animation. The lever animation must play once in the initial dice state.
/// * [leftReel]: The animated sticker with the left reel.
/// * [centerReel]: The animated sticker with the center reel.
/// * [rightReel]: The animated sticker with the right reel.
final class DiceStickersSlotMachine extends DiceStickers {
  
  /// **DiceStickersSlotMachine** *(diceStickersSlotMachine)* - child of DiceStickers
  ///
  /// Animated stickers to be combined into a slot machine.
  ///
  /// * [background]: The animated sticker with the slot machine background. The background animation must start playing after all reel animations finish.
  /// * [lever]: The animated sticker with the lever animation. The lever animation must play once in the initial dice state.
  /// * [leftReel]: The animated sticker with the left reel.
  /// * [centerReel]: The animated sticker with the center reel.
  /// * [rightReel]: The animated sticker with the right reel.
  const DiceStickersSlotMachine({
    required this.background,
    required this.lever,
    required this.leftReel,
    required this.centerReel,
    required this.rightReel,
  });
  
  /// The animated sticker with the slot machine background. The background animation must start playing after all reel animations finish
  final Sticker background;

  /// The animated sticker with the lever animation. The lever animation must play once in the initial dice state
  final Sticker lever;

  /// The animated sticker with the left reel
  final Sticker leftReel;

  /// The animated sticker with the center reel
  final Sticker centerReel;

  /// The animated sticker with the right reel
  final Sticker rightReel;
  
  /// Parse from a json
  factory DiceStickersSlotMachine.fromJson(Map<String, dynamic> json) => DiceStickersSlotMachine(
    background: Sticker.fromJson(json['background']),
    lever: Sticker.fromJson(json['lever']),
    leftReel: Sticker.fromJson(json['left_reel']),
    centerReel: Sticker.fromJson(json['center_reel']),
    rightReel: Sticker.fromJson(json['right_reel']),
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "background": background.toJson(),
      "lever": lever.toJson(),
      "left_reel": leftReel.toJson(),
      "center_reel": centerReel.toJson(),
      "right_reel": rightReel.toJson(),
		};
	}

  
  @override
  DiceStickersSlotMachine copyWith({
    Sticker? background,
    Sticker? lever,
    Sticker? leftReel,
    Sticker? centerReel,
    Sticker? rightReel,
  }) => DiceStickersSlotMachine(
    background: background ?? this.background,
    lever: lever ?? this.lever,
    leftReel: leftReel ?? this.leftReel,
    centerReel: centerReel ?? this.centerReel,
    rightReel: rightReel ?? this.rightReel,
  );

  static const String objectType = 'diceStickersSlotMachine';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

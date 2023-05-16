part of '../tdapi.dart';

/// **CheckStickerSetName** *(checkStickerSetName)* - TDLib function
///
/// Checks whether a name can be used for a new sticker set.
///
/// * [name]: Name to be checked.
///
/// [CheckStickerSetNameResult] is returned on completion.
final class CheckStickerSetName extends TdFunction {
  
  /// **CheckStickerSetName** *(checkStickerSetName)* - TDLib function
  ///
  /// Checks whether a name can be used for a new sticker set.
  ///
  /// * [name]: Name to be checked.
  ///
  /// [CheckStickerSetNameResult] is returned on completion.
  const CheckStickerSetName({
    required this.name,
  });
  
  /// Name to be checked
  final String name;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "name": name,
      "@extra": extra,
		};
	}

  
  CheckStickerSetName copyWith({
    String? name,
  }) => CheckStickerSetName(
    name: name ?? this.name,
  );

  static const String objectType = 'checkStickerSetName';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

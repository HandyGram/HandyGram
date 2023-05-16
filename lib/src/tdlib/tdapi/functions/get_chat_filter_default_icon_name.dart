part of '../tdapi.dart';

/// **GetChatFilterDefaultIconName** *(getChatFilterDefaultIconName)* - TDLib function
///
/// Returns default icon name for a filter. Can be called synchronously.
///
/// * [filter]: Chat filter.
///
/// [Text] is returned on completion.
final class GetChatFilterDefaultIconName extends TdFunction {
  
  /// **GetChatFilterDefaultIconName** *(getChatFilterDefaultIconName)* - TDLib function
  ///
  /// Returns default icon name for a filter. Can be called synchronously.
  ///
  /// * [filter]: Chat filter.
  ///
  /// [Text] is returned on completion.
  const GetChatFilterDefaultIconName({
    required this.filter,
  });
  
  /// Chat filter
  final ChatFilter filter;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "filter": filter.toJson(),
      "@extra": extra,
		};
	}

  
  GetChatFilterDefaultIconName copyWith({
    ChatFilter? filter,
  }) => GetChatFilterDefaultIconName(
    filter: filter ?? this.filter,
  );

  static const String objectType = 'getChatFilterDefaultIconName';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}

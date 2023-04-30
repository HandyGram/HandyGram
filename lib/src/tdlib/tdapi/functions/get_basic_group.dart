part of '../tdapi.dart';

/// **GetBasicGroup** *(getBasicGroup)* - TDLib function
  ///
  /// Returns information about a basic group by its identifier. This is an offline request if the current user is not a bot.
  ///
  /// * [basicGroupId]: Basic group identifier.
  ///
  /// [BasicGroup] is returned on completion.
class GetBasicGroup extends TdFunction {
  
  /// **GetBasicGroup** *(getBasicGroup)* - TDLib function
  ///
  /// Returns information about a basic group by its identifier. This is an offline request if the current user is not a bot.
  ///
  /// * [basicGroupId]: Basic group identifier.
  ///
  /// [BasicGroup] is returned on completion.
  const GetBasicGroup({
    required this.basicGroupId,
  });
  
  /// Basic group identifier
  final int basicGroupId;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "basic_group_id": basicGroupId,
      "@extra": extra,
    };
  }
  
  GetBasicGroup copyWith({
    int? basicGroupId,
  }) => GetBasicGroup(
    basicGroupId: basicGroupId ?? this.basicGroupId,
  );

  static const String constructor = 'getBasicGroup';
  
  @override
  String getConstructor() => constructor;
}

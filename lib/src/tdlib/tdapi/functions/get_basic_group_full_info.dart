part of '../tdapi.dart';

/// **GetBasicGroupFullInfo** *(getBasicGroupFullInfo)* - TDLib function
  ///
  /// Returns full information about a basic group by its identifier.
  ///
  /// * [basicGroupId]: Basic group identifier.
  ///
  /// [BasicGroupFullInfo] is returned on completion.
class GetBasicGroupFullInfo extends TdFunction {
  
  /// **GetBasicGroupFullInfo** *(getBasicGroupFullInfo)* - TDLib function
  ///
  /// Returns full information about a basic group by its identifier.
  ///
  /// * [basicGroupId]: Basic group identifier.
  ///
  /// [BasicGroupFullInfo] is returned on completion.
  const GetBasicGroupFullInfo({
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
  
  GetBasicGroupFullInfo copyWith({
    int? basicGroupId,
  }) => GetBasicGroupFullInfo(
    basicGroupId: basicGroupId ?? this.basicGroupId,
  );

  static const String constructor = 'getBasicGroupFullInfo';
  
  @override
  String getConstructor() => constructor;
}

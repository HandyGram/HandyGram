part of '../tdapi.dart';

/// **TestUseUpdate** *(testUseUpdate)* - TDLib function
  ///
  /// Does nothing and ensures that the Update object is used; for testing only. This is an offline method. Can be called before authorization.
  ///
  /// [Update] is returned on completion.
class TestUseUpdate extends TdFunction {
  
  /// **TestUseUpdate** *(testUseUpdate)* - TDLib function
  ///
  /// Does nothing and ensures that the Update object is used; for testing only. This is an offline method. Can be called before authorization.
  ///
  /// [Update] is returned on completion.
  const TestUseUpdate();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "@extra": extra,
    };
  }
  
  TestUseUpdate copyWith() => const TestUseUpdate();

  static const String constructor = 'testUseUpdate';
  
  @override
  String getConstructor() => constructor;
}

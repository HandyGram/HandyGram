part of 'tdapi.dart';

// todo: considering setExtra method or like that...
sealed class TdFunction {
  /// object type
  String get instanceType => "function";

  const TdFunction();
  Map<String, dynamic> toJson([dynamic extra]);
}

part of 'tdapi.dart';

sealed class TdObject<T> {
  /// callback sign
  dynamic get extra => null;

  /// client identifier
  int? get clientId => null;

  /// object type
  String get instanceType => "object";

  const TdObject();
  TdObject.fromJson(Map<String, dynamic> json);
  Map<String, dynamic> toJson();
}


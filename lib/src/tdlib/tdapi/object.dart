part of 'tdapi.dart';

abstract class TdObject<T> {
  /// callback sign
  dynamic get extra => null;

  /// client identifier
  int? get clientId => null;

  const TdObject();
  TdObject.fromJson(Map<String, dynamic> json);
  Map<String, dynamic> toJson();
  String getConstructor();
}

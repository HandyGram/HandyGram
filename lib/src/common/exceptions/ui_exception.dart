import 'package:handygram/src/common/exceptions/handy.dart';

class HandyUiException implements HandyException {
  final String message;
  final String component;

  @override
  String toString() => "HandyUiException[$component] $message";

  const HandyUiException(
    this.component,
    this.message,
  );
}

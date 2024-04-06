import 'package:handygram/src/common/exceptions/handy.dart';

class SettingsException implements HandyException {
  final String message;

  @override
  String toString() => "SettingsException[] $message";

  const SettingsException(
    this.message,
  );
}

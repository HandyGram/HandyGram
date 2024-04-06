import 'package:handy_tdlib/api.dart';
import 'package:handygram/src/common/exceptions/handy.dart';

class TdlibCoreException implements HandyException {
  final String message;
  final String module;
  final int? code, clientId;

  factory TdlibCoreException.fromTd(String tag, TdError error) =>
      TdlibCoreException(
        tag,
        error.message,
        clientId: error.clientId,
        code: error.code,
      );

  @override
  String toString() => "TdlibCoreException[$module] $message";

  const TdlibCoreException(
    this.module,
    this.message, {
    this.code,
    this.clientId,
  });
}

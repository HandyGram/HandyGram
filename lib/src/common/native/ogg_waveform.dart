import 'dart:convert';
import 'dart:ffi';
import 'dart:io';
import 'dart:isolate';
import 'package:ffi/ffi.dart';
import 'package:handygram/src/common/log/log.dart';

final class SizedBuf extends Struct {
  @Int32()
  external final int length;

  external final Pointer<Uint8> buf;
}

typedef GetTelegramWaveformNative = Pointer<SizedBuf> Function(Pointer<Utf8>);
typedef GetTelegramWaveform = Pointer<SizedBuf> Function(Pointer<Utf8>);

abstract class OggWaveform {
  static const tag = "OggWaveform";
  static final _lib = DynamicLibrary.open("libffistuff.so");

  static String forFileSync(File file) {
    if (!file.existsSync()) {
      throw "File doesn't exist";
    }

    final getTelegramWaveform =
        _lib.lookupFunction<GetTelegramWaveformNative, GetTelegramWaveform>(
            "getTelegramWaveform");
    final waveform = getTelegramWaveform(file.path.toNativeUtf8());
    if (waveform == nullptr) {
      throw "Failed to construct waveform";
    }
    final buf = waveform.cast<SizedBuf>().ref;
    l.i(tag, "Got waveform with length of ${buf.length} bytes", true);

    return base64.encode(buf.buf.asTypedList(buf.length));
  }

  static Future<String> forFile(File file) async {
    return Isolate.run(() => forFileSync(file));
  }
}

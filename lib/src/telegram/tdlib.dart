import 'package:handygram/src/misc/log.dart';
import 'package:handygram/src/tdlib/td_api.dart' as tdlib;
import 'package:handygram/src/tdlib/tdclient/event_subject.dart';

class TdlibGlue {
  Function(tdlib.TdObject)? _notifyAppFunc;
  late Stream<tdlib.TdObject> _stream;
  final EventSubject _eventSubject;
  int get clientId => _eventSubject.clientId;

  TdlibGlue._(this._eventSubject) {
    _stream = _eventSubject.listen();
    _stream.listen((e) => _notifyApp(e));
  }

  void kill() {
    _eventSubject.close();
  }

  static Future<TdlibGlue> initialize() async {
    final eventSubject = await EventSubject.initialize();
    return TdlibGlue._(eventSubject);
  }

  Future<tdlib.TdObject?> invoke(tdlib.TdFunction func, [int timeout = 5]) {
    return _eventSubject.invoke(func, timeout);
  }

  set notifier(Function(tdlib.TdObject) func) {
    _notifyAppFunc = func;
  }

  void _notifyApp(tdlib.TdObject object) {
    if (_notifyAppFunc != null) {
      _notifyAppFunc!(object);
    } else {
      l.w("TDLibGlue", "Notifier function had not bound yet!");
    }
  }
}

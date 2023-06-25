import 'package:handygram/src/misc/settings_db.dart';
export 'tdlib_utils.dart';

double scaleText(double prevSize) => prevSize * settingsStorage.textScale;

(int, String?) parseVersionCode(String version) {
  var split = version.split('');

  // Parsing X.Y.Z
  int major = int.parse(split[0]);
  int minor = int.parse(split[2]);
  int patch = int.parse(split[4]);

  // Do we have a prefix?
  String? prefix;
  if (version.length > 6) {
    // X.Y.Z- = 6 characters
    prefix = version.substring(6, version.length);
  }

  int code = major * 1000 + minor * 100 + patch * 10;
  if (prefix != null) code += 1;

  return (code, prefix);
}

import 'dart:io';
import 'dart:ui';

import 'package:handygram/generated/l10n.dart';

export 'package:handygram/generated/l10n.dart';

Future<void> loadLocalizations([Locale? predefined]) {
  final locale = predefined ??
      Locale(
        Platform.localeName.split('_').first,
        Platform.localeName
            .split('_')
            .elementAtOrNull(2)
            ?.split('.')
            .firstOrNull,
      );
  return AppLocalizations.load(locale);
}

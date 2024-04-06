import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:handygram/src/app.dart';
import 'package:handygram/src/common/cubits/current_account.dart';
import 'package:handygram/src/common/settings/entries.dart';
import 'package:handygram/src/common/settings/manager.dart';
import 'package:handygram/src/common/cubits/colors.dart';
import 'package:handygram/src/common/cubits/text.dart';

class HandyGram extends StatelessWidget {
  const HandyGram({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider.value(
          value: CurrentAccount.instance,
        ),
        BlocProvider<TextStyles>(create: (context) {
          TextStyles.instance.scale = Settings().get(SettingsEntries.textScale);
          return TextStyles.instance;
        }),
        BlocProvider<ColorStyles>(create: (context) {
          try {
            ColorStyles.instance.accentColor =
                Settings().get(SettingsEntries.colorSchemeId);
          } catch (_) {
            /// Fall back to default value
            ColorStyles.instance.accentColor =
                SettingsEntries.colorSchemeId.defaultValue!;
            Settings().put(
              SettingsEntries.colorSchemeId,
              SettingsEntries.colorSchemeId.defaultValue!,
            );
          }
          return ColorStyles.instance;
        }),
      ],
      child: const HandyGramApp(),
    );
  }
}

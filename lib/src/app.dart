/*
 * Copyright (C) Roman Rikhter <teledurak@gmail.com>, 2024
 * This program comes with ABSOLUTELY NO WARRANTY;
 * This is free software, and you are welcome to redistribute it under certain conditions;
 *
 * See /LICENSE for more details.
 */

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:handygram/src/common/cubits/colors.dart';
import 'package:handygram/src/common/cubits/current_account.dart';
import 'package:handygram/src/common/cubits/scaling.dart';
import 'package:handygram/src/common/cubits/text.dart';
import 'package:handygram/src/common/misc/localizations.dart';
import 'package:handygram/src/router/router.dart';

class HandyGramApp extends StatelessWidget {
  const HandyGramApp({super.key});

  @override
  Widget build(BuildContext context) {
    final scheme = context.watch<ColorStyles>().state;
    final theme = context.watch<TextStyles>().state;
    context.watch<Scaling>();
    context.watch<CurrentAccount>();

    return MaterialApp.router(
      routerConfig: router,
      supportedLocales: AppLocalizations.delegate.supportedLocales,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      theme: ThemeData.from(
        colorScheme: scheme,
        textTheme: theme,
        useMaterial3: true,
      ).copyWith(
        pageTransitionsTheme: const PageTransitionsTheme(builders: {
          // Matches WearOS animations
          TargetPlatform.android: CupertinoPageTransitionsBuilder(),
        }),
        // Use black background to save battery.
        scaffoldBackgroundColor: Colors.black,
      ),
      title: "HandyGram",
    );
  }
}

/*
 * Copyright (C) Roman Rikhter <teledurak@gmail.com>, 2024
 * This program comes with ABSOLUTELY NO WARRANTY;
 * This is free software, and you are welcome to redistribute it under certain conditions;
 *
 * See /LICENSE for more details.
 */

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:handygram/src/common/cubits/scaling.dart';
import 'package:handygram/src/common/misc/localizations.dart';
import 'package:handygram/src/components/controls/text_button.dart';
import 'package:handygram/src/components/list/listview.dart';
import 'package:handygram/src/components/text/header.dart';
import 'package:handygram/src/pages/setup/bloc.dart';
import 'package:pretty_qr_code/pretty_qr_code.dart';

class AuthorizationQrView extends StatelessWidget {
  const AuthorizationQrView({super.key, this.qrLink});

  final String? qrLink;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final qrSize = MediaQuery.of(context).size.shortestSide * 0.7;
    return Scaffold(
      body: HandyListView(
        bottomPadding: false,
        children: [
          PageHeader(
            title: l10n.qrScanTitle,
            topPadding: 10 * Scaling.factor,
            boxSize: 25 * Scaling.factor,
          ),
          GestureDetector(
            onLongPress: () {
              context.read<SetupBloc>().add(const SetupEventRestart());
            },
            child: SizedBox(
              height: qrSize,
              width: qrSize,
              child: qrLink == null
                  ? Center(
                      child: SizedBox(
                        height: 50 * Scaling.factor,
                        width: 50 * Scaling.factor,
                        child: const CircularProgressIndicator(),
                      ),
                    )
                  : Padding(
                      padding: EdgeInsets.all(10 * Scaling.factor),
                      child: PrettyQrView.data(
                        data: qrLink!,
                        errorCorrectLevel: QrErrorCorrectLevel.L,
                        decoration: const PrettyQrDecoration(
                          shape: PrettyQrSmoothSymbol(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
            ),
          ),
          HandyTextButton(
            text: "How to scan?",
            onTap: () => GoRouter.of(context).push("/setup/qr_instruction"),
          ),
        ],
      ),
    );
  }
}

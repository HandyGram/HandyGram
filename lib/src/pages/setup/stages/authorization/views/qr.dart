import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
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
    final qrSize = MediaQuery.of(context).size.longestSide * 0.7;
    return Scaffold(
      body: HandyListView(
        bottomPadding: false,
        children: [
          PageHeader(
            title: l10n.qrScanTitle,
            topPadding: 10,
            boxSize: 25,
          ),
          GestureDetector(
            onLongPress: () {
              context.read<SetupBloc>().add(const SetupEventRestart());
            },
            child: SizedBox(
              height: qrSize,
              width: qrSize,
              child: qrLink == null
                  ? const Center(
                      child: SizedBox(
                        height: 50,
                        width: 50,
                        child: CircularProgressIndicator(),
                      ),
                    )
                  : Padding(
                      padding: const EdgeInsets.all(10),
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

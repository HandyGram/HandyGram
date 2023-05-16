import 'package:flutter/material.dart';
import 'package:handygram/src/misc/utils.dart';

class SettingsErrorBox extends StatelessWidget {
  const SettingsErrorBox({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.errorContainer,
        borderRadius: BorderRadius.circular(20),
      ),
      padding: const EdgeInsets.all(10),
      width: double.infinity,
      child: Text(
        text,
        style: TextStyle(
          color: Theme.of(context).colorScheme.onErrorContainer,
          fontSize: scaleText(12),
        ),
      ),
    );
  }
}

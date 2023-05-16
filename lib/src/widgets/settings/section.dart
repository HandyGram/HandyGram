import 'package:flutter/material.dart';
import 'package:handygram/src/misc/utils.dart';

class SettingsSection extends StatelessWidget {
  const SettingsSection({super.key, required this.title, this.icon});

  final String title;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Padding(
          padding: const EdgeInsets.only(top: 10, bottom: 10),
          child: SizedBox(
            width: constraints.maxWidth,
            child: Row(
              children: [
                if (icon != null) ...[
                  Icon(icon, color: Colors.grey, size: 18),
                  const SizedBox(width: 7),
                ],
                Text(
                  title,
                  style: TextStyle(
                    fontSize: scaleText(14),
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

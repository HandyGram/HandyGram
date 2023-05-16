import 'package:flutter/material.dart';
import 'package:handygram/src/misc/utils.dart';

class SettingsSwitch extends StatefulWidget {
  const SettingsSwitch({
    super.key,
    required this.onChanged,
    required this.title,
    this.description,
    this.value = false,
    this.active = true,
  });

  final String title;
  final String? description;
  final bool value;
  final bool active;
  final Function(bool)? onChanged;

  @override
  State<SettingsSwitch> createState() => _SettingsSwitchState();
}

class _SettingsSwitchState extends State<SettingsSwitch> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                widget.title,
                softWrap: true,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: scaleText(11),
                  fontWeight: FontWeight.bold,
                  color: !widget.active ? Colors.grey : null,
                ),
              ),
              AnimatedSize(
                duration: const Duration(milliseconds: 500),
                curve: Curves.easeInOut,
                alignment: Alignment.topLeft,
                child: Container(
                  child: widget.active
                      ? Text(
                          widget.description ?? "",
                          softWrap: true,
                          maxLines: 10,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: scaleText(8),
                            color: !widget.active ? Colors.grey : null,
                          ),
                        )
                      : null,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          width: 5,
        ),
        Center(
          child: Switch(
            value: widget.value,
            onChanged: widget.active ? widget.onChanged : null,
          ),
        ),
      ],
    );
  }
}

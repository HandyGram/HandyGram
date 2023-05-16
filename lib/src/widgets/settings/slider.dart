import 'package:flutter/material.dart';
import 'package:handygram/src/misc/utils.dart';

class SettingsSlider extends StatefulWidget {
  const SettingsSlider({
    super.key,
    required this.value,
    required this.onChanged,
    required this.title,
    this.description,
    this.active = true,
  });

  final double value;
  final Function(double)? onChanged;
  final String title;
  final String? description;
  final bool active;

  @override
  State<SettingsSlider> createState() => _SettingsSliderState();
}

class _SettingsSliderState extends State<SettingsSlider> {
  @override
  Widget build(BuildContext context) {
    return Column(
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
        Slider(
          onChanged: (v) => widget.onChanged?.call(v),
          value: widget.value,
        ),
      ],
    );
  }
}

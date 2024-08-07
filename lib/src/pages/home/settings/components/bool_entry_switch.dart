import 'package:flutter/material.dart';
import 'package:handygram/src/common/cubits/colors.dart';
import 'package:handygram/src/common/cubits/text.dart';
import 'package:handygram/src/common/settings/manager.dart';
import 'package:handygram/src/common/settings/setting.dart';
import 'package:handygram/src/components/controls/checkbox.dart';
import 'package:handygram/src/components/scaled_sizes.dart';

class TypicalBoolEntrySwitch extends StatefulWidget {
  const TypicalBoolEntrySwitch(
    this.entry, {
    super.key,
    required this.title,
    this.description = "",
    this.disabled = false,
  });

  final Setting<bool> entry;
  final String title;
  final String description;
  final bool disabled;

  @override
  State<TypicalBoolEntrySwitch> createState() => _TypicalBoolEntrySwitchState();
}

class _TypicalBoolEntrySwitchState extends State<TypicalBoolEntrySwitch> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: Paddings.betweenSimilarElements),
      child: HandyCheckbox(
        value: widget.disabled ? false : Settings().get(widget.entry),
        onChanged: widget.disabled
            ? null
            : (value) => setState(() {
                  Settings().put(widget.entry, value);
                }),
        useSwitch: true,
        text: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.title,
              style: TextStyles.active.titleSmall,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            if (widget.description.isNotEmpty)
              Text(
                widget.description,
                style: TextStyles.active.labelLarge!.copyWith(
                  fontWeight: FontWeight.w500,
                  color: ColorStyles.active.secondary,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
          ],
        ),
      ),
    );
  }
}

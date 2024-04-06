import 'package:flutter/material.dart';
import 'package:handygram/src/common/cubits/colors.dart';

class HandyCheckbox extends StatelessWidget {
  const HandyCheckbox({
    super.key,
    required this.value,
    required this.onChanged,
    this.onBodyTap,
    this.onLongPress,
    this.text,
    this.circle = false,
    this.useSwitch = false,
  }) : assert((circle || useSwitch) ? (circle ^ useSwitch) : true);

  final bool value;
  final bool circle, useSwitch;
  final Widget? text;
  final void Function()? onBodyTap;
  final void Function(bool)? onChanged;
  final void Function()? onLongPress;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        minHeight: 61.5,
      ),
      child: AnimatedContainer(
        width: MediaQuery.of(context).size.width * 0.89,
        duration: const Duration(milliseconds: 150),
        curve: Curves.easeInOut,
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 5,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(31),
          gradient: LinearGradient(
            colors: [
              ColorStyles.active.surface,
              value
                  ? ColorStyles.active.onSurfaceVariant
                  : ColorStyles.active.surface,
            ],
          ),
        ),
        child: Center(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: onBodyTap ??
                      (onChanged == null ? null : () => onChanged!(!value)),
                  onLongPress: onLongPress,
                  behavior: HitTestBehavior.opaque,
                  child: text,
                ),
              ),
              GestureDetector(
                onTap: onChanged == null ? null : () => onChanged!(!value),
                onLongPress: onLongPress,
                behavior: HitTestBehavior.opaque,
                child: Row(
                  children: [
                    Container(width: 8),
                    Center(
                      child: (!useSwitch)
                          ? AnimatedContainer(
                              width: 24,
                              height: 24,
                              duration: const Duration(milliseconds: 200),
                              curve: Curves.easeInOut,
                              decoration: BoxDecoration(
                                borderRadius: circle
                                    ? BorderRadius.circular(12)
                                    : BorderRadius.circular(6),
                                color: value
                                    ? ColorStyles.active.primary
                                    : ColorStyles.active.onSurfaceVariant,
                              ),
                              child: Checkbox(
                                side: BorderSide.none,
                                fillColor: const MaterialStatePropertyAll(
                                    Colors.transparent),
                                overlayColor: const MaterialStatePropertyAll(
                                    Colors.transparent),
                                value: value,
                                materialTapTargetSize:
                                    MaterialTapTargetSize.shrinkWrap,
                                onChanged: null,
                              ),
                            )
                          : Transform.scale(
                              scale: 0.8,
                              child: SizedBox(
                                width: 44,
                                height: 20,
                                child: Switch(
                                  value: value,
                                  onChanged: onChanged,
                                  materialTapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                ),
                              ),
                            ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

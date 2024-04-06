import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:handygram/src/common/cubits/colors.dart';
import 'package:handygram/src/components/controls/tile_button.dart';
import 'package:handygram/src/components/list/listview.dart';
import 'package:handygram/src/common/cubits/text.dart';
import 'package:handygram/src/components/text/header.dart';

class ValuePickable<T> {
  final String title;
  final T value;

  const ValuePickable({
    required this.title,
    required this.value,
  });
}

class ValuePicker<T> extends StatelessWidget {
  const ValuePicker({
    super.key,
    required this.values,
    required this.currentValue,
    required this.onSelected,
    this.title,
    this.pickerHint,
  }) : assert(values.length > 1);

  final List<ValuePickable<T>> values;
  final T currentValue;
  final Function(T) onSelected;

  final String? title;
  final String? pickerHint;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        minHeight: 61.5,
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(31),
        onTap: () {
          showDialog(
            context: context,
            builder: (context) => Dialog.fullscreen(
              insetAnimationDuration: const Duration(milliseconds: 300),
              backgroundColor: Colors.black,
              child: SizedBox.expand(
                child: HandyListView(
                  controller: ScrollController(
                    initialScrollOffset: pickerHint == null ? 40 : 0,
                  ),
                  children: [
                    if (pickerHint != null)
                      PageHeader(title: pickerHint!)
                    else
                      const SizedBox(height: 90),
                    ...values.map(
                      (e) => Padding(
                        padding: const EdgeInsets.only(bottom: 5),
                        child: TileButton(
                          text: e.title,
                          gradient: e.value == currentValue,
                          colorful: false,
                          onTap: () {
                            GoRouter.of(context).pop();
                            onSelected(e.value);
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
        child: Ink(
          width: MediaQuery.of(context).size.width * 0.89,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(31),
            color: Theme.of(context).colorScheme.surface,
          ),
          padding: const EdgeInsets.only(
            left: 16,
            right: 12,
            top: 5,
            bottom: 5,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (title != null)
                    Text(
                      title!,
                      textAlign: TextAlign.left,
                      style: TextStyles.active.labelLarge!.copyWith(
                        fontWeight: FontWeight.w500,
                        color: ColorStyles.active.secondary,
                      ),
                      maxLines: 1,
                    ),
                  Text(
                    values.firstWhere((e) => e.value == currentValue).title,
                    style: TextStyles.active.titleSmall,
                    maxLines: 1,
                  ),
                ],
              ),
              const Icon(
                Icons.arrow_drop_down,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

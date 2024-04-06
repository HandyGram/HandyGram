import 'package:flutter/material.dart';
import 'package:handygram/src/common/cubits/text.dart';

class PageHeader extends StatelessWidget {
  const PageHeader({
    super.key,
    required this.title,
    this.topPadding,
    this.boxSize,
  });

  final String title;
  final double? topPadding, boxSize;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: topPadding ?? 17,
        left: 22,
        right: 22,
      ),
      child: SizedBox(
        height: boxSize ?? 65,
        child: Center(
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyles.active.titleMedium!,
          ),
        ),
      ),
    );
  }
}

/*
 * Copyright (C) Roman Rikhter <teledurak@gmail.com>, 2024
 * This program comes with ABSOLUTELY NO WARRANTY;
 * This is free software, and you are welcome to redistribute it under certain conditions;
 *
 * See /LICENSE for more details.
 */

import 'package:flutter/material.dart';
import 'package:handygram/src/common/cubits/text.dart';
import 'package:handygram/src/components/controls/checkbox.dart';
import 'package:handygram/src/components/controls/text_button.dart';
import 'package:handygram/src/components/controls/tile_button.dart';
import 'package:handygram/src/components/fields/text_field.dart';
import 'package:handygram/src/components/list/listview.dart';
import 'package:handygram/src/components/picker/picker.dart';
import 'package:handygram/src/components/scaled_sizes.dart';
import 'package:handygram/src/components/text/current_time.dart';
import 'package:handygram/src/components/text/header.dart';

class UiTestPage extends StatefulWidget {
  const UiTestPage({super.key});

  @override
  State<UiTestPage> createState() => _UiTestPageState();
}

class _UiTestPageState extends State<UiTestPage> {
  final TextEditingController controller = TextEditingController(),
      controller2 = TextEditingController();
  final List<bool> val = [
    true,
    false,
    false,
  ];
  String _picked = "apple";
  int curPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CurrentTime(
        child: HandyListView(
          children: [
            const PageHeader(title: "Test title"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TileButton(
                  icon: const Icon(Icons.navigate_before),
                  big: false,
                  onTap: () => setState(() => curPage--),
                ),
                TileButton(
                  icon: const Icon(Icons.navigate_next),
                  big: false,
                  onTap: () => setState(() => curPage++),
                ),
              ],
            ),
            SizedBox(height: Paddings.beforeSmallButton),
            const TileButton(
              text: "Disabled",
              big: false,
            ),
            const SizedBox(height: 10),
            TileButton(
              text: "Grey",
              onTap: () {},
              colorful: false,
              big: false,
            ),
            const SizedBox(height: 10),
            TileButton(
              text: "Default",
              onTap: () {},
              big: false,
            ),
            const SizedBox(height: 20),
            const TileButton(
              text: "Huge disabled",
              big: true,
            ),
            const SizedBox(height: 5),
            TileButton(
              text: "Huge grey",
              onTap: () {},
              colorful: false,
            ),
            const SizedBox(height: 5),
            TileButton(
              text: "Huge default",
              onTap: () {},
              big: true,
            ),
            const SizedBox(height: 20),
            HandyTextButton(
              text: "Text button",
              onTap: () {},
            ),
            const SizedBox(height: 20),
            HandyCheckbox(
              text: Text(
                "Checkbox square",
                style: TextStyles.active.titleSmall,
              ),
              value: val[0],
              onChanged: (v) => setState(() => val[0] = v),
            ),
            const SizedBox(height: 5),
            HandyCheckbox(
              text: Text(
                "Checkbox round",
                style: TextStyles.active.titleSmall,
              ),
              circle: true,
              value: val[1],
              onChanged: (v) => setState(() => val[1] = v),
            ),
            const SizedBox(height: 5),
            HandyCheckbox(
              text: Text(
                "Checkbox switch",
                style: TextStyles.active.titleSmall,
              ),
              useSwitch: true,
              value: val[2],
              onChanged: (v) => setState(() => val[2] = v),
            ),
            const SizedBox(height: 20),
            HandyTextField(
              controller: controller,
              title: "Text field",
            ),
            const SizedBox(height: 5),
            HandyTextField(
              controller: controller2,
              title: "Text field again",
            ),
            const SizedBox(height: 20),
            ValuePicker<String>(
              values: const [
                ValuePickable(title: "Apple", value: "apple"),
                ValuePickable(title: "Pear", value: "pear"),
                ValuePickable(title: "Cucumber", value: "cucumber"),
                ValuePickable(title: "Banana", value: "banana"),
              ],
              pickerHint: "Pick ur favourite",
              currentValue: _picked,
              title: "Hello world",
              onSelected: (v) => setState(() => _picked = v),
            ),
          ],
        ),
      ),
    );
  }
}

// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:hamidye_water_example/const/texts.dart';
import 'package:hamidye_water_example/utility/colors.dart';
import 'package:hamidye_water_example/utility/edgeInsets.dart';

class DropdownButton2 extends StatefulWidget {
  const DropdownButton2({super.key});
  @override
  State<StatefulWidget> createState() => _DropdownButton2State();
}

class _DropdownButton2State extends State<DropdownButton2> {
  static const _menuItems = <String>[
    menu2Item1,
  ];
  final List<DropdownMenuItem<String>> _dropDownMenuItems = _menuItems
      .map(
        (String value) => DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        ),
      )
      .toList();

  String? _btn2SelectedVal;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: cardBorder),
      color: ColorItems().dropdownColor,
      child: DropdownButton(
        padding: const EdgeInsets.only(left: 15),
        value: _btn2SelectedVal,
        dropdownColor: ColorItems().dropdownColor,
        hint: const Text(defaultDropdownText),
        onChanged: (String? newValue) {
          if (newValue != null) {
            setState(() => _btn2SelectedVal = newValue);
          }
        },
        items: _dropDownMenuItems,
      ),
    );
  }
}

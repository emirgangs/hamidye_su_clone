import 'package:flutter/material.dart';
import 'package:hamidye_water_example/const/texts.dart';
import 'package:hamidye_water_example/utility/colors.dart';
import 'package:hamidye_water_example/utility/edgeInsets.dart';

class DropdownButtonExample extends StatefulWidget {
  const DropdownButtonExample({super.key});
  @override
  State<StatefulWidget> createState() => _DropdownButtonExampleState();
}

class _DropdownButtonExampleState extends State<DropdownButtonExample> {
  static const menuItems = <String>[
    menuItem1,
    menuItem2,
    menuItem3,
    menuItem4,
    menuItem5,
    menuItem6
  ];
  final List<DropdownMenuItem<String>> _dropDownMenuItems = menuItems
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

/////////////////////////////////////////////////////////////////////////7



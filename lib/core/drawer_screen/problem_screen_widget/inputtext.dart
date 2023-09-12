// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import 'package:hamidye_water_example/utility/colors.dart';

class InputText extends StatelessWidget {
  const InputText({super.key});
  @override
  Widget build(BuildContext context) {
    double _onehoundred = 100;
    return TextField(
      decoration: InputDecoration(
        filled: true,
        fillColor: ColorItems().dropdownColor,
        contentPadding: EdgeInsets.symmetric(vertical: _onehoundred),
        border: const OutlineInputBorder(),
      ),
    );
  }
}

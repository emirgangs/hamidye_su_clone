// ignore_for_file: sort_child_properties_last, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hamidye_water_example/const/texts.dart';

class Button extends StatelessWidget {
  const Button({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Text(buttonText),
      style: ElevatedButton.styleFrom(
          shape: const StadiumBorder(),
          fixedSize: Size(MediaQuery.sizeOf(context).width * 0.95,
              MediaQuery.sizeOf(context).height * 0.07)),
    );
  }
}

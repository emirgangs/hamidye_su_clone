// ignore_for_file: must_be_immutable, file_names

import 'package:flutter/material.dart';
import 'package:hamidye_water_example/utility/colors.dart';

class ProductsTitle extends StatelessWidget {
  ProductsTitle({super.key, required this.title});
  String title;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.titleLarge,
    );
  }
}

class ProductsValue extends StatelessWidget {
  ProductsValue({super.key, required this.value});
  String value;
  @override
  Widget build(BuildContext context) {
    return Text(
      value,
      style: Theme.of(context)
          .textTheme
          .titleMedium
          ?.copyWith(color: ColorItems().black, fontWeight: FontWeight.bold),
    );
  }
}

class ProductsUnit extends StatelessWidget {
  ProductsUnit({super.key, required this.unit});
  String unit;
  @override
  Widget build(BuildContext context) {
    return Text(
      unit,
      style: Theme.of(context)
          .textTheme
          .titleMedium
          ?.copyWith(color: ColorItems().red, fontWeight: FontWeight.bold),
    );
  }
}

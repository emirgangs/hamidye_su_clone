import 'package:flutter/material.dart';
import 'package:hamidye_water_example/utility/colors.dart';

class OrderCartScreen extends StatelessWidget {
  const OrderCartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sepetim',
            style: TextStyle(color: ColorItems().lightBlueText)),
        centerTitle: true,
      ),
    );
  }
}

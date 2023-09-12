import 'package:flutter/material.dart';
import 'package:hamidye_water_example/utility/colors.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Siparişlerim',
            style: TextStyle(color: ColorItems().lightBlueText)),
        centerTitle: true,
      ),
    );
  }
}

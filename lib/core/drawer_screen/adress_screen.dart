import 'package:flutter/material.dart';
import 'package:hamidye_water_example/utility/colors.dart';

class AdressScreen extends StatelessWidget {
  const AdressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(color: ColorItems().lightBlueText),
        centerTitle: true,
        title: Text(
          'Adreslerim',
          style: TextStyle(color: ColorItems().lightBlueText),
        ),
      ),
      body: ListTile(
        leading: const Icon(Icons.home_outlined),
        title: Text(
          'Ev(Hürriyet MAH)',
          style: Theme.of(context)
              .textTheme
              .titleMedium
              ?.copyWith(fontWeight: FontWeight.bold),
        ),
        trailing: Checkbox(
          value: true,
          onChanged: (value) {},
        ),
      ),
    );
  }
}

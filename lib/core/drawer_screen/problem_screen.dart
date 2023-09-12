import 'package:flutter/material.dart';
import 'package:hamidye_water_example/const/texts.dart';
import 'package:hamidye_water_example/core/drawer_screen/problem_screen_widget/dropdown2_widget..dart';
import 'package:hamidye_water_example/core/drawer_screen/problem_screen_widget/dropdown_widget.dart';
import 'package:hamidye_water_example/core/drawer_screen/problem_screen_widget/inputtext.dart';
import 'package:hamidye_water_example/utility/colors.dart';
import 'problem_screen_widget/button.dart';

class ProblemScreen extends StatelessWidget {
  const ProblemScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(color: ColorItems().lightBlueText),
        centerTitle: true,
        title: Text(
          problemScreenText1,
          style: TextStyle(color: ColorItems().lightBlueText),
        ),
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            Text(problemScreenText2),
            ListTile(
              title: Text(problemScreenText3),
              subtitle: DropdownButtonExample(),
            ),
            ListTile(
              title: Text(problemScreenText4),
              subtitle: DropdownButton2(),
            ),
            ListTile(
              title: Text(problemScreenText5),
              subtitle: InputText(),
            ),
            Button()
          ],
        ),
      ),
    );
  }
}

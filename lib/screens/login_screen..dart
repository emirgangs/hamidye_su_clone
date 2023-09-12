// ignore_for_file: file_names, prefer_final_fields, must_be_immutable, camel_case_types, no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import 'package:hamidye_water_example/const/texts.dart';
import 'package:hamidye_water_example/core/drawer_screen/contact_screen.dart';
import 'package:hamidye_water_example/services/google_auth.dart';
import 'package:hamidye_water_example/utility/colors.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final double _forty = 40;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Expanded(
                flex: 3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(ibbLogo,
                        width: MediaQuery.sizeOf(context).width * 0.17),
                    Image.asset(logo,
                        width: MediaQuery.sizeOf(context).width * 0.37),
                  ],
                )),
            Expanded(
                flex: 4,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      loginText,
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall
                          ?.copyWith(
                              color: ColorItems().lightBlueText,
                              fontWeight: FontWeight.bold),
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: MediaQuery.sizeOf(context).height * 0.07,
                          width: MediaQuery.sizeOf(context).width * 0.4,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(_forty))),
                                  backgroundColor: ColorItems().transparant),
                              onPressed: () {
                                AuthService().signInWithGoogle();
                              },
                              child: Image.asset(googleLogo)),
                        ),
                        const Text(
                          orText,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            _logincards(imagePath: appleLogo),
                            _logincards(imagePath: phoneLogo),
                          ],
                        )
                      ],
                    ),
                  ],
                )),
            const Expanded(
                flex: 3,
                child: Column(
                  children: [hemensiparisverButton()],
                )),
          ],
        ),
      ),
    );
  }
}

class _logincards extends StatelessWidget {
  _logincards({required this.imagePath});
  String imagePath;
  @override
  Widget build(BuildContext context) {
    double _ten = 10;
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(_ten)),
      color: ColorItems().transparant,
      child: Image.asset(imagePath,
          width: MediaQuery.sizeOf(context).width * 0.12),
    );
  }
}

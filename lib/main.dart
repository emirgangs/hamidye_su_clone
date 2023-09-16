import 'package:flutter/material.dart';
import 'package:hamidye_water_example/const/texts.dart';
import 'package:hamidye_water_example/product/initialize/application_start.dart';
import 'package:hamidye_water_example/services/google_auth.dart';
import 'package:hamidye_water_example/utility/theme.dart';

void main() async {
  await ApplicationStart.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: apptitle,
      theme: LightTheme().theme,
      home: AuthService().handleAuthState(),
      debugShowCheckedModeBanner: false,
    );
  }
}

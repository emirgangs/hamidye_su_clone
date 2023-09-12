// ignore_for_file: depend_on_referenced_packages, prefer_typing_uninitialized_variables, unused_local_variable, prefer_final_fields
import 'package:flutter/material.dart';
import 'package:hamidye_water_example/core/home_screen_widgets/appbar.dart';
import 'package:hamidye_water_example/core/home_screen_widgets/drawer.dart';
import 'package:hamidye_water_example/core/tabbarViewScreen/bardakScreen.dart';
import 'package:hamidye_water_example/core/tabbarViewScreen/damacanaScreen.dart';
import 'package:hamidye_water_example/core/tabbarViewScreen/petScreen.dart';
import 'package:hamidye_water_example/core/tabbarViewScreen/tumuScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _four = 4;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _four,
      child: Scaffold(
        drawer: const homeScDrawer(),
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return [
              homeScrAppBar(context),
            ];
          },
          body: const TabBarView(
            children: [
              tumuScreen(),
              damacanaScreen(),
              petScreen(),
              bardakScreen(),
            ],
          ),
        ),
      ),
    );
  }
}

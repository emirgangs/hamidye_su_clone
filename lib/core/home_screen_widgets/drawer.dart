// ignore_for_file: camel_case_types, non_constant_identifier_names, must_be_immutable
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hamidye_water_example/core/drawer_screen/adress_screen.dart';
import 'package:hamidye_water_example/core/drawer_screen/problem_screen.dart';
import 'package:hamidye_water_example/core/home_screen_widgets/drawerListTile.dart';
import 'package:hamidye_water_example/services/google_auth.dart';
import 'package:hamidye_water_example/services/get_image.dart';
import 'package:hamidye_water_example/utility/colors.dart';
import '../../const/texts.dart';
import '../drawer_screen/contact_screen.dart';

class homeScDrawer extends StatelessWidget {
  const homeScDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: MediaQuery.sizeOf(context).width * 0.6,
      child: ListView(
        children: [
          DrawerHeader(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const ImageUploads(),
                Text(
                  FirebaseAuth.instance.currentUser!.displayName!,
                  style: TextStyle(color: ColorItems().black),
                )
              ],
            ),
          ),
          drawerWidgetListTile(
              Icons: const Icon(Icons.assignment_outlined),
              Text: const Text(productsname),
              onTap: () {
                Navigator.pop(context);
              }),
          drawerWidgetListTile(
              Icons: const Icon(Icons.home),
              Text: const Text(myAddress),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AdressScreen(),
                    ));
              }),
          drawerWidgetListTile(
              Icons: const Icon(Icons.announcement_outlined),
              Text: const Text(problemName),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return const ProblemScreen();
                  },
                ));
              }),
          drawerWidgetListTile(
              Icons: const Icon(Icons.contact_support_outlined),
              Text: const Text(contactName),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ContactScreen(),
                    ));
              }),
          drawerWidgetListTile(
              Icons: const Icon(Icons.opacity_outlined),
              Text: const Text(rateName),
              onTap: () {
                Navigator.pop(context);
              }),
          drawerWidgetListTile(
              Icons: const Icon(Icons.exit_to_app_outlined),
              Text: const Text(exitName),
              onTap: () {
                AuthService().signOut();
              }),
        ],
      ),
    );
  }
}

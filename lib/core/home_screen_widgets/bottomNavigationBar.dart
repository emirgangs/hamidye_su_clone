// ignore_for_file: camel_case_types, file_names

import 'package:flutter/material.dart';
import 'package:hamidye_water_example/screens/home_screen.dart';
import 'package:hamidye_water_example/screens/order_cart_screen.dart';
import 'package:hamidye_water_example/screens/order_screen.dart';
import 'package:hamidye_water_example/screens/setting_screen.dart';
import 'package:hamidye_water_example/utility/colors.dart';

class BottomNavigationBarStart extends StatefulWidget {
  const BottomNavigationBarStart({super.key});

  @override
  State<BottomNavigationBarStart> createState() =>
      _BottomNavigationBarExampleState();
}

class _BottomNavigationBarExampleState extends State<BottomNavigationBarStart> {
  int _selectedIndex = 0;
  final List<Widget> _widgetOptions = [
    const HomeScreen(),
    const OrderScreen(),
    const OrderCartScreen(),
    const SettingScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.water_drop_outlined), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.refresh_sharp), label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: '')
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        unselectedItemColor: ColorItems().grey,
        selectedItemColor: ColorItems().blue,
        onTap: _onItemTapped,
      ),
    );
  }
}

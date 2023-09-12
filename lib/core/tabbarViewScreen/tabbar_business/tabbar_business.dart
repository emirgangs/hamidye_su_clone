import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:hamidye_water_example/core/tabbarViewScreen/bardakScreen.dart';
import 'package:hamidye_water_example/core/tabbarViewScreen/damacanaScreen.dart';
import 'package:hamidye_water_example/core/tabbarViewScreen/petScreen.dart';
import 'package:hamidye_water_example/core/tabbarViewScreen/tumuScreen.dart';

mixin TumuBackend on State<tumuScreen> {
  final _tumuStream = FirebaseFirestore.instance.collection('tumu').snapshots();
  Stream<QuerySnapshot<Map<String, dynamic>>> get tumuStream => _tumuStream;
}

mixin BardakBackend on State<bardakScreen> {
  final _bardakStream =
      FirebaseFirestore.instance.collection('bardak').snapshots();
  Stream<QuerySnapshot<Map<String, dynamic>>> get bardakStream => _bardakStream;
}

mixin DamacanaBackend on State<damacanaScreen> {
  final _damacanaStream =
      FirebaseFirestore.instance.collection('damacana').snapshots();
  Stream<QuerySnapshot<Map<String, dynamic>>> get damacanaStream =>
      _damacanaStream;
}

mixin PetBackend on State<petScreen> {
  final _petStream = FirebaseFirestore.instance.collection('pet').snapshots();

  Stream<QuerySnapshot<Map<String, dynamic>>> get petStream => _petStream;
}

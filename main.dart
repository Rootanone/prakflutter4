import 'package:flutter/material.dart';
import 'package:prak1/SplasScreen.dart';
import 'package:prak1/page1.dart';
import 'package:prak1/page2.dart';
import 'package:prak1/page3.dart';
import 'package:prak1/pinScreen.dart';
import 'package:prak1/profil.dart';
import 'package:prak1/registerscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PinScreen(),
    );
  }
}

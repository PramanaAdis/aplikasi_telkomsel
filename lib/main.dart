import 'package:aplikasi_telkomsel/screens/bottom_nav_bar.dart';
import 'package:aplikasi_telkomsel/themes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          bottomNavigationBarTheme:
              BottomNavigationBarThemeData(selectedItemColor: redColor)),
      title: 'Telkomsel App',
      home: BottomNavBar(),
    );
  }
}

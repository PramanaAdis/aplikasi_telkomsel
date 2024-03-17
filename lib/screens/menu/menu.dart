import 'package:aplikasi_telkomsel/themes.dart';
import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'MENU',
          style: mediumText15,
        ),
      ),
    );
  }
}

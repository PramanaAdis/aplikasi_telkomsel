import 'package:aplikasi_telkomsel/screens/explore/explore.dart';
import 'package:aplikasi_telkomsel/screens/home/home.dart';
import 'package:aplikasi_telkomsel/screens/menu/menu.dart';
import 'package:aplikasi_telkomsel/screens/poin/poin.dart';
import 'package:aplikasi_telkomsel/screens/shop/shop.dart';
import 'package:aplikasi_telkomsel/themes.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;
  final _screen = [Home(), Poin(), Shop(), Explore(), Menu()];
  @override
  Widget build(BuildContext context) {
    Widget customNavbar() {
      return BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: (i) {
            setState(() => _selectedIndex = i);
          },
          type: BottomNavigationBarType.fixed,
          unselectedLabelStyle: bottomNavText,
          selectedLabelStyle: bottomNavText,
          items: [
            BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.symmetric(vertical: 5),
                  child: Image.asset(
                    'assets/icons/home.png',
                    width: 24,
                    color: _selectedIndex == 0 ? redColor : greyColor,
                  ),
                ),
                label: 'HOME'),
            BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.symmetric(vertical: 5),
                  child: Image.asset(
                    'assets/icons/trophy.png',
                    width: 24,
                    color: _selectedIndex == 1 ? redColor : greyColor,
                  ),
                ),
                label: 'POIN'),
            BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.symmetric(vertical: 5),
                  child: Image.asset(
                    'assets/icons/Group.png',
                    width: 25,
                    color: _selectedIndex == 2 ? redColor : greyColor,
                  ),
                ),
                label: 'SHOP'),
            BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.symmetric(vertical: 5),
                  child: Image.asset(
                    'assets/icons/Rocket.png',
                    width: 25,
                    color: _selectedIndex == 3 ? redColor : greyColor,
                  ),
                ),
                label: 'EXPLORE'),
            BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.symmetric(vertical: 9),
                  child: Image.asset(
                    'assets/icons/menu.png',
                    width: 20,
                    color: _selectedIndex == 4 ? redColor : greyColor,
                  ),
                ),
                label: 'MENU'),
          ]);
    }

    return Scaffold(
      bottomNavigationBar: customNavbar(),
      body: Stack(
        children: _screen
            .asMap()
            .map((i, screen) => MapEntry(
                i,
                Offstage(
                  offstage: _selectedIndex != i,
                  child: screen,
                )))
            .values
            .toList(),
      ),
    );
  }
}

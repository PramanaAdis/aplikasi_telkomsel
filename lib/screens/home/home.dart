import 'package:aplikasi_telkomsel/themes.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'Hi James',
                  style: boldText15.copyWith(color: whiteColor),
                ),
                Spacer(),
                Icon(
                  Icons.qr_code_2_rounded,
                  color: whiteColor,
                  size: 28,
                ),
                SizedBox(
                  width: 12,
                ),
                Image.asset(
                  'assets/icons/Email.png',
                  width: 34,
                ),
                SizedBox(
                  width: 12,
                ),
                Image.asset(
                  'assets/icons/info.png',
                  width: 28,
                )
              ],
            )
          ],
        ),
      );
    }

    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.topRight,
              stops: [0.1, 0.8, 1],
              colors: [redColor, redColor, yellowColor])),
      child: ListView(
        children: [header()],
      ),
    ));
  }
}

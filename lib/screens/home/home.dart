import 'dart:ffi';

import 'package:aplikasi_telkomsel/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    Widget headeContent(String icon, String text) {
      return Container(
        margin: EdgeInsets.only(right: 10),
        padding: EdgeInsets.fromLTRB(8, 5, 2, 5),
        decoration: BoxDecoration(
            color: darkRedColor,
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Row(
          children: [
            Image.asset(
              icon,
              width: 10,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              text,
              style: boldText13.copyWith(color: whiteColor),
            ),
            Icon(
              Icons.chevron_right_rounded,
              color: whiteColor,
            ),
          ],
        ),
      );
    }

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
                  width: 25,
                )
              ],
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 3),
                  child: Text(
                    '085802750265',
                    style: boldText15.copyWith(color: whiteColor),
                  ),
                ),
                SizedBox(
                  width: 7,
                ),
                InkWell(
                  onTap: () {},
                  child: Image.asset(
                    'assets/icons/add.png',
                    width: 14,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                headeContent('assets/icons/love.png', '19 POIN'),
                headeContent('assets/icons/star.png', 'Daily Check In'),
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
              stops: [0.1, 0.6, 4],
              colors: [redColor, redColor, yellowColor])),
      child: ListView(
        children: [
          header(),
        ],
      ),
    ));
  }
}

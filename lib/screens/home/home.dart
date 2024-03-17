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

    Widget cardinfo() {
      return Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 18, left: 16, right: 16),
            height: 333,
            decoration: BoxDecoration(
                color: whiteColor, borderRadius: BorderRadius.circular(15)),
            child: Column(
              children: [
                Expanded(
                    child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: greyCarColor,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15))),
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 17, top: 27, bottom: 21),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Rp 0',
                          style:
                              extraBoldText26.copyWith(color: primaryTextColor),
                        ),
                        Text(
                          'Active until 22 Sep 2021',
                          style: mediumText12.copyWith(color: darkGreyColor),
                        ),
                        Spacer(),
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 19, vertical: 7),
                              decoration: BoxDecoration(
                                  color: redButtonColor,
                                  borderRadius: BorderRadius.circular(16.5)),
                              child: Center(
                                child: Text(
                                  'Buy Package',
                                  style:
                                      mediumText12.copyWith(color: whiteColor),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 19,
                            ),
                            Text(
                              'Top Up',
                              style: mediumText12.copyWith(color: blueColor),
                            ),
                            SizedBox(
                              width: 19,
                            ),
                            Text(
                              'Send Gift',
                              style: mediumText12.copyWith(color: blueColor),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                )),
                Expanded(child: Container())
              ],
            ),
          )
        ],
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
        children: [header(), cardinfo()],
      ),
    ));
  }
}

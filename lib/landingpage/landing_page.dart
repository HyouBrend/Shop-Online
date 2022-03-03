import 'dart:js';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoponline/shoppage/page/layout.dart';

class LandingPage extends StatelessWidget {
  List<Widget> pageChildren(double width) {
    return <Widget>[
      Image.asset(
        'images/vektor.png',
        width: width,
      ),
      Container(
        width: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Text(
                'Selamat Datang',
                style: GoogleFonts.convergence(
                  fontWeight: FontWeight.bold,
                  color: Color(0xff019267),
                  fontSize: 30,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
              child: Text(
                'Terimakasih telah membuka toko online kami yang bernama ShopYey, Silahkan Berbelanja',
                style: GoogleFonts.convergence(
                  color: Color(0xff019267),
                  fontSize: 18,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
              child: MaterialButton(
                color: Color(0xff019267),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20.0))),
                onPressed: () {},
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  child: Text(
                    "Get Started",
                    style: GoogleFonts.convergence(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 800) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: pageChildren(constraints.biggest.width / 2),
        );
      } else {
        return Column(
          children: pageChildren(constraints.biggest.width),
        );
      }
    });
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoponline/shoppage/page/layout.dart';

class Navbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 1300) {
        return DesktopNavbar();
      } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1300) {
        return DesktopNavbar();
      } else {
        return MobileNavbar();
      }
    });
  }
}

class DesktopNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              'ShopYey',
              style: GoogleFonts.badScript(
                fontWeight: FontWeight.bold,
                color: Color(0xff019267),
                fontSize: 40,
              ),
            ),
            Spacer(),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LayoutPage();
                    },
                  ),
                );
              },
              child: Text(
                'Shop',
                style: GoogleFonts.convergence(
                  fontWeight: FontWeight.w400,
                  color: Color(0xff019267),
                  fontSize: 18,
                ),
              ),
            ),
            SizedBox(
              width: 30,
            ),
          ],
        ),
      ),
    );
  }
}

class MobileNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Container(
        child: Column(
          children: <Widget>[
            Text(
              'ShopYey',
              style: GoogleFonts.badScript(
                fontWeight: FontWeight.bold,
                color: Color(0xff019267),
                fontSize: 40,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return LayoutPage();
                          },
                        ),
                      );
                    },
                    child: Text(
                      'Shop',
                      style: GoogleFonts.convergence(
                        fontWeight: FontWeight.w400,
                        color: Color(0xff019267),
                        fontSize: 18,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

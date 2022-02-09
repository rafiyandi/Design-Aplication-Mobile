import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:seven_day/theme.dart';

class RandomScreen extends StatelessWidget {
  const RandomScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(top: 36),
        child: Center(
            child: Text(
          "My Shopping Cart",
          style: GoogleFonts.poppins(
            fontSize: 22,
            fontWeight: semiBold,
            color: Color(0xff191919),
          ),
        )),
      );
    }

    Widget contentMenu() {
      return Container(
        margin: EdgeInsets.only(top: 30, right: 30),
        height: 140,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Image.asset(
                  "assets/burger.png",
                  width: 80,
                ),
                SizedBox(
                  width: 16,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Burger Malleta",
                      style: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: medium,
                          color: Color(0xff191919)),
                    ),
                    Text(
                      "McTheone",
                      style: GoogleFonts.poppins(
                          fontWeight: light, color: Color(0xffA3A8B8)),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 13,
            ),
            Row(
              children: [
                SizedBox(
                  width: 6,
                ),
                Image.asset(
                  "assets/min_icon.png",
                  width: 22,
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "2",
                  style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: medium,
                      color: Color(0xff191919)),
                ),
                SizedBox(
                  width: 8,
                ),
                Image.asset(
                  "assets/plus_icon.png",
                  width: 22,
                ),
                Expanded(
                  child: Text(
                    "\$90.0",
                    style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: semiBold,
                        color: Color(0xff191919)),
                  ),
                ),
              ],
            )
          ],
        ),
      );
    }

    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            header(),
            contentMenu(),
          ],
        ),
      ),
    );
  }
}

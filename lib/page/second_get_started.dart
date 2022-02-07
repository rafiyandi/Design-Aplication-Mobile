import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:seven_day/theme.dart';

class SecondGetStarted extends StatelessWidget {
  const SecondGetStarted({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Health First.",
            style: GoogleFonts.poppins(fontSize: 24, fontWeight: semiBold),
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            "Exercise together with our best\ncommunity fit in the world",
            textAlign: TextAlign.left,
          )
        ],
      );
    }

    Widget content() {
      return Container(
        margin: EdgeInsets.only(top: 60),
        width: double.infinity,
        height: MediaQuery.of(context).size.height * 0.5,
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage("assets/gallery.png"))),
      );
    }

    Widget buttonShape() {
      return Container(
        width: double.infinity,
        height: 55,
        margin: EdgeInsets.only(top: 61),
        child: TextButton(
          onPressed: () {},
          child: Text(
            "Shape My Body",
            style: GoogleFonts.lato(
                fontSize: 18, color: secondColor, fontWeight: semiBold),
          ),
          style: TextButton.styleFrom(
            backgroundColor: Color(0xffAFEA0D),
          ),
        ),
      );
    }

    Widget footer() {
      return Container(
        margin: EdgeInsets.only(top: 20),
        child: Center(
          child: Text(
            "`Terms & Conditions`",
            style: GoogleFonts.poppins(fontSize: 16, color: subtitleColor),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor2,
      body: Container(
        margin: EdgeInsets.all(40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            header(),
            content(),
            buttonShape(),
            footer(),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:seven_day/page/menu.dart';
import 'package:seven_day/page/pricing.dart';
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

    Widget checkoutHarga(subTotal, price) {
      return Container(
        margin: EdgeInsets.only(top: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              subTotal,
              style: GoogleFonts.poppins(
                fontSize: 16,
              ),
            ),
            Text(
              price.toString(),
              style: GoogleFonts.poppins(fontSize: 16, fontWeight: medium),
            )
          ],
        ),
      );
    }

    Widget informations() {
      return Container(
        margin: EdgeInsets.only(top: 26),
        width: double.infinity,
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Color(0xffFAFAFA),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Information",
              style: GoogleFonts.poppins(
                fontSize: 18,
                fontWeight: medium,
                color: Color(0xff191919),
              ),
            ),
            checkoutHarga("Subtotal", 90.0),
            checkoutHarga("Delivery", 80.0),
            checkoutHarga("Total", 170.0),
          ],
        ),
      );
    }

    Widget button() {
      return Container(
        margin: EdgeInsets.only(top: 60),
        height: 60,
        width: double.infinity,
        child: TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Card()),
            );
          },
          style: TextButton.styleFrom(
              backgroundColor: Color(0xffFFC532),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(53))),
          child: Text(
            "Checkout Now",
            style: GoogleFonts.poppins(
                fontSize: 18, fontWeight: semiBold, color: Color(0xff2E221B)),
          ),
        ),
      );
    }

    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            header(),
            Menu("Burger Malleta", "McTheone", 90.0, "assets/burger.png", 2),
            Menu("Burger Malleta", "McTheone", 90.0, "assets/burger.png", 5),
            informations(),
            button()
          ],
        ),
      ),
    );
  }
}

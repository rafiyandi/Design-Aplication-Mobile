import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:seven_day/theme.dart';

class Pricing extends StatefulWidget {
  const Pricing({Key? key}) : super(key: key);

  @override
  _PricingState createState() => _PricingState();
}

class _PricingState extends State<Pricing> {
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    Widget option(int index, imageUrl, title, subtitle, nilai) {
      return InkWell(
        onTap: () {
          setState(() {
            selectedIndex = index;
          });
        },
        child: Container(
          padding: EdgeInsets.only(left: 20, right: 20, bottom: 20, top: 20),
          height: 100,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(39),
            border: Border.all(
                color: selectedIndex == index
                    ? Color(0xff6050E7)
                    : Color(0xffD9DEEA)),
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset(
                    imageUrl,
                    width: 61,
                  ),
                  SizedBox(width: 7),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: medium,
                              color: Color(0xff191919)),
                        ),
                        SizedBox(height: 2),
                        Row(
                          children: [
                            Text(
                              subtitle,
                              style: GoogleFonts.poppins(fontWeight: light),
                            ),
                            Text(
                              nilai,
                              style: GoogleFonts.poppins(
                                fontWeight: medium,
                                color: Color(0xff5343C2),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  selectedIndex == index
                      ? Image.asset(
                          "assets/purple_check.png",
                          width: 26,
                        )
                      : SizedBox(),
                ],
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 30, vertical: 100),
        child: Column(
          children: [
            option(
                0, "assets/pig_icon.png", "Money Security", "support ", "24/7"),
            SizedBox(height: 24),
            option(
                1, "assets/pig_icon.png", "Money Security", "support ", "24/7"),
            SizedBox(height: 24),
            option(
                2, "assets/pig_icon.png", "Money Security", "support ", "24/7"),
          ],
        ),
      ),
    );
  }
}

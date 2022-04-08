import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../theme.dart';

class CardPagee extends StatelessWidget {
  const CardPagee({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Column(
        children: [
          Image.asset(
            "assets/cover_random.png",
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Arrina La",
            style: GoogleFonts.poppins(
              fontSize: 26,
              fontWeight: medium,
              color: Color(0xff000000),
            ),
          ),
          Text(
            "Bali, Dekat Bandung",
            style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: light,
              color: Color(0xff2F323A),
            ),
          ),
        ],
      );
    }

    Widget about() {
      return Container(
        margin: EdgeInsets.only(top: 26, left: 24, right: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "About",
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: medium,
                color: Color(0xff2F323A),
              ),
            ),
            Text(
              "Pantai Pandawa adalah salah satu para kawasan wisata di area Kuta selatan sana Kabupaten Dekat Bandung, Bali.",
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: light,
                color: Color(0xff2F323A),
              ),
            )
          ],
        ),
      );
    }

    Widget booking() {
      return Container(
          margin: EdgeInsets.only(top: 26, left: 24, right: 24),
          child: Column(
            children: [
              Text(
                "Booking Now",
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: medium,
                  color: Color(0xff2F323A),
                ),
              ),
            ],
          ));
    }

    Widget time() {
      return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            SizedBox(
              width: 24,
            ),
            Container(
              width: 80,
              height: 100,
              padding: EdgeInsets.symmetric(vertical: 24, horizontal: 20),
              margin: EdgeInsets.only(
                top: 26,
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22),
                  border: Border.all(color: Colors.grey.withOpacity(0.2))),
              child: Column(
                children: [
                  Text(
                    "Thu",
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: medium,
                      color: Color(0xff2F323A),
                    ),
                  ),
                  Text(
                    "19 JAN",
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      fontWeight: regular,
                      color: Color(0xffA8ACB6),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 24,
            ),
            Container(
              width: 80,
              height: 100,
              padding: EdgeInsets.symmetric(vertical: 24, horizontal: 20),
              margin: EdgeInsets.only(
                top: 26,
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22),
                  border: Border.all(color: Colors.grey.withOpacity(0.2))),
              child: Column(
                children: [
                  Text(
                    "Thu",
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: medium,
                      color: Color(0xff2F323A),
                    ),
                  ),
                  Text(
                    "19 JAN",
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      fontWeight: regular,
                      color: Color(0xffA8ACB6),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 24,
            ),
            Container(
              width: 80,
              height: 100,
              padding: EdgeInsets.symmetric(vertical: 24, horizontal: 20),
              margin: EdgeInsets.only(
                top: 26,
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22),
                  border: Border.all(color: Colors.grey.withOpacity(0.2))),
              child: Column(
                children: [
                  Text(
                    "Thu",
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: medium,
                      color: Color(0xff2F323A),
                    ),
                  ),
                  Text(
                    "19 JAN",
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      fontWeight: regular,
                      color: Color(0xffA8ACB6),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 24,
            ),
            Container(
              width: 80,
              height: 100,
              padding: EdgeInsets.symmetric(vertical: 24, horizontal: 20),
              margin: EdgeInsets.only(
                top: 26,
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22),
                  border: Border.all(color: Colors.grey.withOpacity(0.2))),
              child: Column(
                children: [
                  Text(
                    "Thu",
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: medium,
                      color: Color(0xff2F323A),
                    ),
                  ),
                  Text(
                    "19 JAN",
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      fontWeight: regular,
                      color: Color(0xffA8ACB6),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 24,
            ),
            Container(
              width: 80,
              height: 100,
              padding: EdgeInsets.symmetric(vertical: 24, horizontal: 20),
              margin: EdgeInsets.only(
                top: 26,
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22),
                  border: Border.all(color: Colors.grey.withOpacity(0.2))),
              child: Column(
                children: [
                  Text(
                    "Thu",
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: medium,
                      color: Color(0xff2F323A),
                    ),
                  ),
                  Text(
                    "19 JAN",
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      fontWeight: regular,
                      color: Color(0xffA8ACB6),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [header(), about(), booking(), time()],
      ),
    );
  }
}

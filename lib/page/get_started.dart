import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:seven_day/theme.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset("assets/background_started.png",
              width: double.infinity, fit: BoxFit.cover),
          Padding(
            padding: const EdgeInsets.only(top: 500),
            child: Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Maximize Revenue",
                    style: GoogleFonts.poppins(
                        fontSize: 24,
                        fontWeight: semiBold,
                        color: primaryColor)),
                Text(
                  "Gain more profit from cryptocurrency\nwithout any risk involved",
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    color: primaryColor,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 50),
                Image.asset(
                  "assets/purple_button.png",
                  width: 80,
                ),
                SizedBox(height: 55),
              ],
            )),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SecondSplashScreen extends StatefulWidget {
  const SecondSplashScreen({Key? key}) : super(key: key);

  @override
  _SecondSplashScreenState createState() => _SecondSplashScreenState();
}

class _SecondSplashScreenState extends State<SecondSplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    "assets/background_image.png",
                  ),
                  fit: BoxFit.cover),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 77, vertical: 70),
            child: Row(
              children: [
                Image.asset(
                  "assets/home.png",
                  width: 51,
                ),
                SizedBox(
                  width: 14,
                ),
                Text(
                  "HouseQu",
                  style: GoogleFonts.montserrat(
                      fontSize: 32.3, fontWeight: FontWeight.bold),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

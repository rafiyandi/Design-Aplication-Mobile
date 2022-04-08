import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../theme.dart';

class Menu extends StatelessWidget {
  int quantity = 0;
  String nameMenu = '';
  String submenu = '';
  double price = 0;
  String imageUrl = '';

  Menu(this.nameMenu, this.submenu, this.price, this.imageUrl, this.quantity);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30),
      height: 140,
      width: double.infinity,
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Color(0xffFAFAFA),
        borderRadius: BorderRadius.circular(16),
        // boxShadow: [
        //   BoxShadow(
        //     color: Colors.grey,
        //     blurRadius: 10,
        //     spreadRadius: 0.3,
        //     offset: Offset(
        //       0.2,
        //       0,
        //     ),
        //   ),
        // ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.asset(
                imageUrl,
                width: 80,
              ),
              SizedBox(
                width: 16,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    nameMenu,
                    style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: medium,
                        color: Color(0xff191919)),
                  ),
                  Text(
                    submenu,
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
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
                    quantity.toString(),
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
                ],
              ),
              Text(
                "\$$price",
                style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: semiBold,
                    color: Color(0xff191919)),
              ),
            ],
          )
        ],
      ),
    );
  }
}

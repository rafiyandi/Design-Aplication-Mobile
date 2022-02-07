import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:seven_day/page/sign_in_page.dart';
import 'package:seven_day/theme.dart';

class SecondSignInPage extends StatefulWidget {
  const SecondSignInPage({Key? key}) : super(key: key);

  @override
  State<SecondSignInPage> createState() => _SecondSignInPageState();
}

class _SecondSignInPageState extends State<SecondSignInPage> {
  bool _isHiddenPassword = true;

  void _isVisibilityPassword() {
    _isHiddenPassword = !_isHiddenPassword;
    setState(() {
      _isHiddenPassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget logo() {
      return Align(
        alignment: Alignment.center,
        child: Container(
          width: 245,
          height: 279,
          margin: EdgeInsets.only(top: 50),
          decoration: BoxDecoration(
              image:
                  DecorationImage(image: AssetImage("assets/paper_icon.png"))),
        ),
      );
    }

    Widget emailInput() {
      return Container(
        margin: EdgeInsets.only(top: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Email Address",
              style: GoogleFonts.openSans(),
            ),
            SizedBox(height: 6),
            Container(
              height: 55,
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(17),
                color: Color(0xffF3F3F3),
              ),
              child: TextFormField(
                style: GoogleFonts.openSans(
                    color: Color(0xff17171A),
                    fontSize: 16,
                    fontWeight: semiBold),
                decoration: InputDecoration.collapsed(
                  hintText: "Email",
                  hintStyle: GoogleFonts.openSans(
                      color: Color(0xff17171A),
                      fontSize: 16,
                      fontWeight: semiBold),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget passwordInput() {
      return Container(
        margin: EdgeInsets.only(top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Password",
              style: GoogleFonts.openSans(),
            ),
            SizedBox(height: 6),
            Container(
              height: 55,
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(17),
                color: Color(0xffF3F3F3),
              ),
              child: TextFormField(
                style: GoogleFonts.openSans(
                    color: Color(0xff17171A),
                    fontSize: 16,
                    fontWeight: semiBold),
                obscureText: _isHiddenPassword,
                decoration: InputDecoration(
                  isCollapsed: true,
                  border: InputBorder.none,
                  suffixIcon: GestureDetector(
                    onTap: _isVisibilityPassword,
                    child: Icon(
                      _isHiddenPassword
                          ? Icons.visibility
                          : Icons.visibility_off,
                      color: _isHiddenPassword
                          ? Color(0xff17171A)
                          : Color(0xffD8D8D8),
                    ),
                  ),
                  hintText: "Password",
                  hintStyle: GoogleFonts.openSans(
                      color: Color(0xff17171A),
                      fontSize: 16,
                      fontWeight: semiBold),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget buttonLogin() {
      return Container(
        margin: EdgeInsets.only(top: 50),
        width: double.infinity,
        height: 55,
        child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: Color(0xff5468FF),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(60),
            ),
          ),
          onPressed: () {},
          child: Text("Log In",
              style: GoogleFonts.openSans(
                  fontSize: 18, fontWeight: semiBold, color: backgroundColor2)),
        ),
      );
    }

    Widget buttonCreateAkun() {
      return Container(
        margin: EdgeInsets.only(top: 16, bottom: 50),
        width: double.infinity,
        height: 55,
        decoration: BoxDecoration(
          border: Border.all(
            color: Color(0xffD3D3D3),
          ),
          borderRadius: BorderRadius.circular(60),
        ),
        child: TextButton(
          onPressed: () {},
          child: Text("Create New Account",
              style: GoogleFonts.openSans(
                  fontSize: 18, fontWeight: regular, color: subtitleColor)),
        ),
      );
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: backgroundColor2,
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 28),
        child: Column(
          children: [
            logo(),
            emailInput(),
            passwordInput(),
            buttonLogin(),
            buttonCreateAkun()
          ],
        ),
      ),
    );
  }
}

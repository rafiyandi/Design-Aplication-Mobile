import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:seven_day/theme.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  bool _isHiddenPassword = true;

  void _togglePasswordVisibility() {
    setState(() {
      _isHiddenPassword = !_isHiddenPassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget headerIcon() {
      return Container(
        margin: EdgeInsets.only(top: 70),
        height: 50,
        width: 50,
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage("assets/coin_icon.png"),
        )),
      );
    }

    Widget headerText() {
      return Container(
          margin: EdgeInsets.only(top: 70),
          child: Text(
            "Welcome back.\nLet’s make money.",
            style: GoogleFonts.poppins(
                fontSize: 24, fontWeight: semiBold, color: primaryColor),
            textAlign: TextAlign.left,
          ));
    }

    Widget emailInput() {
      return Container(
        margin: EdgeInsets.only(top: 70),
        height: 55,
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(17),
          color: Color(0xff262A34),
        ),
        child: TextFormField(
          style: GoogleFonts.openSans(color: primaryColor),
          decoration: InputDecoration.collapsed(
            hintText: "Email",
            hintStyle: GoogleFonts.openSans(color: primaryColor),
          ),
        ),
      );
    }

    Widget passwordInput() {
      return Container(
        margin: EdgeInsets.only(top: 20),
        height: 55,
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(17),
          color: Color(0xff262A34),
        ),
        child: TextFormField(
          obscureText: _isHiddenPassword,
          style: GoogleFonts.openSans(color: primaryColor),
          decoration: InputDecoration(
            suffixIcon: GestureDetector(
              onTap: _togglePasswordVisibility,
              child: Icon(
                  _isHiddenPassword ? Icons.visibility : Icons.visibility_off,
                  color: _isHiddenPassword ? backgroundColor3 : primaryColor),
            ),
            border: InputBorder.none,
            isCollapsed: true,
            hintText: "Password",
            hintStyle: GoogleFonts.openSans(color: primaryColor),
          ),
        ),
      );
    }

    Widget forgotPaswword() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            margin: EdgeInsets.only(top: 6),
            child: Text(
              "Forgot My Password",
              style: GoogleFonts.poppins(color: subtitleColor),
            ),
          ),
        ],
      );
    }

    Widget signInButton() {
      return Container(
          margin: EdgeInsets.only(top: 117),
          height: 55,
          width: double.infinity,
          child: TextButton(
              style: TextButton.styleFrom(
                  backgroundColor: Color(0xffFCAC15),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12))),
              onPressed: () {},
              child: Text("Sign In",
                  style: GoogleFonts.openSans(
                      fontSize: 18,
                      fontWeight: semiBold,
                      color: Color(0xff6B4909)))));
    }

    Widget footer() {
      return Container(
        margin: EdgeInsets.only(bottom: 50),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            "Don’t have account? ",
            style: GoogleFonts.poppins(color: primaryColor),
          ),
          Text(
            "Sign In",
            style:
                GoogleFonts.poppins(color: primaryColor, fontWeight: semiBold),
          ),
        ]),
      );
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: backgroundColor3,
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            headerIcon(),
            headerText(),
            emailInput(),
            passwordInput(),
            forgotPaswword(),
            signInButton(),
            Spacer(),
            footer(),
          ],
        ),
      ),
    );
  }
}

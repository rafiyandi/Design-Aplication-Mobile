import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:seven_day/page/get_started.dart';
import 'package:seven_day/page/pricing.dart';
import 'package:seven_day/page/second_get_started.dart';
import 'package:seven_day/page/second_sign_in_page.dart';
import 'package:seven_day/page/second_splash_screen.dart';
import 'package:seven_day/page/sign_in_page.dart';
import 'package:seven_day/page/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Pricing(),
    );
  }
}

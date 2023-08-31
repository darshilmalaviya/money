import 'package:flutter/material.dart';
import 'package:money/Electric_2_Money.dart';

import 'package:money/Login_Money.dart';
import 'package:money/Otp_Screen_Money.dart';
import 'package:money/Regestartaion2_Money.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Register2(),
    );
  }
}

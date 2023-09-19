import 'package:flutter/material.dart';
import 'package:safaimitra/BottomBar/bottomtap.dart';
import 'package:safaimitra/BottomBar/home1.dart';
// import 'package:safaimitra/circle.dart';
import 'package:safaimitra/login.dart';

// import 'package:safaimitra/otp.dart';

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
      title: 'SafaiMitra',
      home: LoginPage(),
    );
    // BottomTapBar();
  }
}

// import 'dart:js';

import 'package:flutter/material.dart';
import 'package:safaimitra/login.dart';

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

// class SplashPage extends StatefulWidget {
//   const SplashPage({super.key});

//   @override
//   State<SplashPage> createState() => SplashPageState();
// }

// class SplashPageState extends State<SplashPage> {
//   static const String KEYLOGIN = 'accessToken';
//   @override
//   void initState() {
//     super.initState();

//     // whereToGo();

//     // Timer(Duration(seconds: 2), () {
//     //   Navigator.pushReplacement(
//     //       context, MaterialPageRoute(builder: (context) => LoginPage()));
//     // });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         child: Center(
//           child: Image.asset('assets/app_logo.png'),
//         ),
//       ),
//     );
//   }
// }

// Future<void> whereToGo() async {
//   var sharedPref = await SharedPreferences.getInstance();

//   var isLoggedIn = sharedPref.getBool(SplashPageState.KEYLOGIN);

//   Timer(Duration(seconds: 2), () {
//     if (isLoggedIn != null) {
//       if (isLoggedIn) {
//         Navigator.push(context as BuildContext,
//             MaterialPageRoute(builder: (context) => BottomTapBar()));
//       } else {
//         Navigator.push(context as BuildContext,
//             MaterialPageRoute(builder: (context) => LoginWithEmail()));
//       }
//     } else {
//       Navigator.push(context as BuildContext,
//           MaterialPageRoute(builder: (context) => LoginPage()));
//       ;
//     }
//     // Navigator.pushReplacement(context as BuildContext,
//     //     MaterialPageRoute(builder: (context) => LoginPage()));
//   });
// }

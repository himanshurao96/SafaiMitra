// import 'dart:js';

import 'package:flutter/material.dart';
import 'package:safaimitra/BottomBar/home1.dart';
import 'package:safaimitra/Drawer/editProfile.dart';
import 'package:safaimitra/Drawer/profile.dart';
import 'package:safaimitra/login.dart';
import 'package:safaimitra/loginEmail.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Constants.prefs = await SharedPreferences.getInstance();
  runApp(
    MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "My App",
        home: LoginPage(),
        routes: {
          'editProfile': (context) => EditProfile(),
          'profile': (context) => ProfileEdit(),
        }),
  );
}

// class Constants {
//   static SharedPreferences? prefs;
// }

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

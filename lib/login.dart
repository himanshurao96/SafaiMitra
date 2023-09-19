import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:safaimitra/Utils.dart';
import 'package:safaimitra/otp.dart';
import 'package:http/http.dart' as http;

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Utils.hexToColor("#6A0EFF"),
      body: Stack(children: [
        Positioned(
          top: 5,
          right: 5,
          left: 5,
          child: Container(
            height: 600,
            width: 400,
            decoration: BoxDecoration(
              color: Utils.hexToColor("#4B62FF"),
              shape: BoxShape.circle,
            ),
          ),
        ),
        Positioned(
          right: 25,
          left: 25,
          child: Container(
            height: 900,
            width: 100,
            decoration: BoxDecoration(
              color: Utils.hexToColor("#4B62FF"),
              shape: BoxShape.circle,
            ),
          ),
        ),
        Positioned(
          top: 620,
          right: 305,
          child: Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
              color: Utils.hexToColor("#4B62FF"),
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(100),
                topRight: Radius.circular(100),
              ),
            ),
          ),
        ),
        Positioned(
          top: 720,
          left: 300,
          child: Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
              color: Utils.hexToColor("#4B62FF"),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(100),
                topLeft: Radius.circular(100),
              ),
            ),
          ),
        ),
        // backgroundColor: Color.fromARGB(216, 106, 14, 255),

        Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(32),

          // decoration: const BoxDecoration(
          //   color: Utils.hexToColor("#6A0EFF");
          // ),

          child: ListView(children: [
            SizedBox(
              height: 200.0,
            ),
            IntlPhoneField(
              decoration: InputDecoration(
                  hintText: "Phone Number",
                  filled: true,
                  fillColor: Colors.white,
                  // border: InputBorder.none,
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.white,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  )),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  padding: const EdgeInsets.symmetric(
                      horizontal: 120.0, vertical: 15.0)),
              child: const Text(
                "Send OTP",
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const OtpVerification()));
              },
            ),
            SizedBox(
              height: 40.0,
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                "OR",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
            InkWell(
              child: Container(
                width: 130,
                height: 50,
                margin: EdgeInsets.only(top: 25),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        height: 25.0,
                        width: 25.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                'assets/google.png',
                              ),
                              fit: BoxFit.cover),
                          shape: BoxShape.circle,
                        ),
                      ),
                      Text(
                        'Sign in with Google',
                        style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.black,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            InkWell(
              child: Container(
                width: 130,
                height: 50,
                margin: EdgeInsets.only(top: 25),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        height: 25.0,
                        width: 25.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/gmail.png'),
                              fit: BoxFit.cover),
                          shape: BoxShape.circle,
                        ),
                      ),
                      Text(
                        'Continue with Email',
                        style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.black,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 13.0,
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                "By continuing, you agree to our Terms and conditions and ",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w300),
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                "Privacy Police.",
                style: TextStyle(
                    decoration: TextDecoration.underline, color: Colors.white),
              ),
            ),
          ]),
        ),
      ]),
    );
  }
}

// import 'dart:math';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:safaimitra/BottomBar/bottomtap.dart';

import 'package:safaimitra/LoginApi/api_service.dart';

import 'package:safaimitra/Utils.dart';
import 'package:safaimitra/apirequest.dart';
import 'package:safaimitra/login.dart';
import 'package:safaimitra/main.dart';
import 'package:safaimitra/perf.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginWithEmail extends StatefulWidget {
  const LoginWithEmail({super.key});

  @override
  State<LoginWithEmail> createState() => _LoginWithEmailState();
}

class _LoginWithEmailState extends State<LoginWithEmail> {
  TextEditingController userController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool pressed = false;
  // moveToHome(BuildContext context) async {
  //   setState(() {
  //     pressed = !pressed;
  //   });
  //   await Future.delayed(Duration(seconds: 1));
  //   Constants.prefs?.setBool("loggedIn", true);
  //   await Navigator.pushReplacement(
  //       context, MaterialPageRoute(builder: (context) => BottomTapBar()));
  //   setState(() {
  //     pressed = false;
  //   });
  // }
  static const stringSharedPreference = "string shared preferences";

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
            height: 520,
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
        Container(
          alignment: Alignment.center,
          padding: EdgeInsets.only(top: 45, left: 8, right: 8),
          child: ListView(children: [
            Container(
              padding: EdgeInsets.all(5.0),
              height: 500,
              child: Card(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0)),
                child: Container(
                  padding: EdgeInsets.all(12.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/app_logo.png",
                        height: 90,
                      ),
                      Text(
                        "Log in",
                        style: TextStyle(
                            fontSize: 25,
                            color: Utils.hexToColor("#6A0EFF"),
                            fontWeight: FontWeight.bold),
                      ),
                      TextFormField(
                        controller: userController,
                        // controller: TextEditingController(text: user.username),
                        style: TextStyle(color: Colors.white),
                        autofillHints: [AutofillHints.email],
                        onEditingComplete: () =>
                            TextInput.finishAutofillContext(),
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Utils.hexToColor("#6A0EFF"),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: BorderSide.none),
                            suffixIcon: Icon(
                              Icons.person,
                              color: Colors.white,
                              size: 25,
                            ),
                            hintText: 'Username or email',
                            hintStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w500)),

                        // onChanged: (value){
                        //   userController= value;
                        // },
                        // validator: (value) {
                        //       if (value.isEmpty) {
                        //         return 'Please enter username';
                        //       }
                        //       return null;
                        //     },
                      ),
                      TextFormField(
                        controller: passwordController,
                        // controller: TextEditingController(text: user.username),
                        // autofillHints: [AutofillHints.email],
                        style: TextStyle(color: Colors.white),
                        onEditingComplete: () =>
                            TextInput.finishAutofillContext(),
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Utils.hexToColor("#6A0EFF"),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: BorderSide.none),
                            suffixIcon: Icon(
                              Icons.key,
                              size: 25,
                              color: Colors.white,
                            ),
                            hintText: 'Password',
                            hintStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w500)),

                        // onChanged: (value) {
                        //   user.username = value;
                        // },
                        // validator: (value) {
                        //       if (value.isEmpty) {
                        //         return 'Please enter username';
                        //       }
                        //       return null;
                        //     },
                      ),
                      pressed
                          ? getData(context, userController.text.toString(),
                              passwordController.text.toString())
                          : ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.black54,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 135, vertical: 12.0)),
                              child: const Text(
                                "LOGIN",
                                style: TextStyle(
                                  fontSize: 12,
                                ),
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => BottomTapBar()));
                                setState(() {
                                  pressed = !pressed;
                                });
                              }),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginPage()));
                        },
                        child: Text(
                          "Not Registered ? Login here",
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.black54,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ]),
        ),
      ]),
    );
  }

  FutureBuilder<LoginResponse> getData(
      BuildContext context, String userId, String password) {
    final client = ApiService(Dio(BaseOptions(contentType: "application/json")),
        baseUrl: 'http://apitest.safaimitra.click');
    print(userId + '\n' + password);

    return FutureBuilder<LoginResponse>(
      future: client.login(userId, password),
      builder: (context, snapshot) {
        if (snapshot.error == null) {
          print('no Error found');
        } else {
          print('snapshot error ${snapshot.error}');
        }
        if (snapshot.connectionState == ConnectionState.done) {
          print(snapshot.data?.toJson());
          print('token ${snapshot.data?.token}');

          Future setString() async {
            final prefs = await SharedPreferences.getInstance();
            return prefs.setString(
                stringSharedPreference, '${snapshot.data?.token}');
          }

          // print(userId + '\n' + password);

          return Center(
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.black54,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 135.0, vertical: 12.0)),
                onPressed: () {
                  setState(() {});
                },
                child: const Text(
                  "LOGIN",
                  style: TextStyle(color: Colors.yellow, fontSize: 12),
                )),
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}

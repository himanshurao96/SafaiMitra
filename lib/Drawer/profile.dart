import 'package:flutter/material.dart';
import 'package:safaimitra/Utils.dart';
import 'package:safaimitra/login.dart';

class ProfileEdit extends StatelessWidget {
  const ProfileEdit({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Utils.hexToColor("#e0d4ff"),
      appBar: AppBar(
        backgroundColor: Utils.hexToColor("#6A0EFF"),
        title: Text("Profile"),
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: ListView(children: [
          Center(
              child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                Container(
                  child: Column(children: [
                    // Align(
                    //   alignment: Alignment.center,
                    Container(
                      width: 80,
                      height: 80,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 60,
                        child: Image.asset(
                          "assets/H_logo.png",
                          color: Colors.red,
                          height: 78,
                          width: 78,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 13,
                    ),

                    Container(
                      child: Column(
                          // mainAxisAlignment: MainAxisAlignment.center,
                          // crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Himanshu Singh",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Utils.hexToColor("#6A0EFF")),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              "Project Administrator 2",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  color: Colors.green),
                            ),
                          ]),
                    ),
                  ]),
                ),
              ])),
          SizedBox(
            height: 8,
          ),
          Card(
            color: Colors.white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
            child: Container(
              padding: EdgeInsets.all(10.0),
              height: 150,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "Email ID :   himanshu12@gmail.ocm",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "DOB :",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Mobile No :",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ]),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Align(
              alignment: Alignment.bottomLeft,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Utils.hexToColor("#6A0EFF"),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 50.0, vertical: 15.0)),
                child: const Text(
                  "EDIT",
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
                onPressed: () {},
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Utils.hexToColor("#6A0EFF"),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 50.0, vertical: 15.0)),
                child: const Text(
                  "LOGOUT",
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginPage()));
                },
              ),
            ),
          ]),
        ]),
      ),
    );
  }
}

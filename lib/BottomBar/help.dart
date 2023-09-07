import 'package:flutter/material.dart';
import 'package:safaimitra/Utils.dart';
import 'package:safaimitra/drawer.dart';

class HelpAndSupport extends StatelessWidget {
  const HelpAndSupport({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Utils.hexToColor("#e0d4ff"),
      appBar: AppBar(
        backgroundColor: Utils.hexToColor("#6A0EFF"),
        title: Text(
          "Help & Support",
          style: TextStyle(fontSize: 22),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(6.0),
        child: ListView(
          children: [
            Center(
              child: Image.asset(
                "assets/app_logo.png",
                height: 120,
                width: 120,
              ),
            ),
            Container(
              padding: EdgeInsets.all(6.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Help & Support",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 9,
            ),
            Card(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              child: Container(
                padding: EdgeInsets.all(10.0),
                height: 210,
                child: Wrap(
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.email_rounded,
                          size: 27,
                          color: Utils.hexToColor("#6A0EFF"),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "support@dvertex.com",
                          style: TextStyle(
                              fontSize: 18, color: Utils.hexToColor("#6A0EFF")),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 10,
                      height: 5,
                    ),
                    Row(
                      children: [
                        Image.asset(
                          "assets/web.png",
                          height: 27,
                          width: 27,
                          color: Utils.hexToColor("#6A0EFF"),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "www.dvertex.com",
                          style: TextStyle(
                              fontSize: 18, color: Utils.hexToColor("#6A0EFF")),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 10,
                      height: 5,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.phone,
                          size: 27,
                          color: Utils.hexToColor("#6A0EFF"),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "+919910816321",
                          style: TextStyle(
                              fontSize: 18, color: Utils.hexToColor("#6A0EFF")),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 10,
                      height: 5,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.phone,
                          size: 27,
                          color: Utils.hexToColor("#6A0EFF"),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "01204135565",
                          style: TextStyle(
                              fontSize: 18, color: Utils.hexToColor("#6A0EFF")),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 10,
                      height: 5,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on_sharp,
                          size: 27,
                          color: Utils.hexToColor("#6A0EFF"),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Dvertex Info System,Ajnara Le \nGarden, GH 02, Sector 16 Gr.Noida,\nUttar Pardesh India - 201308",
                          style: TextStyle(
                              fontSize: 18, color: Utils.hexToColor("#6A0EFF")),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(6.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Connect On Social",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            // SizedBox(
            //   height: 9,
            // ),
            Card(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              child: Container(
                padding: EdgeInsets.all(10.0),
                height: 110,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          "assets/facebook1.png",
                          height: 27,
                          width: 27,
                          color: Utils.hexToColor("#6A0EFF"),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Like us on Facebook",
                          style: TextStyle(
                              fontSize: 18, color: Utils.hexToColor("#6A0EFF")),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Image.asset(
                          "assets/twitter1.png",
                          height: 27,
                          width: 27,
                          color: Utils.hexToColor("#6A0EFF"),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Follow us on Twitter",
                          style: TextStyle(
                              fontSize: 18, color: Utils.hexToColor("#6A0EFF")),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Image.asset(
                          "assets/linkedin.png",
                          height: 27,
                          width: 27,
                          color: Utils.hexToColor("#6A0EFF"),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Join us on LinkedIn",
                          style: TextStyle(
                              fontSize: 18, color: Utils.hexToColor("#6A0EFF")),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            // FloatingActionButtonLocation.endDocked,
            // FloatingActionButton(
            //   onPressed: () {},
            //   backgroundColor: Utils.hexToColor("#6A0EFF"),
            //   child: Icon(Icons.phone),
            // )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Utils.hexToColor("#6A0EFF"),
        child: Icon(Icons.phone),
      ),
      drawer: DrawerFile(),
    );
  }
}

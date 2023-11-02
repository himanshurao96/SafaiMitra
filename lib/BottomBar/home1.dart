// import 'package:another_carousel_pro/another_carousel_pro.dart';

import 'package:flutter/material.dart';
import 'package:safaimitra/ProfileApi/api.dart';
import 'package:safaimitra/ProfileApi/person.dart';

import 'package:safaimitra/drawer.dart';
import 'package:safaimitra/slider_screen.dart';

// import 'package:scroll_snap_list/scroll_snap_list.dart';

import '../Utils.dart';

class HomePage1 extends StatefulWidget {
  const HomePage1({super.key});

  @override
  State<HomePage1> createState() => _HomePage1State();
}

class _HomePage1State extends State<HomePage1> {
  Api api = Api();
  List<Person> listPerson = [];

  getData() async {
    listPerson = await api.getData();
    setState(() {});
  }

  @override
  void initState() {
    getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Utils.hexToColor("#e0d4ff"),
      appBar: AppBar(
        backgroundColor: Utils.hexToColor("#6A0EFF"),
        title: Text(
          "Safai Mitra",
          style: TextStyle(fontSize: 22),
        ),
      ),
      // body: ListView.builder(
      //     itemCount: jsonList == null ? 0 : jsonList.length,
      //     itemBuilder: (BuildContext context, int index) {
      body: ListView.builder(
          itemCount: listPerson.length,
          itemBuilder: (context, index) {
            Person person = listPerson[index];

            return Container(
              padding: EdgeInsets.all(3.0),
              child: Column(children: [
                Card(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0)),
                  child: Container(
                    height: 165,
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.all(8.0),
                    child: Wrap(children: [
                      Container(
                        padding: EdgeInsets.all(10.0),
                        child: CircleAvatar(
                          backgroundColor: Utils.hexToColor("#6A0EFF"),
                          radius: 52,
                          child: CircleAvatar(
                            radius: 50,
                            backgroundImage:
                                NetworkImage('${person.Profile_pic}'),
                            backgroundColor: Utils.hexToColor("#e0d4ff"),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),

                      Column(
                          // mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Padding(padding: EdgeInsets.all(3.0)),
                            Text(
                              person.FName,
                              style: TextStyle(
                                  color: Utils.hexToColor("#6A0EFF"),
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "# ${person.LName}",
                              style: TextStyle(
                                  color: Colors.green,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 6,
                            ),

                            Text(
                              "Emp No.:- ${person.EmployeeId}",
                              style: TextStyle(fontSize: 15),
                            ),
                            SizedBox(
                              height: 6,
                              // width: 15,
                            ),
                            Text(
                              "Email : ${person.Email}",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                              ),
                            ),
                            SizedBox(
                              height: 6,
                              // width: 15,
                            ),
                            // Align(
                            //   alignment: Alignment.bottomLeft,
                            Text(
                              "Phone :- ${person.ContactNo}",
                              style: TextStyle(fontSize: 15),
                            ),
                          ]),

                      // SizedBox(
                      //   height: 65,
                      //   child: Card(
                      //     color: Utils.hexToColor("#6A0EFF"),
                      //     shape: RoundedRectangleBorder(
                      //         borderRadius: BorderRadius.only(
                      //             bottomLeft: Radius.circular(15.0),
                      //             bottomRight: Radius.circular(15.0))),
                      //     child: Center(
                      //       child: Text(
                      //         "Sincerely: Safaimitra, Helpline No.:18001212436",
                      //         style: TextStyle(
                      //           fontSize: 15,
                      //           color: Colors.white,
                      //         ),
                      //       ),
                      //     ),
                      //   ),
                      // ),
                    ]),
                  ),
                ),
                // }),

                Container(
                  padding: EdgeInsets.all(2.0),
                  child: Card(
                    color: Colors.white,
                    // shape: RoundedRectangleBorder(
                    //   borderRadius: BorderRadius.circular(15.0),

                    child: Container(
                      // padding: EdgeInsets.all(10.0),
                      // margin: EdgeInsets.all(10.0),
                      height: 200,
                      // width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: SliderScreen(),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Card(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        child: Container(
                            padding: EdgeInsets.all(10.0),
                            height: 80,
                            width: 100,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                GestureDetector(
                                  onTap: () => {},
                                  child: Image.asset(
                                    "assets/feedback.jpg",
                                    height: 44,
                                  ),
                                ),
                                Text("Feedback")
                              ],
                            )),
                      ),
                      // SizedBox(
                      //   width: 5,
                      // ),
                      Card(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        child: Container(
                            padding: EdgeInsets.all(10.0),
                            height: 80,
                            width: 100,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                GestureDetector(
                                  onTap: () => {},
                                  child: Image.asset(
                                    "assets/Complaint.png",
                                    height: 44,
                                    // width: 55,
                                  ),
                                ),
                                Text("Complaint"),
                              ],
                            )),
                      ),
                      Card(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        child: Container(
                            padding: EdgeInsets.all(10.0),
                            height: 80,
                            width: 100,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                GestureDetector(
                                  onTap: () => {},
                                  child: Image.asset("assets/share.png",
                                      height: 44),
                                ),
                                // SizedBox(
                                //   height: 10,
                                // ),
                                Text("Share")
                              ],
                            )),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(5.0),
                  height: 210,
                  width: MediaQuery.of(context).size.width,
                  child: Card(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    child: Container(
                      padding: EdgeInsets.all(2.0),
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/app_logo.png",
                            height: 150,
                          ),
                          Text(
                            "SafaiMitra",
                            style: TextStyle(
                                fontSize: 25,
                                color: Utils.hexToColor("#6A0EFF")),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ]),
            );
          }),
      drawer: DrawerFile(),
    );
  }
}

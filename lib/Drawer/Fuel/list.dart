import 'package:flutter/material.dart';
import 'package:safaimitra/Utils.dart';
import 'package:safaimitra/drawer.dart';

class List extends StatelessWidget {
  const List({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Utils.hexToColor("#e0d4ff"),
      appBar: AppBar(
        backgroundColor: Utils.hexToColor("#6A0EFF"),
        title: Text("Fuel"),
      ),
      body: ListView(children: [
        // Padding(padding: EdgeInsets.all(10.0)),
        Container(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [
            TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                // labelText: "Search",
                hintText: "   Search Name, Vehicale No, Contact No",
                hintStyle: TextStyle(
                  color: Utils.hexToColor("#6A0EFF"),
                ),
                suffixIcon: IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {},
                ),
                suffixIconColor: Colors.black,

                // prefixIcon: Icon(Icons.search),
                // border: OutlineInputBorder(
                //     borderSide: BorderSide(
                //         color: Utils.hexToColor("#6A0EFF"), width: 2),
                //     borderRadius: BorderRadius.all(Radius.circular(18)),
                //     ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12.0)),
                  borderSide:
                      BorderSide(color: Utils.hexToColor("#6A0EFF"), width: 2),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12.0)),
                  borderSide: BorderSide(color: Utils.hexToColor("#6A0EFF")),
                ),
              ),
            ),
          ]),
        ),

        //       ),
        //     ],
        //   ),
        // ),
        Container(
          padding: EdgeInsets.all(5.0),
          child: Column(children: [
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              // shadowColor: Colors.blueAccent,
              elevation: 15,
              child: ClipPath(
                  clipper: ShapeBorderClipper(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15))),
                  child: Container(
                      height: 140,
                      decoration: BoxDecoration(
                        border: Border(
                            left: BorderSide(
                                color: Utils.hexToColor("#6A0EFF"), width: 10)),
                        color: Colors.white,
                      ),
                      padding: EdgeInsets.all(8.0),
                      alignment: Alignment.centerLeft,
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Driver Name"),
                                SizedBox(
                                  width: 40,
                                ),
                                Text(
                                  "Ramesh Chandra",
                                  style: TextStyle(
                                      color: Utils.hexToColor("#6A0EFF")),
                                ),
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Vehicale No."),
                                SizedBox(
                                  width: 40,
                                ),
                                Text("UP 22 SD 1",
                                    style: TextStyle(
                                        color: Utils.hexToColor("#6A0EFF"))),
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Total price"),
                                SizedBox(
                                  width: 50,
                                ),
                                Text("1050/-",
                                    style: TextStyle(color: Colors.green)),
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Contact No."),
                                SizedBox(
                                  width: 42,
                                ),
                                Text("+91112223334",
                                    style: TextStyle(
                                        color: Utils.hexToColor("#6A0EFF"))),
                              ],
                            ),
                          ],
                        ),
                      ))),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              // shadowColor: Colors.blueAccent,
              elevation: 15,
              child: ClipPath(
                  clipper: ShapeBorderClipper(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15))),
                  child: Container(
                      height: 140,
                      decoration: BoxDecoration(
                        border: Border(
                            left: BorderSide(
                                color: Utils.hexToColor("#6A0EFF"), width: 10)),
                        color: Colors.white,
                      ),
                      padding: EdgeInsets.all(8.0),
                      alignment: Alignment.centerLeft,
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Driver Name"),
                                SizedBox(
                                  width: 40,
                                ),
                                Text(
                                  "Suresh KU",
                                  style: TextStyle(
                                      color: Utils.hexToColor("#6A0EFF")),
                                ),
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Vehicale No."),
                                SizedBox(
                                  width: 40,
                                ),
                                Text(
                                  "UP 22 SD 111",
                                  style: TextStyle(
                                      color: Utils.hexToColor("#6A0EFF")),
                                ),
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Total price"),
                                SizedBox(
                                  width: 50,
                                ),
                                Text(
                                  "1050/-",
                                  style: TextStyle(color: Colors.green),
                                ),
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Contact No."),
                                SizedBox(
                                  width: 42,
                                ),
                                Text(
                                  "22233344567",
                                  style: TextStyle(
                                      color: Utils.hexToColor("#6A0EFF")),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ))),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              // shadowColor: Colors.blueAccent,
              elevation: 15,
              child: ClipPath(
                  clipper: ShapeBorderClipper(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15))),
                  child: Container(
                      height: 140,
                      decoration: BoxDecoration(
                        border: Border(
                            left: BorderSide(
                                color: Utils.hexToColor("#6A0EFF"), width: 10)),
                        color: Colors.white,
                      ),
                      padding: EdgeInsets.all(8.0),
                      alignment: Alignment.centerLeft,
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Driver Name"),
                                SizedBox(
                                  width: 40,
                                ),
                                Text(
                                  "Dinesh DH",
                                  style: TextStyle(
                                      color: Utils.hexToColor("#6A0EFF")),
                                ),
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Vehicale No."),
                                SizedBox(
                                  width: 40,
                                ),
                                Text(
                                  "UP 22 SD 145",
                                  style: TextStyle(
                                      color: Utils.hexToColor("#6A0EFF")),
                                ),
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Total price"),
                                SizedBox(
                                  width: 50,
                                ),
                                Text(
                                  "1240/-",
                                  style: TextStyle(color: Colors.green),
                                ),
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Contact No."),
                                SizedBox(
                                  width: 42,
                                ),
                                Text(
                                  "22112223334",
                                  style: TextStyle(
                                      color: Utils.hexToColor("#6A0EFF")),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ))),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              // shadowColor: Colors.blueAccent,
              elevation: 15,
              child: ClipPath(
                  clipper: ShapeBorderClipper(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15))),
                  child: Container(
                      height: 140,
                      decoration: BoxDecoration(
                        border: Border(
                            left: BorderSide(
                                color: Utils.hexToColor("#6A0EFF"), width: 10)),
                        color: Colors.white,
                      ),
                      padding: EdgeInsets.all(8.0),
                      alignment: Alignment.centerLeft,
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Driver Name"),
                                SizedBox(
                                  width: 40,
                                ),
                                Text(
                                  "Sohan Chandra",
                                  style: TextStyle(
                                      color: Utils.hexToColor("#6A0EFF")),
                                ),
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Vehicale No."),
                                SizedBox(
                                  width: 40,
                                ),
                                Text(
                                  "UP 12 SD 178",
                                  style: TextStyle(
                                      color: Utils.hexToColor("#6A0EFF")),
                                ),
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Total price"),
                                SizedBox(
                                  width: 50,
                                ),
                                Text(
                                  "2250/-",
                                  style: TextStyle(color: Colors.green),
                                ),
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Contact No."),
                                SizedBox(
                                  width: 42,
                                ),
                                Text(
                                  "+2223334987",
                                  style: TextStyle(
                                      color: Utils.hexToColor("#6A0EFF")),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ))),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              // shadowColor: Colors.blueAccent,
              elevation: 15,
              child: ClipPath(
                  clipper: ShapeBorderClipper(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15))),
                  child: Container(
                      height: 140,
                      decoration: BoxDecoration(
                        border: Border(
                            left: BorderSide(
                                color: Utils.hexToColor("#6A0EFF"), width: 10)),
                        color: Colors.white,
                      ),
                      padding: EdgeInsets.all(8.0),
                      alignment: Alignment.centerLeft,
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Driver Name"),
                                SizedBox(
                                  width: 40,
                                ),
                                Text(
                                  "Sohan Chandra",
                                  style: TextStyle(
                                      color: Utils.hexToColor("#6A0EFF")),
                                ),
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Vehicale No."),
                                SizedBox(
                                  width: 40,
                                ),
                                Text(
                                  "UP 12 SD 178",
                                  style: TextStyle(
                                      color: Utils.hexToColor("#6A0EFF")),
                                ),
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Total price"),
                                SizedBox(
                                  width: 50,
                                ),
                                Text(
                                  "2250/-",
                                  style: TextStyle(color: Colors.green),
                                ),
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Contact No."),
                                SizedBox(
                                  width: 42,
                                ),
                                Text(
                                  "+2223334987",
                                  style: TextStyle(
                                      color: Utils.hexToColor("#6A0EFF")),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ))),
            ),
          ]),
        ),
      ]),
      drawer: DrawerFile(),
    );
  }
}

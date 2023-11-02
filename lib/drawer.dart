import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:safaimitra/Drawer/Complaint.dart';
import 'package:safaimitra/Drawer/Coverage%20Monitoring/bulkCollection.dart';
import 'package:safaimitra/Drawer/Coverage%20Monitoring/doorTodoor.dart';
import 'package:safaimitra/Drawer/Customer%20M/Ledger.dart';
import 'package:safaimitra/Drawer/Customer%20M/registration.dart';
import 'package:safaimitra/Drawer/Customer%20M/usercharge.dart';
import 'package:safaimitra/Drawer/Fuel/fuel.dart';
import 'package:safaimitra/Drawer/Waste%20Collection/Treatment.dart';
import 'package:safaimitra/Drawer/Waste%20Collection/generator.dart';
import 'package:safaimitra/Drawer/Waste%20Collection/storage.dart';
import 'package:safaimitra/Drawer/profile.dart';
import 'package:safaimitra/LoginApi/api_service.dart';
import 'package:safaimitra/LoginApi/data.dart';
import 'package:safaimitra/ProfileApi/api.dart';
import 'package:safaimitra/ProfileApi/person.dart';
import 'package:safaimitra/Utils.dart';

class DrawerFile extends StatefulWidget {
  const DrawerFile({super.key});

  @override
  State<DrawerFile> createState() => _DrawerFileState();
}

class _DrawerFileState extends State<DrawerFile> {
  Api api = Api();
  List<Person> listPerson = [];
  List<Menu> menu = [];

  getData() async {
    listPerson = await api.getData();
    // menu = await
    // setState(() {});
  }

  @override
  void initState() {
    getData();
    super.initState();
    // _menu = menu;
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Utils.hexToColor("#e0d4ff"),
      child: Container(
        child: ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: listPerson.length,
            itemBuilder: (context, index) {
              Person person = listPerson[index];
              return Column(children: [
                Container(
                  height: 150,
                  child: DrawerHeader(
                    decoration:
                        BoxDecoration(color: Utils.hexToColor("#6A0EFF")),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: 65,
                          height: 55,
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 70,
                            backgroundImage:
                                NetworkImage('${person.Profile_pic}'),
                          ),
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        Container(
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // Padding(padding: EdgeInsets.all(3.0)),
                                TextButton(
                                  child: Text(
                                    person.FName,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                ProfileEdit()));
                                  },
                                ),

                                Text(
                                  person.LName,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                  ),
                                ),
                              ]),
                        ),
                      ],
                    ),
                  ),
                ),
                Card(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  child: ListTile(
                    title: Text(
                      "Dashboard",
                      style: TextStyle(
                        color: Utils.hexToColor("#6A0EFF"),
                        fontSize: 15,
                      ),
                    ),
                    leading: Image.asset(
                      "assets/dashboard.png",
                      height: 30,
                      width: 30,
                    ),
                  ),
                ),
                Card(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  child: ListTile(
                    title: Text(
                      "Complaint",
                      style: TextStyle(
                        color: Utils.hexToColor("#6A0EFF"),
                        fontSize: 15,
                      ),
                    ),
                    leading: Image.asset(
                      "assets/complaint_m.png",
                      height: 30,
                      width: 30,
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ComplaintPage()));
                    },
                  ),
                ),
                Card(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  child: ListTile(
                    title: Text(
                      "Fuel",
                      style: TextStyle(
                        color: Utils.hexToColor("#6A0EFF"),
                        fontSize: 15,
                      ),
                    ),
                    // onPressed: () {
                    //   Navigator.push(context,
                    //       MaterialPageRoute(builder: (context) => FuelPage()));
                    // },

                    leading: Image.asset(
                      "assets/fuel.png",
                      height: 30,
                      width: 30,
                    ),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => FuelPage()));
                    },
                  ),
                ),
                Card(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  child: ExpansionTile(
                    title: Text(
                      "Customer Management",
                      style: TextStyle(
                        color: Utils.hexToColor("#6A0EFF"),
                        fontSize: 15,
                      ),
                    ),
                    leading: Image.asset(
                      "assets/customer.png",
                      height: 30,
                      width: 30,
                    ), //add icon
                    // childrenPadding: EdgeInsets.only(left: 60), //children padding
                    children: [
                      ListTile(
                        title: Text("Registration"),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => RegistrationPage()));
                          //action on press
                        },
                      ),

                      ListTile(
                        title: Text("User Charge"),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => UserChargePage()));
                          //action on press
                        },
                      ),
                      ListTile(
                        title: Text("Ledger"),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LedgerPage()));
                          //action on press
                        },
                      ),

                      //more child menu
                    ],
                  ),
                ),
                Card(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  child: ExpansionTile(
                    title: Text(
                      "GPS",
                      style: TextStyle(
                        color: Utils.hexToColor("#6A0EFF"),
                        fontSize: 15,
                      ),
                    ),
                    leading: Image.asset(
                      "assets/GPS.png",
                      height: 30,
                      width: 30,
                    ), //add icon
                    // childrenPadding: EdgeInsets.only(left: 60), //children padding
                    children: [
                      ListTile(
                        title: Text("Live"),
                        onTap: () {
                          //action on press
                        },
                      ),

                      ListTile(
                        title: Text("History"),
                        onTap: () {
                          //action on press
                        },
                      ),
                      ListTile(
                        title: Text("Route"),
                        onTap: () {
                          //action on press
                        },
                      ),

                      //more child menu
                    ],
                  ),
                ),
                Card(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  child: ExpansionTile(
                    title: Text(
                      "Waste Collection",
                      style: TextStyle(
                        color: Utils.hexToColor("#6A0EFF"),
                        fontSize: 15,
                      ),
                    ),
                    leading: Image.asset(
                      "assets/coverage.png",
                      height: 30,
                      width: 30,
                    ), //add icon
                    // childrenPadding: EdgeInsets.only(left: 60), //children padding
                    children: [
                      ListTile(
                        title: Text("Generator"),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => GeneratorPage()));
                          //action on press
                        },
                      ),

                      ListTile(
                        title: Text("Storage"),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => StoragePage()));
                          //action on press
                        },
                      ),
                      ListTile(
                        title: Text("Treatment"),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => TreatmentPage()));
                          //action on press
                        },
                      ),

                      //more child menu
                    ],
                  ),
                ),
                Card(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  child: ExpansionTile(
                    title: Text(
                      "Coverage Monitoring",
                      style: TextStyle(
                        color: Utils.hexToColor("#6A0EFF"),
                        fontSize: 15,
                      ),
                    ),
                    leading: Image.asset(
                      "assets/coverage.png",
                      height: 30,
                      width: 30,
                    ), //add icon
                    // childrenPadding: EdgeInsets.only(left: 60), //children padding
                    children: [
                      ListTile(
                        title: Text("Door To Door"),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DoorToDoorPage()));
                          //action on press
                        },
                      ),

                      ListTile(
                        title: Text("Bulk Collection"),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => BulkCollection()));
                          //action on press
                        },
                      ),

                      //more child menu
                    ],
                  ),
                ),
                Card(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  child: ExpansionTile(
                    title: Text(
                      "HRMS",
                      style: TextStyle(
                        color: Utils.hexToColor("#6A0EFF"),
                        fontSize: 15,
                      ),
                    ),
                    leading: Image.asset(
                      "assets/HRMS.png",
                      height: 30,
                      width: 30,
                    ), //add icon
                    // childrenPadding: EdgeInsets.only(left: 60), //children padding
                    children: [
                      ListTile(
                        title: Text("Dashboard"),
                        onTap: () {
                          //action on press
                        },
                      ),

                      ListTile(
                        title: Text("Attendance"),
                        onTap: () {
                          //action on press
                        },
                      ),

                      //more child menu
                    ],
                  ),
                ),
                Card(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  child: ExpansionTile(
                    title: Text(
                      "Settings",
                      style: TextStyle(
                        color: Utils.hexToColor("#6A0EFF"),
                        fontSize: 15,
                      ),
                    ),
                    leading: Image.asset(
                      "assets/settings.png",
                      height: 30,
                      width: 30,
                    ), //add icon
                    // childrenPadding: EdgeInsets.only(left: 60), //children padding
                    children: [
                      ListTile(
                        title: Text("Admin"),
                        onTap: () {
                          //action on press
                        },
                      ),

                      //more child menu
                    ],
                  ),
                ),
                Card(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  child: ExpansionTile(
                    title: Text(
                      "More",
                      style: TextStyle(
                        color: Utils.hexToColor("#6A0EFF"),
                        fontSize: 15,
                      ),
                    ),
                    leading: Image.asset(
                      "assets/more.png",
                      height: 30,
                      width: 30,
                    ), //add icon
                    // childrenPadding: EdgeInsets.only(left: 60), //children padding
                    children: [
                      ListTile(
                        title: Text("About Us"),
                        onTap: () {
                          //action on press
                        },
                      ),

                      //more child menu
                    ],
                  ),
                ),
              ]);
            }),
      ),
    );
  }
}

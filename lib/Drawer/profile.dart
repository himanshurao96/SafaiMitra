import 'package:flutter/material.dart';
import 'package:safaimitra/ProfileApi/api.dart';
import 'package:safaimitra/ProfileApi/person.dart';
import 'package:safaimitra/Utils.dart';
import 'package:safaimitra/login.dart';
import 'package:safaimitra/loginEmail.dart';
import 'package:safaimitra/main.dart';

class ProfileEdit extends StatefulWidget {
  const ProfileEdit({super.key});

  @override
  State<ProfileEdit> createState() => _ProfileEditState();
}

class _ProfileEditState extends State<ProfileEdit> {
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
        title: Text("Profile"),
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        // child: ListView.builder(
        //     // itemCount: 1,
        //     // itemBuilder: (context, index) {
        //     //   Person person = listPerson[index];
        // return ListView(children: [
        //   Center(
        //       child: Column(
        //           // mainAxisAlignment: MainAxisAlignment.center,
        //           // crossAxisAlignment: CrossAxisAlignment.start,
        //           children: [
        //         Container(
        //           child: Column(children: [
        //             // Align(
        //             //   alignment: Alignment.center,
        //             Container(
        //               width: 80,
        //               height: 80,
        //               child: CircleAvatar(
        //                 backgroundColor: Colors.white,
        //                 radius: 60,
        //                 child: Image.asset(
        //                   "assets/H_logo.png",
        //                   color: Colors.red,
        //                   height: 78,
        //                   width: 78,
        //                 ),
        //               ),
        //             ),
        //             SizedBox(
        //               height: 13,
        //             ),

        //             Container(
        //               child: Column(children: [
        //                 Text(
        //                   'Himanshu',
        //                   style: TextStyle(
        //                       fontWeight: FontWeight.bold,
        //                       fontSize: 18,
        //                       color: Utils.hexToColor("#6A0EFF")),
        //                 ),
        //                 SizedBox(
        //                   height: 5.0,
        //                 ),
        //                 Text(
        //                   'Admin',
        //                   style: TextStyle(
        //                       fontWeight: FontWeight.bold,
        //                       fontSize: 15,
        //                       color: Colors.green),
        //                 ),
        //               ]),
        //             ),
        //           ]),
        //         ),
        //       ])),
        //   SizedBox(
        //     height: 8,
        //   ),
        //   Card(
        //     color: Colors.white,
        //     shape: RoundedRectangleBorder(
        //         borderRadius: BorderRadius.circular(10.0)),
        //     child: Container(
        //       padding: EdgeInsets.all(10.0),
        //       height: 150,
        //       child: Column(
        //           crossAxisAlignment: CrossAxisAlignment.start,
        //           mainAxisAlignment: MainAxisAlignment.spaceAround,
        //           children: [
        //             Text(
        //               "Email ID :   ${person.Email}",
        //               style: TextStyle(
        //                   fontSize: 15, fontWeight: FontWeight.bold),
        //             ),
        //             Text(
        //               "DOB :  ${person.DOB}",
        //               style: TextStyle(
        //                   fontSize: 15, fontWeight: FontWeight.bold),
        //             ),
        //             Text(
        //               "Mobile No :  ${person.ContactNo}",
        //               style: TextStyle(
        //                   fontSize: 15, fontWeight: FontWeight.bold),
        //             ),
        //           ]),
        //     ),
        //   ),
        //   SizedBox(
        //     height: 10,
        //   ),
        //   Row(
        //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //       children: [
        //         Align(
        //           alignment: Alignment.bottomLeft,
        //           child: ElevatedButton(
        //             style: ElevatedButton.styleFrom(
        //                 backgroundColor: Utils.hexToColor("#6A0EFF"),
        //                 shape: RoundedRectangleBorder(
        //                     borderRadius: BorderRadius.circular(10)),
        //                 padding: const EdgeInsets.symmetric(
        //                     horizontal: 50.0, vertical: 15.0)),
        //             child: const Text(
        //               "EDIT",
        //               style: TextStyle(
        //                 fontSize: 15,
        //               ),
        //             ),
        //             onPressed: () {},
        //           ),
        //         ),
        //         Align(
        //           alignment: Alignment.centerRight,
        //           child: ElevatedButton(
        //             style: ElevatedButton.styleFrom(
        //                 backgroundColor: Utils.hexToColor("#6A0EFF"),
        //                 shape: RoundedRectangleBorder(
        //                     borderRadius: BorderRadius.circular(10)),
        //                 padding: const EdgeInsets.symmetric(
        //                     horizontal: 50.0, vertical: 15.0)),
        //             child: const Text(
        //               "LOGOUT",
        //               style: TextStyle(
        //                 fontSize: 15,
        //               ),
        //             ),
        //             onPressed: () {
        //               Navigator.push(
        //                   context,
        //                   MaterialPageRoute(
        //                       builder: (context) => LoginWithEmail()));
        //             },
        //           ),
        //         ),
        //       ]),
        // ]);
      ),
    );
  }
}

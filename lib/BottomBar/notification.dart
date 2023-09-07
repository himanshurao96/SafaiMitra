import 'package:flutter/material.dart';
import 'package:safaimitra/Utils.dart';
import 'package:safaimitra/drawer.dart';
// import 'package:safaimitra/drawer.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Utils.hexToColor("#e0d4ff"),
      appBar: AppBar(
        backgroundColor: Utils.hexToColor("#6A0EFF"),
        title: Text(
          "Notification",
          style: TextStyle(fontSize: 22),
        ),
        // leading: IconButton(
        //   onPressed: () {
        //     Navigator.push(
        //         context,
        //         MaterialPageRoute(

        //            builder: (context) => const MyDrawer()));
        //   },
        //   icon: Icon(Icons.list_outlined),
        // ),
      ),
      drawer: DrawerFile(),
    );
  }
}

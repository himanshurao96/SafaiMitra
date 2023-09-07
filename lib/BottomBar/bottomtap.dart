import 'package:flutter/material.dart';
import 'package:safaimitra/BottomBar/help.dart';
import 'package:safaimitra/BottomBar/notification.dart';
import 'package:safaimitra/BottomBar/video.dart';
import 'package:safaimitra/Utils.dart';
import 'package:safaimitra/drawer.dart';
// import 'package:safaimitra/drawer.dart';

import 'home1.dart';

class BottomTapBar extends StatefulWidget {
  const BottomTapBar({super.key});

  @override
  State<BottomTapBar> createState() => _BottomTapBarState();
}

class _BottomTapBarState extends State<BottomTapBar> {
  int currentTab = 0;
  final screens = [
    HomePage1(),
    Video(),
    NotificationScreen(),
    HelpAndSupport(),
  ];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = HomePage1();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        child: const Icon(
          Icons.expand_less_sharp,
          color: Colors.black,
          size: 26,
        ),
        onPressed: () {},
      ),
      bottomNavigationBar: BottomAppBar(
        height: 55,
        color: Utils.hexToColor("#6A0EFF"),
        shape: CircularNotchedRectangle(),
        notchMargin: 4.0,
        child: new Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            IconButton(
              icon: Icon(
                Icons.home_outlined,
                size: 25,
                color: Colors.white54,
              ),
              onPressed: () {
                setState(() {
                  currentScreen = HomePage1();
                  currentTab = 0;
                });
              },
            ),
            SizedBox(
              width: 40,
            ),
            IconButton(
              icon: Icon(
                Icons.video_call_outlined,
                size: 25,
                color: Colors.white54,
              ),
              onPressed: () {
                setState(() {
                  currentScreen = Video();
                  currentTab = 1;
                });
              },
            ),
            SizedBox(
              width: 75,
            ),
            IconButton(
              icon: Icon(
                Icons.notifications_active_outlined,
                size: 25,
                color: Colors.white54,
              ),
              onPressed: () {
                setState(() {
                  currentScreen = NotificationScreen();
                  currentTab = 2;
                });
              },
            ),
            SizedBox(
              width: 50,
            ),
            IconButton(
              icon: Icon(
                Icons.help_center_outlined,
                size: 25,
                color: Colors.white54,
              ),
              onPressed: () {
                setState(() {
                  currentScreen = HelpAndSupport();
                  currentTab = 3;
                });
              },
            ),
          ],
        ),
      ),
      // backgroundColor: Utils.hexToColor("#4B62FF"),
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
    );
  }
}

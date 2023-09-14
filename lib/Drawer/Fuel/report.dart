// import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
// import 'package:freestyle_speed_dial/freestyle_speed_dial.dart';
// import 'package:pie_chart/pie_chart.dart';
import 'package:safaimitra/Utils.dart';
import 'package:safaimitra/drawer.dart';
// import 'package:toggle_switch/toggle_switch.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:toggle_switch/toggle_switch.dart';

final double buttonSize = 80;

class Report extends StatefulWidget {
  const Report({super.key});

  @override
  State<Report> createState() => _ReportState();
}

class _ReportState extends State<Report> {
  List<bool> isSelected = [true, false];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Utils.hexToColor("#e0d4ff"),
      appBar: AppBar(
        backgroundColor: Utils.hexToColor("#6A0EFF"),
        title: Text("Fuel"),
      ),
      body: Container(
        padding: EdgeInsets.all(7.0),
        child: ListView(children: [
          Card(
            color: Colors.white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
            child: Container(
              padding: EdgeInsets.all(8.0),
              height: 165,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(children: [
                    Container(
                      height: 20.0,
                      width: 20.0,
                      decoration: new BoxDecoration(
                        color: Utils.hexToColor("#CAA7FF"),
                        shape: BoxShape.circle,
                      ),
                    ),
                    //bullet text
                    SizedBox(
                      width: 10,
                    ), //space between bullet and text
                    Expanded(
                      child: Text(
                        "Today : 0 Ltr & 0 /-",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Utils.hexToColor("#CAA7FF"),
                        ),
                      ), //text
                    )
                  ]),
                  Row(children: [
                    Container(
                      height: 20.0,
                      width: 20.0,
                      decoration: new BoxDecoration(
                        color: Utils.hexToColor("#A467FF"),
                        shape: BoxShape.circle,
                      ),
                    ),
                    //bullet text
                    SizedBox(
                      width: 10,
                    ), //space between bullet and text
                    Expanded(
                      child: Text(
                        "This Month : 0.0 Ltr & 0.0 /-",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Utils.hexToColor("#A467FF"),
                        ),
                      ), //text
                    )
                  ]),
                  Row(children: [
                    Container(
                      height: 20.0,
                      width: 20.0,
                      decoration: new BoxDecoration(
                        color: Utils.hexToColor("#6A0EFF"),
                        shape: BoxShape.circle,
                      ),
                    ),
                    //bullet text
                    SizedBox(
                      width: 10,
                    ), //space between bullet and text
                    Expanded(
                      child: Text(
                        "Prev.Month :  575 Ltr & 28205 /-",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Utils.hexToColor("#6A0EFF"),
                        ),
                      ), //text
                    )
                  ]),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SpeedDial(
                          animatedIcon: AnimatedIcons.menu_close,
                          animatedIconTheme: IconThemeData(size: 20.0),
                          backgroundColor: Utils.hexToColor("#6A0EFF"),
                          visible: true,
                          curve: Curves.bounceInOut,
                          children: [
                            SpeedDialChild(
                              child: FaIcon(
                                FontAwesomeIcons.whatsapp,
                                color: Utils.hexToColor("#6A0EFF"),
                              ),
                              backgroundColor: Colors.white,
                              // onTap: () => print('Pressed Read Later'),
                              // label: 'Read',
                              // labelStyle: TextStyle(
                              //     fontWeight: FontWeight.w500,
                              //     color: Colors.white),
                              // labelBackgroundColor: Colors.black,
                            ),
                            SpeedDialChild(
                              child: FaIcon(FontAwesomeIcons.download,
                                  color: Utils.hexToColor("#6A0EFF")),
                              backgroundColor: Colors.white,
                            ),
                          ]),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ToggleSwitch(
                minWidth: MediaQuery.of(context).size.width,
                cornerRadius: 18.0,
                activeBgColors: [
                  [Utils.hexToColor("#6A0EFF")],
                  [Utils.hexToColor("#6A0EFF")]
                ],
                activeFgColor: Colors.white,
                inactiveBgColor: Utils.hexToColor("#e0d4ff"),
                inactiveFgColor: Utils.hexToColor("#6A0EFF"),
                initialLabelIndex: 1,
                totalSwitches: 2,
                labels: [
                  'Today Summary',
                  'Month Summary',
                ],
                radiusStyle: true,
                onToggle: (index) {
                  print('switched to: $index');
                },
              ),
            ],
          ),
        ]),
      ),
      drawer: DrawerFile(),
    );
  }
}

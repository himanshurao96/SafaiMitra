import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lottie/lottie.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:safaimitra/Utils.dart';
import 'package:safaimitra/drawer.dart';
import 'package:toggle_switch/toggle_switch.dart';

class DoorToDoorPage extends StatelessWidget {
  const DoorToDoorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Utils.hexToColor("#e0d4ff"),
      appBar: AppBar(
        backgroundColor: Utils.hexToColor("#6A0EFF"),
        title: Text("Door To Door"),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Lottie.asset(
              'assets/Qrscan.json',
              height: 300,
              fit: BoxFit.cover,
              repeat: false,
              reverse: false,
            ),
            SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Utils.hexToColor("#6A0EFF"),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40)),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 40.0, vertical: 12.0)),
                child: const Text(
                  "SCAN",
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
                onPressed: () {
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (context) => LoginPage()));
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: SpeedDial(
        icon: Icons.add, //icon on Floating action button
        activeIcon: Icons.close, //icon when menu is expanded on button
        backgroundColor:
            Utils.hexToColor("#6A0EFF"), //background color of button
        foregroundColor: Colors.white, //font color, icon color in button
        activeBackgroundColor: Utils.hexToColor(
            "#6A0EFF"), //background color when menu is expanded
        activeForegroundColor: Colors.white, //button size
        visible: true,
        closeManually: false,
        curve: Curves.bounceIn,
        overlayColor: Colors.black,
        overlayOpacity: 0.5,
        onOpen: () => print('OPENING DIAL'), // action when menu opens
        onClose: () => print('DIAL CLOSED'), //action when menu closes

        elevation: 8.0, //shadow elevation of button
        shape: CircleBorder(), //shape of button
        children: [
          SpeedDialChild(
            //speed dial child
            child: Icon(Icons.list_alt_outlined),
            backgroundColor: Utils.hexToColor("#6A0EFF"),
            foregroundColor: Colors.white,
            // label: 'First Menu Child',
            // labelStyle: TextStyle(fontSize: 18.0),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => QrReportPage()));
            },
            onLongPress: () => print('FIRST CHILD LONG PRESS'),
          ),
          // SpeedDialChild(
          //   child: Icon(Icons.brush),
          //   backgroundColor: Colors.blue,
          //   foregroundColor: Colors.white,
          //   label: 'Second Menu Child',
          //   labelStyle: TextStyle(fontSize: 18.0),
          //   onTap: () => print('SECOND CHILD'),
          //   onLongPress: () => print('SECOND CHILD LONG PRESS'),
          // ),
          // SpeedDialChild(
          //   child: Icon(Icons.keyboard_voice),
          //   foregroundColor: Colors.white,
          //   backgroundColor: Colors.green,
          //   label: 'Third Menu Child',
          //   labelStyle: TextStyle(fontSize: 18.0),
          //   onTap: () => print('THIRD CHILD'),
          //   onLongPress: () => print('THIRD CHILD LONG PRESS'),
          // ),

          //add more menu item childs here
        ],
      ),
      drawer: DrawerFile(),
    );
  }
}

class QrReportPage extends StatefulWidget {
  @override
  State<QrReportPage> createState() => _QrReportPageState();
}

class _QrReportPageState extends State<QrReportPage> {
  final dataMap = <String, double>{
    "Today": 0,
    "This Month": 0,
    "Prev.Month": 0,
    "Year": 100,
  };

  final legendLabels = <String, String>{
    "Today": "Today : 0",
    "This Month": "This Month : 0",
    "Prev.Month": "Prev.Month : 0",
    "Year": "Year : 0",
  };

  bool _showLegendLabel = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Utils.hexToColor("#e0d4ff"),
      appBar: AppBar(
        backgroundColor: Utils.hexToColor("#6A0EFF"),
        title: Text("Door To Door"),
      ),
      body: Container(
        padding: EdgeInsets.all(8.0),
        child: ListView(children: [
          Card(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              child: Container(
                padding: EdgeInsets.all(11.0),
                height: 190,
                child: Wrap(children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        PieChart(
                          dataMap: dataMap,
                          animationDuration: Duration(milliseconds: 800),
                          chartLegendSpacing: 60,
                          chartRadius: 90,
                          colorList: [
                            Utils.hexToColor("#D6BAFF"),
                            Utils.hexToColor("#CAA7FF"),
                            Utils.hexToColor("#A467FF"),
                            Utils.hexToColor("#6A0EFF"),
                          ],
                          // chartType: ChartType.ring,
                          // baseChartColor: Colors.black,
                          // chartValuesOptions:
                          //     ChartValuesOptions(showChartValuesInPercentage: true),
                          // totalValue: 20
                          initialAngleInDegree: 0,

                          chartType: ChartType.ring,

                          ringStrokeWidth: 20,
                          centerTextStyle: TextStyle(
                            color: Utils.hexToColor("#6A0EFF"),
                            fontSize: 12,
                          ),

                          centerText: "QR Report",
                          legendLabels: _showLegendLabel ? legendLabels : {},

                          legendOptions: LegendOptions(
                            // showLegendsInRow: true,
                            legendPosition: LegendPosition.right,
                            showLegends: true,
                            legendShape: BoxShape.circle,
                            legendTextStyle: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          chartValuesOptions: ChartValuesOptions(
                            showChartValueBackground: false,
                            showChartValues: false,
                            showChartValuesInPercentage: true,
                            showChartValuesOutside: true,
                            decimalPlaces: 1,
                            // showChartValuesInPercentage: true,
                          ),
                        ),
                      ]),
                  Row(mainAxisAlignment: MainAxisAlignment.end, children: [
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
                  ])
                ]),
              )),
          SizedBox(
            height: 10,
          ),
          Column(mainAxisAlignment: MainAxisAlignment.center, children: [
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
          ]),
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Utils.hexToColor("#6A0EFF"),
        child: Icon(Icons.qr_code),
        onPressed: () {
          // Navigator.push(
          //     context, MaterialPageRoute(builder: (context) => AddKycButton()));
        },
      ),
      drawer: DrawerFile(),
    );
  }
}


// class QrCode extends StatelessWidget {
//   const QrCode({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return 
//   }
// }

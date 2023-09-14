import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:safaimitra/Drawer/Customer%20M/collectUcc.dart';
import 'package:safaimitra/Utils.dart';
import 'package:safaimitra/drawer.dart';
import 'package:toggle_switch/toggle_switch.dart';

class UserChargePage extends StatefulWidget {
  const UserChargePage({super.key});

  @override
  State<UserChargePage> createState() => _UserChargePageState();
}

class _UserChargePageState extends State<UserChargePage> {
  final dataMap2 = <String, double>{
    "Today": 0,
    "This Month": 0,
    "Prev.Month": 0,
    "Year": 100,
  };
  final legendLabels2 = <String, String>{
    "Today": "Today : 0 /-",
    "This Month": "This Month : 0 /-",
    "Prev.Month": "Prev.Month : 0 /-",
    "Year": "Year : 0 /-",
  };
  bool _showLegendLabel = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Utils.hexToColor("#e0d4ff"),
      appBar: AppBar(
        backgroundColor: Utils.hexToColor("#6A0EFF"),
        title: Text("User Charge"),
      ),
      body: Container(
        padding: EdgeInsets.all(5.0),
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
                          dataMap: dataMap2,
                          animationDuration: Duration(milliseconds: 800),
                          chartLegendSpacing: 70,
                          chartRadius: 100,
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

                          ringStrokeWidth: 28,
                          centerTextStyle: TextStyle(
                              color: Utils.hexToColor("#6A0EFF"),
                              fontSize: 17,
                              fontWeight: FontWeight.w500),

                          centerText: "UCC",
                          legendLabels: _showLegendLabel ? legendLabels2 : {},

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
                cornerRadius: 18,
                // activeBgColor: Utils.hexToColor("#6A0EFF"),
                activeBgColor: [Utils.hexToColor("#6A0EFF")],
                activeFgColor: Colors.white,
                inactiveBgColor: Utils.hexToColor("#e0d4ff"),
                inactiveFgColor: Utils.hexToColor("#6A0EFF"),
                labels: [
                  'Today Summary',
                  'Month Summary',
                ],
                radiusStyle: true,
                // icons: [FontAwesomeIcons.check, FontAwesomeIcons.times],
                onToggle: (index) {
                  print('switched to: $index');
                }),
          ]),
        ]),
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Utils.hexToColor("#6A0EFF"),
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => CollectUccButton()));
        },
        label: const Text('Collect Ucc'),
        icon: const Icon(Icons.add),
      ),
      drawer: DrawerFile(),
    );
  }
}

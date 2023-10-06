import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lottie/lottie.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:safaimitra/Utils.dart';
import 'package:safaimitra/drawer.dart';
import 'package:toggle_switch/toggle_switch.dart';

class BulkCollection extends StatefulWidget {
  const BulkCollection({super.key});

  @override
  State<BulkCollection> createState() => _BulkCollectionState();
}

class _BulkCollectionState extends State<BulkCollection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Utils.hexToColor("#e0d4ff"),
      appBar: AppBar(
        backgroundColor: Utils.hexToColor("#6A0EFF"),
        title: Text("Bulk Collection"),
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
              child: Icon(Icons.add),
              backgroundColor: Utils.hexToColor("#6A0EFF"),
              foregroundColor: Colors.white,
              // label: 'First Menu Child',
              // labelStyle: TextStyle(fontSize: 18.0),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => QRCodeCreation()));
              },
              onLongPress: () => print('FIRST CHILD LONG PRESS'),
            ),
            SpeedDialChild(
              child: Icon(Icons.list_alt_outlined),
              backgroundColor: Utils.hexToColor("#6A0EFF"),
              foregroundColor: Colors.white,
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => QrReportPage()));
              },
              onLongPress: () => print('SECOND CHILD LONG PRESS'),
            ),
          ]),
      drawer: DrawerFile(),
    );
  }
}

class QRCodeCreation extends StatefulWidget {
  const QRCodeCreation({super.key});

  @override
  State<QRCodeCreation> createState() => _QRCodeCreationState();
}

class _QRCodeCreationState extends State<QRCodeCreation> {
  final Items = [
    'ab',
    'Ajit',
    'Barka',
    'delhi',
    'gaur',
    'Gaur City',
    'ghazibad dumping',
    'Gurgaon',
  ];
  final Items2 = [
    'Bin',
    'Hanging Society',
    'Highrise Society',
    'Landfill',
    'Office',
    'Recycling plant',
    'Storage facility',
    'workshop'
  ];
  String? value;
  String? value2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Utils.hexToColor("#e0d4ff"),
      appBar: AppBar(
        backgroundColor: Utils.hexToColor("#6A0EFF"),
        title: Text("Bulk Collection"),
      ),
      body: Container(
        padding: EdgeInsets.all(5.0),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.qr_code_2_outlined,
                  color: Utils.hexToColor("#6A0EFF"),
                  size: 35,
                ),
                Text(
                  "QRCode Creation",
                  style: TextStyle(
                      color: Utils.hexToColor("#6A0EFF"), fontSize: 20),
                ),
                Icon(
                  Icons.qr_code_2_outlined,
                  color: Utils.hexToColor("#6A0EFF"),
                  size: 35,
                ),
              ],
            ),
            Card(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              child: Container(
                  padding: EdgeInsets.all(8.0),
                  height: 360,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(children: [
                          Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Address",
                                  style: TextStyle(fontSize: 18),
                                ),
                                Icon(Icons.gps_fixed,
                                    size: 25,
                                    color: Utils.hexToColor("#6A0EFF")),
                              ]),
                          SizedBox(
                            height: 10,
                          ),
                          TextField(
                              decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Utils.hexToColor("#e0d4ff"),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10.0)),
                                    borderSide: BorderSide(
                                        color: Utils.hexToColor("#6A0EFF"),
                                        width: 1),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10.0)),
                                    borderSide: BorderSide(
                                        color: Utils.hexToColor("#6A0EFF"),
                                        width: 1),
                                  ),
                                  isDense: true,
                                  constraints:
                                      BoxConstraints.tightFor(height: 70))),
                        ]),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Location",
                                  style: TextStyle(fontSize: 18),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                TextField(
                                    decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Utils.hexToColor("#e0d4ff"),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10.0)),
                                    borderSide: BorderSide(
                                        color: Utils.hexToColor("#6A0EFF"),
                                        width: 1),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10.0)),
                                    borderSide: BorderSide(
                                        color: Utils.hexToColor("#6A0EFF"),
                                        width: 1),
                                  ),
                                  isDense: true,
                                  // contentPadding: EdgeInsets.all(10.0)
                                  constraints: BoxConstraints.tightFor(
                                      width: 170, height: 50),
                                )),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Dhalao Name",
                                  style: TextStyle(fontSize: 18),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  width: 170,
                                  height: 50,
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 8,
                                  ),
                                  decoration: BoxDecoration(
                                      color: Utils.hexToColor("#e0d4ff"),
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(
                                          color: Utils.hexToColor("#6A0EFF"),
                                          width: 1)),
                                  child: DropdownButtonHideUnderline(
                                    child: DropdownButton<String>(
                                      isExpanded: true,
                                      value: value,
                                      items: [
                                        DropdownMenuItem(
                                          child: Text("Select"),
                                          value: "",
                                        ),
                                        ...Items.map<DropdownMenuItem<String>>(
                                            (String item) {
                                          return DropdownMenuItem<String>(
                                              value: item,
                                              child: Text(
                                                item,
                                                style: TextStyle(fontSize: 20),
                                              ));
                                        }).toList(),
                                      ],
                                      onChanged: (value) => setState(() {
                                        this.value = value!;
                                      }),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Type",
                                    style: TextStyle(fontSize: 18),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    width: 170,
                                    height: 50,
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 8,
                                    ),
                                    decoration: BoxDecoration(
                                        color: Utils.hexToColor("#e0d4ff"),
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                            color: Utils.hexToColor("#6A0EFF"),
                                            width: 1)),
                                    child: DropdownButtonHideUnderline(
                                      child: DropdownButton<String>(
                                        isExpanded: true,
                                        value: value2,
                                        items: [
                                          DropdownMenuItem(
                                            child: Text("Select"),
                                            value: "",
                                          ),
                                          ...Items2.map<
                                                  DropdownMenuItem<String>>(
                                              (String item) {
                                            return DropdownMenuItem<String>(
                                                value: item,
                                                child: Text(
                                                  item,
                                                  style:
                                                      TextStyle(fontSize: 20),
                                                ));
                                          }).toList(),
                                        ],
                                        onChanged: (value2) => setState(() {
                                          this.value2 = value2!;
                                        }),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Landmark",
                                    style: TextStyle(fontSize: 18),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  TextField(
                                      decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Utils.hexToColor("#e0d4ff"),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10.0)),
                                      borderSide: BorderSide(
                                          color: Utils.hexToColor("#6A0EFF"),
                                          width: 1),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10.0)),
                                      borderSide: BorderSide(
                                          color: Utils.hexToColor("#6A0EFF"),
                                          width: 1),
                                    ),
                                    isDense: true,
                                    // contentPadding: EdgeInsets.all(10.0)
                                    constraints: BoxConstraints.tightFor(
                                        width: 170, height: 50),
                                  )),
                                ],
                              ),
                            ]),
                        SizedBox(
                          height: 10,
                        ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Utils.hexToColor("#6A0EFF"),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 60.0, vertical: 12.0)),
                            child: const Text(
                              "CREATE",
                              style: TextStyle(
                                fontSize: 15,
                              ),
                            ),
                            onPressed: () {}),
                      ])),
            )
          ],
        ),
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
        title: Text("Bulk Collection"),
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

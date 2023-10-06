import 'package:flutter/material.dart';
// import 'package:safaimitra/BottomBar/bottomtap.dart';
import 'package:safaimitra/Drawer/Fuel/add.dart';
import 'package:safaimitra/Drawer/Fuel/list.dart';
import 'package:safaimitra/Drawer/Fuel/report.dart';
import 'package:safaimitra/Utils.dart';
import 'package:safaimitra/drawer.dart';
import 'package:pie_chart/pie_chart.dart';

class FuelPage extends StatefulWidget {
  @override
  State<FuelPage> createState() => _FuelPageState();
}

class _FuelPageState extends State<FuelPage> {
  final dataMap = <String, double>{
    "Today": 0,
    "This Month": 2100,
    "Prev.Month": 20000,
    "This Year": 1000000,
  };

  final legendLabels = <String, String>{
    "Today": "Today : 0",
    "This Month": "This Month : 2100",
    "Prev.Month": "Prev.Month : 20000",
    "This Year": "This Year : 1000000",
  };

  final dataMap2 = <String, double>{
    "Today": 0,
    "This Month": 0,
    "Prev.Month": 500,
    "This Year": 20000,
  };

  final legendLabels2 = <String, String>{
    "Today": "Today : 0 L",
    "This Month": "This Month : 0 L",
    "Prev.Month": "Prev.Month : 500 L",
    "This Year": "This Year : 20000 L",
  };

  bool _showLegendLabel = true;

  // final colorList = <Color>[
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Utils.hexToColor("#e0d4ff"),
      appBar: AppBar(
        backgroundColor: Utils.hexToColor("#6A0EFF"),
        title: Text("Fuel"),
      ),
      body: Container(
        padding: EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.all(6.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Fuel Price Details",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Card(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0)),
                child: Container(
                  padding: EdgeInsets.all(10.0),
                  height: 150,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        PieChart(
                          dataMap: dataMap,
                          animationDuration: Duration(milliseconds: 800),
                          chartLegendSpacing: 70,
                          chartRadius: double.infinity,
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

                          centerText: "Price",
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
                )),
            Container(
              padding: EdgeInsets.all(6.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Fuel Quantity Details",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Card(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              child: Container(
                padding: EdgeInsets.all(15.0),
                height: 150,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      PieChart(
                        dataMap: dataMap2,
                        animationDuration: Duration(milliseconds: 800),
                        chartLegendSpacing: 70,
                        chartRadius: MediaQuery.of(context).size.width / 2,
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

                        centerText: "Qty",
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
              ),
            ),
            SizedBox(
              height: 75,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                FloatingActionButton.extended(
                  backgroundColor: Utils.hexToColor("#6A0EFF"),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => List()));
                  },
                  label: const Text('LIST'),
                  icon: const Icon(Icons.list_alt_outlined),
                ),
                SizedBox(
                  height: 25,
                ),
                FloatingActionButton.extended(
                  backgroundColor: Utils.hexToColor("#6A0EFF"),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Report()),
                    );
                  },
                  label: const Text('REPORT'),
                  icon: const Icon(Icons.receipt_long_outlined),
                ),
                SizedBox(
                  height: 25,
                ),
                FloatingActionButton.extended(
                  backgroundColor: Utils.hexToColor("#6A0EFF"),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ADDPAGE()));
                    // Add your onPressed code here!
                  },
                  label: const Text('ADD'),
                  icon: const Icon(Icons.add),
                ),
              ],
            )
          ],
        ),
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      // floatingActionButton: FloatingActionButton.extended(
      //   onPressed: () {},
      //   backgroundColor: Utils.hexToColor("#6A0EFF"),
      //   label: const Text('Add'),
      //   icon: const Icon(Icons.add),
      // ),

      //  FloatingActionButton.extended(
      //   onPressed: () {},
      //   backgroundColor: Utils.hexToColor("#6A0EFF"),
      //   label: const Text('Add'),
      //   icon: const Icon(Icons.add),
      // ),
      drawer: DrawerFile(),
    );
  }
}

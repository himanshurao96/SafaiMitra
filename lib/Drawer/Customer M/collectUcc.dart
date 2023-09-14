import 'package:flutter/material.dart';
import 'package:safaimitra/Utils.dart';
import 'package:safaimitra/drawer.dart';

class CollectUccButton extends StatefulWidget {
  @override
  State<CollectUccButton> createState() => _CollectUccButtonState();
}

class _CollectUccButtonState extends State<CollectUccButton> {
  final Items = [
    '01 - Shastrii Nagar',
    '02 - Gandhi Nagar',
    '03 - Lakshmi Pura',
    '04 - Nehru Nagar',
    '05 - Jawahar Chowk',
    '06 - Mahavir Nagar',
    '07 - Ambedkar Colony',
    '08 - Indira Colony',
  ];
  final Items2 = [
    'Moblie',
    'Customer ID',
    'Name',
    'HouseNo',
  ];

  String? value;
  String? value2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Utils.hexToColor("#e0d4ff"),
      appBar: AppBar(
        backgroundColor: Utils.hexToColor("#6A0EFF"),
        title: Text("User Charge"),
      ),
      body: Container(
        padding: EdgeInsets.all(8.0),
        child: ListView(children: [
          Card(
            color: Colors.white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
            child: Container(
              padding: EdgeInsets.all(8.0),
              height: 200,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Customer Search By",
                            style: TextStyle(
                                color: Colors.black54,
                                fontSize: 18,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Container(
                            height: 40,
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
                                hint: Text(
                                  "Select Ward",
                                  style: TextStyle(
                                      color: Utils.hexToColor("#6A0EFF"),
                                      fontWeight: FontWeight.w400),
                                ),
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
                          )
                        ]),
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 170,
                            height: 40,
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
                                hint: Text(
                                  "Mobile,Id,Name",
                                  style: TextStyle(
                                      color: Utils.hexToColor("#6A0EFF"),
                                      fontWeight: FontWeight.w400),
                                ),
                                items: [
                                  DropdownMenuItem(
                                    child: Text("Select"),
                                    value: "",
                                  ),
                                  ...Items2.map<DropdownMenuItem<String>>(
                                      (String item) {
                                    return DropdownMenuItem<String>(
                                        value: item,
                                        child: Text(
                                          item,
                                          style: TextStyle(fontSize: 20),
                                        ));
                                  }).toList(),
                                ],
                                onChanged: (value2) => setState(() {
                                  this.value2 = value2!;
                                }),
                              ),
                            ),
                          ),
                          TextField(
                              style:
                                  TextStyle(color: Utils.hexToColor("#6A0EFF")),
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Utils.hexToColor("#e0d4ff"),
                                hintText: 'Enter Search Text',
                                hintStyle: TextStyle(
                                    color: Utils.hexToColor("#6A0EFF"),
                                    fontWeight: FontWeight.w400),
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
                                constraints: BoxConstraints.tightFor(
                                    width: 170, height: 40),
                              )),
                        ]),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Utils.hexToColor("#6A0EFF"),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 50.0, vertical: 15.0)),
                        child: const Text(
                          "SEARCH",
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
                  ]),
            ),
          )
        ]),
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Utils.hexToColor("#6A0EFF"),
        onPressed: () {
          // Navigator.push(context,
          //     MaterialPageRoute(builder: (context) => CollectUccButton()));
        },
        label: const Text('Scan Qr'),
        icon: const Icon(Icons.qr_code_2_outlined),
      ),
      drawer: DrawerFile(),
    );
  }
}

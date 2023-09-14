import 'package:flutter/material.dart';
import 'package:safaimitra/Utils.dart';
import 'package:safaimitra/drawer.dart';
// import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'package:intl/intl.dart';

class ADDPAGE extends StatefulWidget {
  @override
  State<ADDPAGE> createState() => _ADDPAGEState();
}

class _ADDPAGEState extends State<ADDPAGE> {
  final Items = [
    'Grasscutter',
    'TRACTOR TROLI',
    'TATA ACE',
    'BIKE',
    'DUMPER PLACER',
    'TRACTOR TROLI',
    'RCV',
    'car'
  ];
  final Items2 = [
    'CNG',
    'Electric',
    'Other',
    'Diesel',
    'Petrol',
  ];
  String? value;
  String? value2;
  TextEditingController _date = TextEditingController();
  TextEditingController timeinput = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    "Driver Name",
                    style: TextStyle(
                        color: Colors.black54,
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                      style: TextStyle(color: Utils.hexToColor("#6A0EFF")),
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Utils.hexToColor("#e0d4ff"),
                          enabledBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            borderSide:
                                BorderSide(color: Utils.hexToColor("#6A0EFF")),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            borderSide:
                                BorderSide(color: Utils.hexToColor("#6A0EFF")),
                          ),
                          isDense: true,
                          contentPadding: EdgeInsets.all(10.0))),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(6.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Contact No.",
                    style: TextStyle(
                        color: Colors.black54,
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
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
                            borderSide:
                                BorderSide(color: Utils.hexToColor("#6A0EFF")),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            borderSide:
                                BorderSide(color: Utils.hexToColor("#6A0EFF")),
                          ),
                          isDense: true,
                          contentPadding: EdgeInsets.all(10.0))),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(6.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Fuel Quantity",
                    style: TextStyle(
                        color: Colors.black54,
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
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
                            borderSide:
                                BorderSide(color: Utils.hexToColor("#6A0EFF")),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            borderSide:
                                BorderSide(color: Utils.hexToColor("#6A0EFF")),
                          ),
                          isDense: true,
                          contentPadding: EdgeInsets.all(10.0))),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(6.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Receipt No",
                    style: TextStyle(
                        color: Colors.black54,
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Utils.hexToColor("#e0d4ff"),
                          enabledBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            borderSide:
                                BorderSide(color: Utils.hexToColor("#6A0EFF")),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            borderSide:
                                BorderSide(color: Utils.hexToColor("#6A0EFF")),
                          ),
                          isDense: true,
                          contentPadding: EdgeInsets.all(10.0))),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(6.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Current Fuel Rate",
                    style: TextStyle(
                        color: Colors.black54,
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
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
                                color: Utils.hexToColor("#6A0EFF"), width: 1),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            borderSide: BorderSide(
                                color: Utils.hexToColor("#6A0EFF"), width: 1),
                          ),
                          isDense: true,
                          contentPadding: EdgeInsets.all(10.0))),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(6.0),
              // child: Column(
              //     crossAxisAlignment: CrossAxisAlignment.start,
              //     children: [
              child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Vehicle No.",
                            style: TextStyle(
                                color: Colors.black54,
                                fontSize: 18,
                                fontWeight: FontWeight.w500),
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
                                  color: Utils.hexToColor("#6A0EFF"), width: 1),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                              borderSide: BorderSide(
                                  color: Utils.hexToColor("#6A0EFF"), width: 1),
                            ),
                            isDense: true,
                            constraints:
                                BoxConstraints.tightFor(width: 170, height: 40),
                          )),
                        ]),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "KiloMeter(s)",
                            style: TextStyle(
                                color: Colors.black54,
                                fontSize: 18,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextField(
                              style:
                                  TextStyle(color: Utils.hexToColor("#6A0EFF")),
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
                                constraints: BoxConstraints.tightFor(
                                    width: 170, height: 40),
                              )),
                        ]),
                  ]),
            ),
            Container(
              padding: EdgeInsets.all(6.0),
              // child: Column(
              //     crossAxisAlignment: CrossAxisAlignment.start,
              //     children: [
              child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Vehicle type",
                            style: TextStyle(
                                color: Colors.black54,
                                fontSize: 18,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 10,
                          ),
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
                                value: value,
                                // iconSize: 35,
                                // icon: Icon(
                                //   Icons.arrow_drop_down,
                                //   color: Colors.black,
                                // ),
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
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Fuel type",
                            style: TextStyle(
                                color: Colors.black54,
                                fontSize: 18,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 10,
                          ),
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
                          )
                        ]),
                  ]),
            ),
            Container(
              padding: EdgeInsets.all(6.0),
              // child: Column(
              //     crossAxisAlignment: CrossAxisAlignment.start,
              //     children: [
              child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Date",
                            style: TextStyle(
                                color: Colors.black54,
                                fontSize: 18,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            controller: _date,
                            decoration: InputDecoration(
                              suffixIcon: Icon(
                                Icons.calendar_today_outlined,
                                size: 17,
                              ),
                              suffixIconColor: Utils.hexToColor("#6A0EFF"),
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
                              constraints: BoxConstraints.tightFor(
                                  width: 170, height: 40),
                            ),
                            readOnly: true,
                            onTap: () async {
                              DateTime? pickeddate = await showDatePicker(
                                  context: context,
                                  initialDate: DateTime.now(),
                                  firstDate: DateTime(2000),
                                  lastDate: DateTime(2100));
                              if (pickeddate != null) {
                                setState(() {
                                  _date.text = DateFormat('dd-MM-yyyy')
                                      .format(pickeddate);
                                });
                              }
                            },
                          ),
                        ]),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Time",
                            style: TextStyle(
                                color: Colors.black54,
                                fontSize: 18,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            controller: timeinput,
                            decoration: InputDecoration(
                              suffixIcon: Icon(
                                Icons.timer_outlined,
                                size: 17,
                              ),
                              suffixIconColor: Utils.hexToColor("#6A0EFF"),
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
                              constraints: BoxConstraints.tightFor(
                                  width: 170, height: 40),
                            ),
                            readOnly: true,
                            onTap: () async {
                              TimeOfDay? pickedTime = await showTimePicker(
                                context: context,
                                initialTime: TimeOfDay.now(),
                              );

                              if (pickedTime != null) {
                                setState(() {
                                  timeinput.text = pickedTime.format(context);
                                });
                              }
                            },
                          ),
                        ]),
                  ]),
            ),
            Container(
              padding: EdgeInsets.all(6.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Image (optional)",
                      style: TextStyle(
                          color: Colors.black54,
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ClipRRect(
                      // borderRadius: BorderRadius.circular(20.0), //or 15.0
                      child: Container(
                          decoration: BoxDecoration(
                              color: Utils.hexToColor("#e0d4ff"),
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                  color: Utils.hexToColor("#6A0EFF"),
                                  width: 1)),
                          height: 150.0,
                          width: 170.0,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                radius: 25,
                                backgroundColor: Utils.hexToColor("#6A0EFF"),
                                child: Icon(
                                  Icons.camera_alt_outlined,
                                  color: Colors.white,
                                  size: 35,
                                ),
                              ),
                              CircleAvatar(
                                radius: 25,
                                backgroundColor: Utils.hexToColor("#6A0EFF"),
                                child: Icon(
                                  Icons.perm_media_outlined,
                                  color: Colors.white,
                                  size: 30,
                                ),
                              )
                            ],
                          )),
                    ),
                  ]),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Utils.hexToColor("#6A0EFF"),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 40.0, vertical: 15.0)),
                child: const Text(
                  "Submit",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
      drawer: DrawerFile(),
    );
  }
}

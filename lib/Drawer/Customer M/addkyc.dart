import 'package:flutter/material.dart';
import 'package:safaimitra/Utils.dart';
import 'package:safaimitra/drawer.dart';

class AddKycButton extends StatefulWidget {
  const AddKycButton({super.key});

  @override
  State<AddKycButton> createState() => _AddKycButtonState();
}

class _AddKycButtonState extends State<AddKycButton> {
  final Items = [
    '1',
    '2',
  ];
  final Items2 = [
    '02 - Gandhi Nagar',
    '03 - Lakshmi Pura',
    '04 - Nehru Nagar',
    '05 - Jawahar Chowk',
    '06 - Mahavir Nagar',
    '07 - Ambedkar Colony',
  ];

  final Items3 = [
    'COMMERCIAL',
    'INDUSTRIAL',
    'RELIGIOUS',
    'RESIDENTIAL',
  ];
  final Items4 = [
    'Bakery and Sweets Shop',
    'BIN 120',
    'BIN 240',
    'Cinema Hall',
    'Factory Big',
    'Factory Medium',
    'Garbage per sack',
    'House 50 Metre Sq Area',
    'Hospital',
    'Marriage cermony in Hotel',
  ];
  final Items5 = [
    'OCCUPIED',
    'OPEN PLOT',
    'VACANT',
  ];

  String? value;
  String? value2;
  String? value3;
  String? value4;
  String? value5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Utils.hexToColor("#e0d4ff"),
      appBar: AppBar(
        backgroundColor: Utils.hexToColor("#6A0EFF"),
        title: Text("Registration"),
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
              height: 65,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(children: [
                      Text(
                        "Surveyor Name : ",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "Himanshu Singh",
                        style: TextStyle(
                            color: Utils.hexToColor("#6A0EFF"),
                            fontSize: 15,
                            fontWeight: FontWeight.w500),
                      )
                    ]),
                    Row(children: [
                      Text(
                        "Address : ",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "Udaipur",
                        style: TextStyle(
                            color: Utils.hexToColor("#6A0EFF"),
                            fontSize: 15,
                            fontWeight: FontWeight.w500),
                      )
                    ]),
                  ]),
            ),
          ),
          Container(
            padding: EdgeInsets.all(6.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "PERSONAL INFORMATION",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                )
              ],
            ),
          ),
          Card(
            color: Colors.white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
            child: Container(
              padding: EdgeInsets.all(8.0),
              height: 340,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Name",
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
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Father Name",
                                  style: TextStyle(
                                      color: Colors.black54,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                TextField(
                                    style: TextStyle(
                                        color: Utils.hexToColor("#6A0EFF")),
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
                                      constraints: BoxConstraints.tightFor(
                                          width: 170, height: 40),
                                    )),
                              ]),
                        ]),
                    SizedBox(
                      height: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Phone",
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
                                contentPadding: EdgeInsets.all(10.0))),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Email ID",
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
                                contentPadding: EdgeInsets.all(10.0))),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "PIN Code",
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
                                contentPadding: EdgeInsets.all(10.0))),
                      ],
                    ),
                  ]),
            ),
          ),
          Container(
            padding: EdgeInsets.all(6.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "ESTABLISHMENT INFORMATION",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                )
              ],
            ),
          ),
          Card(
            color: Colors.white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
            child: Container(
              padding: EdgeInsets.all(8.0),
              height: 500,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Plot No/House No",
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
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Floor",
                                  style: TextStyle(
                                      color: Colors.black54,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                TextField(
                                    style: TextStyle(
                                        color: Utils.hexToColor("#6A0EFF")),
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
                                      constraints: BoxConstraints.tightFor(
                                          width: 170, height: 40),
                                    )),
                              ]),
                        ]),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Building Name",
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
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Number of Flat/Unit",
                                  style: TextStyle(
                                      color: Colors.black54,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                TextField(
                                    style: TextStyle(
                                        color: Utils.hexToColor("#6A0EFF")),
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
                                      constraints: BoxConstraints.tightFor(
                                          width: 170, height: 40),
                                    )),
                              ]),
                        ]),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Zone",
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
                                      hint: Text(
                                        "Select",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400),
                                      ),
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
                                  "Ward-Area",
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
                                      hint: Text(
                                        "Select",
                                        style: TextStyle(
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
                                )
                              ]),
                        ]),
                    SizedBox(
                      height: 10,
                    ),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Property Type",
                            style: TextStyle(
                                color: Colors.black54,
                                fontSize: 18,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 10,
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
                                value: value3,
                                hint: Text(
                                  "Select",
                                  style: TextStyle(fontWeight: FontWeight.w400),
                                ),
                                items: [
                                  DropdownMenuItem(
                                    child: Text("Select"),
                                    value: "",
                                  ),
                                  ...Items3.map<DropdownMenuItem<String>>(
                                      (String item) {
                                    return DropdownMenuItem<String>(
                                        value: item,
                                        child: Text(
                                          item,
                                          style: TextStyle(fontSize: 20),
                                        ));
                                  }).toList(),
                                ],
                                onChanged: (value3) => setState(() {
                                  this.value3 = value3!;
                                }),
                              ),
                            ),
                          )
                        ]),
                    SizedBox(
                      height: 10,
                    ),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Property Sub Type",
                            style: TextStyle(
                                color: Colors.black54,
                                fontSize: 18,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 10,
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
                                value: value4,
                                hint: Text(
                                  "Select",
                                  style: TextStyle(fontWeight: FontWeight.w400),
                                ),
                                items: [
                                  DropdownMenuItem(
                                    child: Text("Select"),
                                    value: "",
                                  ),
                                  ...Items4.map<DropdownMenuItem<String>>(
                                      (String item) {
                                    return DropdownMenuItem<String>(
                                        value: item,
                                        child: Text(
                                          item,
                                          style: TextStyle(fontSize: 20),
                                        ));
                                  }).toList(),
                                ],
                                onChanged: (value4) => setState(() {
                                  this.value4 = value4!;
                                }),
                              ),
                            ),
                          )
                        ]),
                    SizedBox(
                      height: 10,
                    ),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Status",
                            style: TextStyle(
                                color: Colors.black54,
                                fontSize: 18,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 10,
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
                                value: value5,
                                hint: Text(
                                  "Select",
                                  style: TextStyle(fontWeight: FontWeight.w400),
                                ),
                                items: [
                                  DropdownMenuItem(
                                    child: Text("Select"),
                                    value: "",
                                  ),
                                  ...Items5.map<DropdownMenuItem<String>>(
                                      (String item) {
                                    return DropdownMenuItem<String>(
                                        value: item,
                                        child: Text(
                                          item,
                                          style: TextStyle(fontSize: 20),
                                        ));
                                  }).toList(),
                                ],
                                onChanged: (value5) => setState(() {
                                  this.value5 = value5!;
                                }),
                              ),
                            ),
                          ),
                        ]),
                  ]),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            SizedBox(
              width: 10,
            ),
            TextButton(
                onPressed: () {},
                child: Text(
                  "CANCEL",
                  style: TextStyle(fontSize: 16, color: Colors.black54),
                )),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Utils.hexToColor("#6A0EFF"),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  padding: const EdgeInsets.symmetric(
                      horizontal: 50.0, vertical: 15.0)),
              child: const Text(
                "SUBMIT",
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              onPressed: () {
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => LoginPage()));
              },
            ),
          ]),
        ]),
      ),
      drawer: DrawerFile(),
    );
  }
}

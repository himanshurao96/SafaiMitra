import 'package:flutter/material.dart';
import 'package:safaimitra/Utils.dart';
import 'package:safaimitra/drawer.dart';

class ComplaintPage extends StatefulWidget {
  const ComplaintPage({super.key});

  @override
  State<ComplaintPage> createState() => _ComplaintPageState();
}

class _ComplaintPageState extends State<ComplaintPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Utils.hexToColor('#e0d4ff'),
      appBar: AppBar(
        backgroundColor: Utils.hexToColor("#6A0EFF"),
        title: Text("Complaint"),
      ),
      body: ListView(children: [
        // Padding(padding: EdgeInsets.all(10.0)),
        Container(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ClipPath(
                  clipper: ShapeBorderClipper(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  child: Container(
                    height: 80,
                    color: Colors.white,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 40,
                            width: 65,
                            color: Utils.hexToColor("#6A0EFF"),
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                "Total",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          Container(
                              height: 40,
                              width: 65,
                              child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    "1",
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.grey.shade700,
                                        fontWeight: FontWeight.bold),
                                  ))),
                        ]),
                  ),
                ),
                ClipPath(
                  clipper: ShapeBorderClipper(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  child: Container(
                    height: 80,
                    color: Colors.white,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 40,
                            width: 65,
                            color: Colors.cyan.shade300,
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                "Close",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          Container(
                              height: 40,
                              width: 65,
                              child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    "0",
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.grey.shade700,
                                        fontWeight: FontWeight.bold),
                                  ))),
                        ]),
                  ),
                ),
                ClipPath(
                  clipper: ShapeBorderClipper(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  child: Container(
                    height: 80,
                    color: Colors.white,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 40,
                            width: 65,
                            color: Colors.orange.shade300,
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                "Pending",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          Container(
                              height: 40,
                              width: 65,
                              child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    "0",
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.grey.shade700,
                                        fontWeight: FontWeight.bold),
                                  ))),
                        ]),
                  ),
                ),
                ClipPath(
                  clipper: ShapeBorderClipper(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  child: Container(
                    height: 80,
                    color: Colors.white,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 40,
                            width: 65,
                            color: Colors.red,
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                "Open",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          Container(
                              height: 40,
                              width: 65,
                              child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    "0",
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.grey.shade700,
                                        fontWeight: FontWeight.bold),
                                  ))),
                        ]),
                  ),
                ),
                ClipPath(
                  clipper: ShapeBorderClipper(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  child: Container(
                    height: 80,
                    color: Colors.white,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 40,
                            width: 65,
                            color: Colors.grey.shade500,
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                "OOS",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          Container(
                              height: 40,
                              width: 65,
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  "0",
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.grey.shade700,
                                      fontWeight: FontWeight.bold),
                                ),
                              )),
                        ]),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                // labelText: "Search",
                hintText: "Enter Name,ID,Mobile",
                hintStyle: TextStyle(
                  fontSize: 16,
                ),
                suffixIcon: IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {},
                ),
                suffixIconColor: Colors.black,

                // prefixIcon: Icon(Icons.search),
                // border: OutlineInputBorder(
                //     borderSide: BorderSide(
                //         color: Utils.hexToColor("#6A0EFF"), width: 2),
                //     borderRadius: BorderRadius.all(Radius.circular(18)),
                //     ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12.0)),
                  borderSide:
                      BorderSide(color: Utils.hexToColor("#6A0EFF"), width: 2),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12.0)),
                  borderSide: BorderSide(color: Utils.hexToColor("#6A0EFF")),
                ),
              ),
            ),
          ]),
        ),

        //       ),
        //     ],
        //   ),
        // ),
        GestureDetector(
            child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                // shadowColor: Colors.blueAccent,
                elevation: 15,
                child: ClipPath(
                    clipper: ShapeBorderClipper(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15))),
                    child: Container(
                      height: 80,
                      decoration: BoxDecoration(
                        border: Border(
                            left: BorderSide(
                                color: Colors.red.shade300, width: 10)),
                        color: Colors.white,
                      ),
                      padding: EdgeInsets.all(8.0),
                      alignment: Alignment.centerLeft,
                      child: Container(
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Name:"),
                                  SizedBox(
                                    width: 70,
                                  ),
                                  Text(
                                    "Sohan ",
                                    style: TextStyle(
                                        color: Utils.hexToColor("#6A0EFF")),
                                  ),
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Comp Type:"),
                                  SizedBox(
                                    width: 38,
                                  ),
                                  Text(
                                    "Door To Door",
                                    style: TextStyle(
                                        color: Utils.hexToColor("#6A0EFF")),
                                  ),
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Sub Type:"),
                                  SizedBox(
                                    width: 50,
                                  ),
                                  Text(
                                    "Waste Not Collected",
                                    style: TextStyle(
                                        color: Utils.hexToColor("#6A0EFF")),
                                  ),
                                ],
                              ),
                            ]),
                      ),
                    ))),
            onTap: () {
              showModalBottomSheet(
                context: context,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25.0),
                    topRight: Radius.circular(25.0),
                  ),
                ),
                builder: (context) {
                  return Container(
                    height: 180,
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Complaint Details",
                                style: TextStyle(
                                    color: Utils.hexToColor("#6A0EFF"),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              ),
                            ]),
                        SizedBox(
                          height: 25,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Complaint ID",
                              style: TextStyle(
                                  color: Colors.grey.shade600, fontSize: 15),
                            ),
                            Text(
                              "SMCRM000046 ",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 15),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Status",
                              style: TextStyle(
                                  color: Colors.grey.shade600, fontSize: 15),
                            ),
                            Text(
                              "Open",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 15),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Complaint Details",
                              style: TextStyle(
                                  color: Colors.grey.shade600, fontSize: 15),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Waste has not been collected yet.",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 15),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              );
            }),
        Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            // shadowColor: Colors.blueAccent,
            elevation: 15,
            child: ClipPath(
                clipper: ShapeBorderClipper(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15))),
                child: Container(
                  height: 80,
                  decoration: BoxDecoration(
                    border: Border(
                        left: BorderSide(
                            color: Utils.hexToColor("#6A0EFF"), width: 10)),
                    color: Colors.white,
                  ),
                ))),
      ]),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => AddPage()));
        },
        backgroundColor: Utils.hexToColor("#6A0EFF"),
        child: Icon(
          Icons.add,
        ),
      ),
      drawer: DrawerFile(),
    );
  }
}

class AddPage extends StatefulWidget {
  const AddPage({super.key});

  @override
  State<AddPage> createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  final Items = [
    'Door To Door',
    'Dead Animals',
    'Misbehavior',
    'User Charges',
    'Others',
    'Road Sweeping',
    'Secondry Collection',
    'Water Logging',
    'Drain Cleaning',
  ];
  final Items2 = [
    '01 - Shastrii Nagar'
        '02 - Gandhi Nagar',
    '03 - Lakshmi Pura',
    '04 - Nehru Nagar',
    '05 - Jawahar Chowk',
    '06 - Mahavir Nagar',
    '07 - Ambedkar Colony',
    '08 - Indira Colony',
    '42 - Shastri Nagar',
    'Civil Lines',
    'Civil Lines2',
    'Sector 16',
  ];
  final Items3 = [
    'Door To Door',
    'Dead Animals',
    'Misbehavior',
    'User Charges',
    'Others',
    'Road Sweeping',
    'Secondry Collection',
    'Water Logging',
    'Drain Cleaning',
  ];

  String? value;
  String? value2;
  String? value3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Utils.hexToColor("#e0d4ff"),
      appBar: AppBar(
        backgroundColor: Utils.hexToColor("#6A0EFF"),
        title: Text("Complaint"),
      ),
      body: ListView(children: [
        Container(
          padding: EdgeInsets.all(6.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "REGISTER COMPLAINT",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black54,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        Card(
          color: Colors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          child: Container(
            padding: EdgeInsets.all(8.0),
            height: 640,
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
                  Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
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
                                constraints: BoxConstraints.tightFor(
                                    width: 170, height: 40),
                              )),
                            ]),
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
                  Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Complaint Type",
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
                                "Complaint Sub Type",
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
                                    value: value3,
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
                      ]),
                  SizedBox(
                    height: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Complaint Details",
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
                        "Action Taken",
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
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 2,
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              "CANCEL",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Utils.hexToColor("#6A0EFF")),
                            )),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Utils.hexToColor("#6A0EFF"),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 60.0, vertical: 15.0)),
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
        ),
      ]),
      drawer: DrawerFile(),
    );
  }
}

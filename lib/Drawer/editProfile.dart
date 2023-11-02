import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:safaimitra/Drawer/profile.dart';
import 'package:safaimitra/ProfileApi/api.dart';
import 'package:safaimitra/ProfileApi/person.dart';
import 'package:safaimitra/Utils.dart';
import 'package:http/http.dart' as http;

class EditProfile extends StatefulWidget {
  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  final fNameController = TextEditingController();
  final lNameController = TextEditingController();
  final emailController = TextEditingController();
  final dOBController = TextEditingController();
  final numberController = TextEditingController();
  final picController = TextEditingController();
  Api api = Api();

  @override
  Widget build(BuildContext context) {
    // final args = ModalRoute.of(context)?.settings.arguments as List<String>;
    // if (args[0].isNotEmpty) {
    //   fNameController.text = args[0];
    // }
    // if (args[1].isNotEmpty) {
    //   numberController.text = args[1];
    // }
    // if (args[2].isNotEmpty) {
    //   emailController.text = args[2];
    // }
    // if (args[3].isNotEmpty) {
    //   dOBController.text = args[3];
    // }
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Utils.hexToColor("#6A0EFF"),
        title: Text("Edit Profile"),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                width: 80,
                height: 80,
                child: CircleAvatar(
                  backgroundColor: Utils.hexToColor("#6A0EFF"),
                  radius: 60,
                  child: Image.asset(
                    "assets/H_logo.png",
                    color: Colors.red,
                    height: 78,
                    width: 78,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              "Your Details",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 18),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
                controller: fNameController,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Utils.hexToColor("#e0d4ff"),
                    hintText: 'name',
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      borderSide: BorderSide(
                          color: Utils.hexToColor("#6A0EFF"), width: 1),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      borderSide: BorderSide(
                          color: Utils.hexToColor("#6A0EFF"), width: 1),
                    ),
                    isDense: true,
                    contentPadding: EdgeInsets.all(10.0))),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 65,
              child: IntlPhoneField(
                controller: numberController,
                flagsButtonPadding: const EdgeInsets.all(8),
                dropdownIconPosition: IconPosition.trailing,
                decoration: const InputDecoration(
                  filled: true,
                  fillColor: Color.fromRGBO(224, 212, 255, 1),
                  hintText: 'number',
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(
                        color: Color.fromRGBO(106, 14, 255, 1), width: 1),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(
                        color: Color.fromRGBO(106, 14, 255, 1), width: 1),
                  ),
                ),
                initialCountryCode: 'IN',
                onChanged: (phone) {
                  print(phone.completeNumber);
                },
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
                controller: emailController,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Utils.hexToColor("#e0d4ff"),
                    hintText: 'Gmail',
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      borderSide: BorderSide(
                          color: Utils.hexToColor("#6A0EFF"), width: 1),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      borderSide: BorderSide(
                          color: Utils.hexToColor("#6A0EFF"), width: 1),
                    ),
                    isDense: true,
                    contentPadding: EdgeInsets.all(10.0))),
            SizedBox(
              height: 10,
            ),
            TextField(
                controller: dOBController,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Utils.hexToColor("#e0d4ff"),
                    hintText: 'DOB',
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      borderSide: BorderSide(
                          color: Utils.hexToColor("#6A0EFF"), width: 1),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      borderSide: BorderSide(
                          color: Utils.hexToColor("#6A0EFF"), width: 1),
                    ),
                    isDense: true,
                    contentPadding: EdgeInsets.all(10.0))),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 40,
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Utils.hexToColor("#6A0EFF"),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  onPressed: () async {
                    bool response = await api.updateData(
                        fNameController.text.toString(),
                        emailController.text.toString(),
                        dOBController.text.toString(),
                        numberController.text.toString());

                    if (response) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProfileEdit()));
                    } else {
                      throw Exception('Failed to create data');
                    }
                  },
                  child: Text('Submit')),
            )
          ],
        ),
      ),
    );
  }
}

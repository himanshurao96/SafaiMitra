import 'dart:convert';

import 'package:flutter/material.dart';

class Person {
  final int SrNo;
  final String FName;
  final String LName;
  final String ContactNo;
  final String Email;
  final String DOB;
  final String EmployeeId;
  final String Profile_pic;

  const Person({
    required this.SrNo,
    required this.FName,
    required this.LName,
    required this.ContactNo,
    required this.Email,
    required this.DOB,
    required this.EmployeeId,
    required this.Profile_pic,
  });

  factory Person.fromJson(Map<String, dynamic> json) {
    return Person(
      SrNo: json['SrNo'],
      FName: json['FName'],
      LName: json['LName'],
      ContactNo: json['ContactNo'],
      Email: json['Email'],
      DOB: json['DOB'],
      EmployeeId: json['EmployeeId'],
      Profile_pic: json['profile_pic'],
    );
  }
}

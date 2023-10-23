import 'dart:convert';

class Person {
  final int SrNo;
  final String FName;
  final String LName;
  final String ContactNo;
  final String Email;
  final String DOB;

  const Person({
    required this.SrNo,
    required this.FName,
    required this.LName,
    required this.ContactNo,
    required this.Email,
    required this.DOB,
  });

  factory Person.fromJson(Map<String, dynamic> json) {
    return Person(
      SrNo: json['SrNo'],
      FName: json['FName'],
      LName: json['LName'],
      ContactNo: json['ContactNo'],
      Email: json['Email'],
      DOB: json['DOB'],
    );
  }
}

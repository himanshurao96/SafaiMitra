import 'dart:convert';
import 'package:safaimitra/ProfileApi/person.dart';
import 'package:http/http.dart' as http;

class Api {
  String uri = 'http://apitest.safaimitra.click/profile/personal';
  String uri1 = 'http://apitest.safaimitra.click/profile/update';

  String token =
      'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6OCwiVXNlcklkIjoiYXNoaXNoIiwiQ2xpZW50SUQiOiJ1bmRlZmluZWQiLCJQcm9qZWN0SUQiOiIwMDEwMSIsInJvbGUiOiJTdXBlckFkbWluVGVzdCIsImVtcF9pZCI6IlNNRTAwMDAzIiwidGltZXpvbmUiOiJBc2lhL0NhbGN1dHRhIiwiaG91cnNPZmZzZXQiOiIwIiwibWluc09mZnNldCI6IjAiLCJpYXQiOjE2OTg2ODg2MTksImV4cCI6MTY5OTEyMDYxOX0.tLZbvnT0nNUOB18mrDkxXUu5Qqwj-Js4KJ9oifjConE';

  // static const stringSharedPreference = "string shared preferences";

  Future getData() async {
    try {
      final response = await http.get(Uri.parse(uri), headers: {
        'Content-Type': 'application/json; charset=UTF-8',
        'Accept': 'application/json',
        'Authorization': 'Bearer $token',
      });
      print('Token: ${token}');
      print(response.body);

      if (response.statusCode == 200) {
        // print(response.body);
        Iterable it = jsonDecode(response.body);
        List<Person> person = it.map((e) => Person.fromJson(e)).toList();
        return person;
      } else {
        throw Exception('Failed to load data');
      }
    } catch (e) {
      return e.toString();
    }
  }

  Future updateData(
    String fName,
    String email,
    String dOB,
    String number,
  ) async {
    try {
      final response = await http.patch(Uri.parse(uri1), body: {
        "FName": fName,
        "Email": email,
        "DOB": dOB,
        "ContactNo": number,
      }, headers: {
        'Content-Type': 'application/json; charset=UTF-8',
        'Accept': 'application/json',
        'Authorization': 'Bearer $token',
      });

      print('Token: ${token}');
      print(response.body);

      if (response.statusCode == 200) {
        return true;
      } else {
        return false;
      }
    } catch (e) {
      return e.toString();
    }
  }
}

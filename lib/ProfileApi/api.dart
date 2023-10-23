import 'dart:convert';
import 'dart:ui';

import 'package:safaimitra/LoginApi/api_service.dart';
import 'package:safaimitra/ProfileApi/person.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class Api {
  String uri = 'http://apitest.safaimitra.click/profile/personal';

  String token = '';

  // static const listSharedPreference = "list shared preferences";

//  static Future setListString(
//      {required String id, required String token}) async {
//    final prefs = await SharedPreferences.getInstance();
//    prefs.setStringList(listSharedPreference, [id, token]);
//  }
  static const stringSharedPreference = "string shared preferences";
  // Future<String> getString() async {
  //   final prefs = await SharedPreferences.getInstance();
  //   token = prefs.getString(stringSharedPreference) ?? "";
  //   print('on Profile ${token}');
  //   return token;
  // }

  Future getData() async {
    Future<String> getString() async {
      final prefs = await SharedPreferences.getInstance();
      token = prefs.getString(stringSharedPreference) ?? "";
      print('on Profile ${token}');
      return token;
    }

    // print('on Profile ${token}');
    //  string? token;
    //       final prefs = await sharedpreferences.getinstance();
    // token = prefs.getstring('token');
    try {
      final response = await http.get(uri as Uri, headers: {
        'Content-Type': 'application/json; charset=UTF-8',
        // 'Authorization': 'Bearer $getString()',
      });

      // print('on Profile ${getString()}');

      if (response.statusCode == 200) {
        // Iterable it = jsonDecode(response.body);
        // List<Person> person = it.map((e) => Person.fromJson(e)).toList();
        // return person;
      } else {
        throw Exception('Failed to load data');
      }
    } catch (e) {
      return e.toString();
    }
  }
}

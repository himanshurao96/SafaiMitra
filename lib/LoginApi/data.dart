import 'dart:js_interop';

import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
part 'data.g.dart';

@JsonSerializable()
class LoginResponse {
  late String message;
  late String accessToken;
  late String user;
  late String menu;
  late String projects;

  LoginResponse(
      {required this.message,
      required this.accessToken,
      required this.user,
      required this.menu,
      required this.projects});

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$ResponseFromJson(json);
  Map<String, dynamic> toJson() => _$ResponseToJson(this);
}

// @JsonSerializable()
// class user {
//   late int SrNo;
//   late String FName;
//   late String LName;
//   late String UserId;
//   late String Password;
//   late String Role;
//   late double ContactNo;

//   user({
//     required this.SrNo,
//     required this.FName,
//     required this.LName,
//     required this.UserId,
//     required this.Password,
//     required this.Role,
//     required this.ContactNo,
//   });
//   factory user.fromJson(Map<String, dynamic> json) => _$ResponseFromJson(json);
//   Map<String, dynamic> toJson() => _$ResponseToJson(this as LoginResponse);
// }

// _$userFromJson(Map<String, dynamic> json) {
// }

@JsonSerializable()
class ResponseData {
  late List<dynamic> user;
  ResponseData({required this.user});
  factory ResponseData.fromJson(Map<String, dynamic> json) =>
      _$ResponseDataFromJson(json);
  Map<String, dynamic> toJson() => _$ResponseDataToJson(this);
}

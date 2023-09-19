import 'dart:js_interop';

import 'package:json_annotation/json_annotation.dart';
part 'data.g.dart';

@JsonSerializable()
class LoginResponse{
  late String message;
  late String accessToken;
  late  String user;
  late String menu;
  late String projects;

  LoginResponse({required this.message, required this.accessToken, required this.user,required this.menu, required this.projects});

  factory LoginResponse.fromJson(Map<String, dynamic> json) => _$ResponseFromJson(json);
  Map<String, dynamic> toJson() => _$ResponseToJson(this);
}

@JsonSerializable()
class ResponseData{
  late  List<dynamic>user;
  ResponseData({required this.user});
  factory ResponseData.fromJson(Map<String, dynamic> json) => _$ResponseDataFromJson(json);
  Map<String, dynamic> toJson() => _$ResponseDataToJson(this);

}


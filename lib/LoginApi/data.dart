import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
part 'data.g.dart';

@JsonSerializable()
class LoginResponse {
  late String message;
  late String accessToken;
  late List<dynamic> user;
  late List<Menu> menu;
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

@JsonSerializable()
class ResponseData {
  late List<dynamic> user;
  ResponseData({required this.user});
  factory ResponseData.fromJson(Map<String, dynamic> json) =>
      _$ResponseDataFromJson(json);
  Map<String, dynamic> toJson() => _$ResponseDataToJson(this);
}

class Menu {
  late String moduleId;
  late String moduleName;
  late List<String> modulePermission;

  Menu({
    required this.moduleId,
    required this.moduleName,
    required this.modulePermission,
  });

  factory Menu.fromJson(Map<String, dynamic> json) => Menu(
        moduleId: json["moduleId"],
        moduleName: json["moduleName"],
        modulePermission:
            List<String>.from(json["modulePermission"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "moduleId": moduleId,
        "modulName": moduleName,
        "modulePermission": List<dynamic>.from(modulePermission.map((x) => x)),
      };
}

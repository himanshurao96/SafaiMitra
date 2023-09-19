// To parse this JSON data, do
//
//     final apirequest = apirequestFromJson(jsonString);

import 'dart:convert';

Apirequest apirequestFromJson(String str) =>
    Apirequest.fromJson(json.decode(str));

String apirequestToJson(Apirequest data) => json.encode(data.toJson());

class Apirequest {
  List<User> user;

  Apirequest({
    required this.user,
  });

  factory Apirequest.fromJson(Map<String, dynamic> json) => Apirequest(
        user: List<User>.from(json["user"].map((x) => User.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "user": List<dynamic>.from(user.map((x) => x.toJson())),
      };
}

class User {
  int srNo;
  String fName;
  String lName;
  String userId;
  String password;
  String role;
  String contactNo;
  String email;
  String employeeId;
  DateTime lastLogin;
  dynamic createdBy;
  dynamic flag;
  dynamic oldpassword;
  String passResetToken;
  String fcnToken;
  bool isOnline;
  bool isActive;
  DateTime dob;
  String latitude;
  String longitude;
  dynamic passwordChangedOn;
  dynamic deletedAt;
  dynamic uuid;
  dynamic ipAddress;
  dynamic mac;
  dynamic hostname;
  dynamic accessToken;
  String profilePic;
  dynamic source;
  String clientId;
  String projectId;
  bool fingerprintAuth;
  bool acceptPolicy;
  bool isTracking;
  String countryCode;
  String otp;
  String otpTime;
  String roleId;
  String currentProjectId;
  String currentClientId;
  String currentTimeZone;
  String empId;
  String currency;

  User({
    required this.srNo,
    required this.fName,
    required this.lName,
    required this.userId,
    required this.password,
    required this.role,
    required this.contactNo,
    required this.email,
    required this.employeeId,
    required this.lastLogin,
    this.createdBy,
    this.flag,
    this.oldpassword,
    required this.passResetToken,
    required this.fcnToken,
    required this.isOnline,
    required this.isActive,
    required this.dob,
    required this.latitude,
    required this.longitude,
    this.passwordChangedOn,
    this.deletedAt,
    this.uuid,
    this.ipAddress,
    this.mac,
    this.hostname,
    this.accessToken,
    required this.profilePic,
    this.source,
    required this.clientId,
    required this.projectId,
    required this.fingerprintAuth,
    required this.acceptPolicy,
    required this.isTracking,
    required this.countryCode,
    required this.otp,
    required this.otpTime,
    required this.roleId,
    required this.currentProjectId,
    required this.currentClientId,
    required this.currentTimeZone,
    required this.empId,
    required this.currency,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
        srNo: json["SrNo"],
        fName: json["FName"],
        lName: json["LName"],
        userId: json["UserId"],
        password: json["Password"],
        role: json["Role"],
        contactNo: json["ContactNo"],
        email: json["Email"],
        employeeId: json["EmployeeId"],
        lastLogin: DateTime.parse(json["LastLogin"]),
        createdBy: json["CreatedBy"],
        flag: json["Flag"],
        oldpassword: json["Oldpassword"],
        passResetToken: json["passResetToken"],
        fcnToken: json["fcnToken"],
        isOnline: json["isOnline"],
        isActive: json["isActive"],
        dob: DateTime.parse(json["DOB"]),
        latitude: json["Latitude"],
        longitude: json["Longitude"],
        passwordChangedOn: json["Password_changedOn"],
        deletedAt: json["DeletedAt"],
        uuid: json["uuid"],
        ipAddress: json["IP_Address"],
        mac: json["MAC"],
        hostname: json["Hostname"],
        accessToken: json["Access_token"],
        profilePic: json["profile_pic"],
        source: json["Source"],
        clientId: json["ClientID"],
        projectId: json["ProjectID"],
        fingerprintAuth: json["fingerprintAuth"],
        acceptPolicy: json["acceptPolicy"],
        isTracking: json["isTracking"],
        countryCode: json["country_code"],
        otp: json["otp"],
        otpTime: json["otpTime"],
        roleId: json["RoleId"],
        currentProjectId: json["CurrentProjectID"],
        currentClientId: json["CurrentClientID"],
        currentTimeZone: json["currentTimeZone"],
        empId: json["emp_id"],
        currency: json["Currency"],
      );

  Map<String, dynamic> toJson() => {
        "SrNo": srNo,
        "FName": fName,
        "LName": lName,
        "UserId": userId,
        "Password": password,
        "Role": role,
        "ContactNo": contactNo,
        "Email": email,
        "EmployeeId": employeeId,
        "LastLogin": lastLogin.toIso8601String(),
        "CreatedBy": createdBy,
        "Flag": flag,
        "Oldpassword": oldpassword,
        "passResetToken": passResetToken,
        "fcnToken": fcnToken,
        "isOnline": isOnline,
        "isActive": isActive,
        "DOB": dob.toIso8601String(),
        "Latitude": latitude,
        "Longitude": longitude,
        "Password_changedOn": passwordChangedOn,
        "DeletedAt": deletedAt,
        "uuid": uuid,
        "IP_Address": ipAddress,
        "MAC": mac,
        "Hostname": hostname,
        "Access_token": accessToken,
        "profile_pic": profilePic,
        "Source": source,
        "ClientID": clientId,
        "ProjectID": projectId,
        "fingerprintAuth": fingerprintAuth,
        "acceptPolicy": acceptPolicy,
        "isTracking": isTracking,
        "country_code": countryCode,
        "otp": otp,
        "otpTime": otpTime,
        "RoleId": roleId,
        "CurrentProjectID": currentProjectId,
        "CurrentClientID": currentClientId,
        "currentTimeZone": currentTimeZone,
        "emp_id": empId,
        "Currency": currency,
      };
}

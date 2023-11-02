part of 'data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginResponse _$ResponseFromJson(Map<String, dynamic> json) {
  return LoginResponse(
    message: json['message'] as String,
    accessToken: json['accessToken'] as String,
    user: (json['user'] as List<dynamic>).map((e) => e as String).toList(),
    menu: List<Menu>.from(json["menu"].map((x) => Menu.fromJson(x))),
    projects: json['projects'] as String,
  );
}

Map<String, dynamic> _$ResponseToJson(LoginResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'accessToken': instance.accessToken,
      'user': instance.user,
      'menu': instance.menu,
      'projects': instance.projects,
    };

ResponseData _$ResponseDataFromJson(Map<String, dynamic> json) {
  return ResponseData(
    user: json['user'] as List<dynamic>,
  );
}

Map<String, dynamic> _$ResponseDataToJson(ResponseData instance) =>
    <String, dynamic>{
      'user': instance.user,
    };

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:json_annotation/json_annotation.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: "http://apitest.safaimitra.click")
abstract class ApiService {
  factory ApiService(Dio dio, {required String baseUrl}) = _ApiService;

  @POST("/auth/login")
  @FormUrlEncoded()
  Future<LoginResponse> login(
      @Field("UserId") String userId, @Field("Password") String password);
}

@JsonSerializable()
class LoginResponse {
  @JsonKey(name: 'message')
  String message;
  @JsonKey(name: 'accessToken')
  String token;
  @JsonKey(name: 'user')
  List<dynamic> user;
  @JsonKey(name: 'menu')
  List<dynamic> menu;
  // do more as per api response

  LoginResponse(
      {required this.message,
      required this.token,
      required this.user,
      required this.menu});

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);
  Map<String, dynamic> toJson() => _$LoginResponseToJson(this);

  // static Future setString() async {
  // final prefs = await SharedPreferences.getInstance();
  // return prefs.setString(stringSharedPreference, "");
}

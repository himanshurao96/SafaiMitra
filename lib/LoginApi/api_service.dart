import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:json_annotation/json_annotation.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: "http://apitest.safaimitra.click")
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST("/auth/login")
  @FormUrlEncoded()
  Future<LoginResponse> login(
      @Field("UserId") String userId, @Field("Password") String password);

  // Future<UserResponse> user();
}

@JsonSerializable()
class LoginResponse {
  @JsonKey(name: 'message')
  String token;
  @JsonKey(name: 'accessToken')
  String userId;
  // @JsonKey(name: 'user')
  // String User;
  // do more as per api response

  LoginResponse({required this.token, required this.userId});

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);
  Map<String, dynamic> toJson() => _$LoginResponseToJson(this);
}

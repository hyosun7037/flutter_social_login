import 'package:get/get_connect.dart';
import 'package:kakao_test/app/modules/sign/model/social_user.dart';

class UserRepository extends GetConnect{
  static UserRepository? _instance;
  UserRepository._();
  static UserRepository get getInstance => _instance ??= UserRepository._();

  Future<Response> socialLogin(SocialUser socialUser) => post(
    "http://54.180.86.238:8080/socialLogin",
    socialUser.toJson()
  );
}
import 'package:flutter_naver_login/flutter_naver_login.dart';
import 'package:get/get.dart';
import 'package:kakao_flutter_sdk/kakao_flutter_sdk.dart';
import 'package:kakao_test/data/model/social_user.dart';
import 'package:kakao_test/social/login_success_page.dart';
import 'package:logger/logger.dart';

class SocialLoginController extends GetxController{ 
  var logger = Logger();
 
  void kakaologin() async{
  try {
      OAuthToken token = await UserApi.instance.loginWithKakaoTalk();
      try {
          User user = await UserApi.instance.me();
          SocialUser socialUser = SocialUser(
            loginType: 'kakao', 
            userName: user.kakaoAccount!.profile!.nickname.toString(), 
            email: user.kakaoAccount!.email.toString());
          Get.to(const LoginSuccessPage(), arguments: [user.kakaoAccount?.profile?.nickname.toString(), 'kakao']);
          print('카카오로그인 성공');
          logger.d(socialUser);
          logger.d(token);
        } catch (err) {
          logger.d(err);
        }
    } catch (err) {
      logger.d(err);
    }
  }

  void naverLogin() async{
    try {
      NaverLoginResult res = await FlutterNaverLogin.logIn();
      NaverAccessToken token = await FlutterNaverLogin.currentAccessToken;
      logger.d('네이버토큰 : $token');
      SocialUser socialUser = SocialUser(
        loginType: "naver", 
        userName: res.account.name, 
        email: res.account.email);
      print('네이버 아이디 저장 성공');
      logger.d(socialUser);
      Get.to(const LoginSuccessPage(), arguments: [socialUser.userName.toString(), 'naver']);
    } catch (err) {
      logger.d(err);
    }
  }
}
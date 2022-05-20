import 'package:flutter_naver_login/flutter_naver_login.dart';
import 'package:get/get.dart';
import 'package:kakao_flutter_sdk/kakao_flutter_sdk.dart';
import 'package:kakao_test/data/model/social_user.dart';
import 'package:kakao_test/social/login_success_page.dart';
import 'package:logger/logger.dart';

import '../social/Social_login_page.dart';

class SocialLoginController extends GetxController{ 
  static SocialLoginController get to => Get.find();
  var logger = Logger();
  SocialUser? socialUser = null;


  Future kakaologin() async{
  try {
      OAuthToken token = await UserApi.instance.loginWithKakaoAccount();
      try {
          User user = await UserApi.instance.me();
          Get.to(LoginSuccessPage(), arguments: [user.kakaoAccount?.profile?.nickname.toString(), 'kakao']);
          socialUser = SocialUser(
            loginType:'kakao', 
            userName: user.kakaoAccount!.profile!.nickname.toString(), 
            email: user.kakaoAccount!.email.toString());
          print('카카오로그인 성공');
          logger.d(socialUser);
          logger.d(token);
            return socialUser;
          
        } catch (err) {
          logger.d(err);
        }
    } catch (err) {
      logger.d(err);
    }
  }

  Future naverLogin() async{
    try {
      NaverLoginResult res = await FlutterNaverLogin.logIn();
      NaverAccessToken token = await FlutterNaverLogin.currentAccessToken;
      logger.d('네이버토큰 : $token');
      socialUser = SocialUser(
        loginType: "naver", 
        userName: res.account.name, 
        email: res.account.email);
      print('네이버 아이디 저장 성공');
      logger.d(socialUser);
      Get.to(LoginSuccessPage(), arguments: [socialUser?.userName, 'naver']);
    } catch (err) {
      logger.d(err);
    }
  }

    Future logout() async {
    var logger = Logger();
    try {
      if(socialUser?.loginType == 'kakao'){
         UserIdResponse kakaoLogout = await UserApi.instance.logout();
        logger.d(kakaoLogout);
      }else if(socialUser?.loginType == 'naver'){
        var naverLogout = await FlutterNaverLogin.logOutAndDeleteToken();
        logger.d(naverLogout);
      }
      Get.offAll(() => SocialLoginPage());
    } catch (err) {
      logger.d(err);
    }
  }
}